Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2358717E4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759751994; cv=none; b=ub0vJ4VW4yteJxSqp03SlIHTIiqt/I96vtwpnaSfx/uP1AUPFo9MxOMdePhTgi0hcDlnPt3LMrOS9Vm6RJYsFFh1wHxAT3djuhFdqZE27A0kLR3waLjoGvCo7pKpDzMzSmhRLmLCIvuZepaeKy2mWSAzCGrVsJgnP+g0XxP6RWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759751994; c=relaxed/simple;
	bh=M3x7ZTO+uox9rllevzWf5MeGZAEuxNYfzZHrm05+Fw0=;
	h=To:Subject:From:Message-Id:Date; b=jcB3tcfls0+QCBmHhL57llvow0FjusuV1VZZGjo0lzij/DBkG4HrQeDwhwHVkm+Mwcag1TouqeJk/PzNyPgucWwK26pYC1ngedF4eKpd/VZZD27lTEQ6yhreEtrmLYqUzc5fyVktruH3PIWnvq4imTotZ0I/1WdHz1DP1FWLKHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlbNbbrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlbNbbrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D35BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759751993;
	bh=M3x7ZTO+uox9rllevzWf5MeGZAEuxNYfzZHrm05+Fw0=;
	h=To:Subject:From:Date:From;
	b=nlbNbbrVXRKZplOM+yI9fs5c5R34TNXa6Xnyqk/8l4MZvRipuN+dgIYaOqyP46SHO
	 5fLJrYNWEm8Yta2uEnFUct8KktebJFEaM74m6QlbbexO46IMe3okHymqqZDZ0BZyo7
	 4KrWs3dr5qa09xNVQWTQsrbxs/zmTTFrd00cA5j3JJwgTiKwarAYaTPd5hqWqHTuNG
	 qFjqsW63g+iby9HPHtUNarlEjt3RZE11fNWhtvU3FnR3UlRHIothwgiWmaAVp1oKAy
	 BJmtqM05mKu9iwrWKMOMBBxT8fLdni7pxndP2kfCuLZMBSVpFNU+I0vkVp6Lu/W6h9
	 7LT+gln2eBwHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C8CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975199357.3591.14528201030029280076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e5d9fcc505b1c30003a0b02e49b8a59facfc92fac4c3d025330a2838b08f8f
Date: Mon, 06 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759751993
