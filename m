Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1AE1C17
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718857763; cv=none; b=CeF+ZINRDWo1LQ8LYKrPlYX7sa/Wwz5iBuqxWGzVjvfc6SPwltb743P76d2tNDXKgtll1lFsu+WfZSF753NZx47cgnssEA6WoTvU1kqgv31dLmymDRvPu3cy9OCCxzSp+H+eKPp+MmQlqJUxXZvLsis5oK9CGwCLoYXWrikXhQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718857763; c=relaxed/simple;
	bh=ObgKR3K+OPunRI1hxUA6Ogz6+2heZYoaNJTWTqJgURQ=;
	h=To:Subject:From:Message-Id:Date; b=CO8A2e6hCMbCCClYVighBZZjJTXom7Mr+nIpNXSeIA37ZxkerCIXOPJbEnk0v+KX4YHQkr4SSYGaYlcBljyVOYoaUMM4hNDqi20AoQy8GcED0AnLTuCqkHXoIqzP70NlUVcpgDmLn4PUbPeIL8eMICmB/38PXwFjIXduEZmO8T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMUyAX1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMUyAX1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D60C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718857762;
	bh=ObgKR3K+OPunRI1hxUA6Ogz6+2heZYoaNJTWTqJgURQ=;
	h=To:Subject:From:Date:From;
	b=DMUyAX1xSuUN77ANrdSuNWouF+g8DQW6gGB4CQGV1ppdoDiGWnz2BuooMgW51zgwp
	 Gp/sYn9GeO/Ju0DvWfUJ+hIRUjmr3Uwzjnt7TBPwLEqxhjEkJ0/DkyhThg6EkgeoMH
	 0911NaoRxTjApo7Ta0wQ+33Ai9FBLJ/ZonX2leLUw2FHUPDsVKZXLC10XEzRNPWCnR
	 4tImwfInl1rcAYLAZv1UmA21MGkRLkROaw9TiFEvAxhnPW8A8paVbPh61XX1ivD4uW
	 BwlY+jfbcRQPCXQcXmeisQ7pohqezBCl/a1InYZwfBH2nZ9JzUhO421fYqrTfCqsAm
	 Uo7xiC7iNGS9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C89A5C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885776277.32410.875516870715204103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39764f6737b71251a7453599bb9b5313dd5ba04cd369cb367e144ecba0c8bfc6
Date: Thu, 20 Jun 2024 04:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718857762
