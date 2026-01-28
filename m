Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFDB352922
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769607834; cv=none; b=p3TCCZLLGFH757/neqf/jzXs4Mbg8RngdXwpjHDiwKWZyCg9bUnpEBVgWm46GFx2VqXY52KcC+6t8BnNIQeYZXLiLB9VIcDDti5bRwO/1HsicIEgPO80gXz8IQ7YyWS1tICmOQOPBUMCmbHeDhf8vXdgLJYOKHOsmPLm9LJ87cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769607834; c=relaxed/simple;
	bh=3nTqvTYprFhibEODT/G6tvQZ5D+jW4hdBv8zOPIcbZw=;
	h=To:Subject:From:Message-Id:Date; b=dv+YBnF22Nzweh3HIO4O8961+na2j55L+sQEEMD5fHS2335gZ77ijDjn6SuLbLkE9EksIFzBpqDqzRiRKLc+Eqmi3H1SCQN+ZIfLCe5Fe7iWEPfCtn2U+VPZ986P1ZXm1Zt1zejOUglBZVFHZ9Lpqej1SH8n4jDV4TFLQlDAexI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbC6wLsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbC6wLsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4106C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769607833;
	bh=3nTqvTYprFhibEODT/G6tvQZ5D+jW4hdBv8zOPIcbZw=;
	h=To:Subject:From:Date:From;
	b=IbC6wLsNSxfVgHqBbcqN/tq5jJkjCDYZGpOlIvlVNsq0pfooWXQWZXC2+k0K68kdP
	 islaHPJGj8RuN3HlFDB/44tcWC/jiDv3f8f6apnORAyqsuctdgdzr1LE8AVAsBOxVb
	 YJkHjptzij0R91Q5WfPHwOOz7zFVGowJ3iioM/8KbWJS8aWULuIVfsv8YAZjbxLFad
	 YI5wJ0+300kaRkK7B9Mj1J5hM78+1GcAJS9dTeTJea70SQWyqulCOZ3WU8kmAOyP8y
	 3jTiVqzLTHtBllLa4B4n72QVD3t+Pw85NCwWVomeyPNjE/wc9hfFOPUtTcY+gAlTsg
	 gHfcRvMsf75eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90042D25B7C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960783358.17775.14833743170719528756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c235d4a35ca305331e6a0bee9bdd6932b826ce99a49f7562943a83f18328e6b0
Date: Wed, 28 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769607833
