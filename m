Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F7F157480
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760788795; cv=none; b=kEA5siqE/UUVa4cK3/aIH6Gz90xoTlKxWAk77xf4EmFgxPoT0KeJDvksyUoqcntFEklu7pJLTyc94uH5/Afp76ULRw+SYyqIJjKwmx7AlofxxShp2E1sWV02VIA096MIfxTF8Z7QDhxrgpKHUnXCho50tbkuT6NJr0p0wsBDCQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760788795; c=relaxed/simple;
	bh=1XtPMpJ4nqA4Z5/NiIr59m++3ARmjZaIZpvjk3zCLYc=;
	h=To:Subject:From:Message-Id:Date; b=dxJS7znTiXOgVwjXi+lIiX+UjD17XldBmzkTL0M6sBIiRdWz4rDviSOgJM99U52pxaBCBwZVhMzi8RCKhZcfrIf74sR274pH45Qx9f5QyMlj8/MDT37dfEvEeCCaukIG7eMJWiBqkVUI5d/yT2XvyyIaGl3oBYWMp7gyXmZ4HTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjYgdphT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjYgdphT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40B5C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760788793;
	bh=1XtPMpJ4nqA4Z5/NiIr59m++3ARmjZaIZpvjk3zCLYc=;
	h=To:Subject:From:Date:From;
	b=AjYgdphTSc/Mvp8xCv6rrF6PTqM1V/d+ru5qlgKl6vqNxjDLjveJr2wxewNTus0Cp
	 HR3oFr+P5DGyAhpC29xXTU0B48gBSgxrdyQTObZgKWcXgPjnvvRZZzO5hRdQx5LNpK
	 E1sXZwejjCT5hf1mommahlfRWXpAmOxyfGNDhD/0WXptIoDUCAmDFRzsWsWibG03Sc
	 AgeC8bcUC4I1l2nEOOetX4fOTqiYvNExACSiunsAhd3nHEMJMRrFYE+dkhunj5D3Nk
	 QY5LqheIp8j4hXN5MWPxyDjqOJQvW0iVwki+DnsmoK3nXAMeWLm3cCg09ct1H6Ijy7
	 1BGwXOPs667+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D7CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078879359.12986.5846002237924872598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af05f09a2ab7c650675f34b2e720fccacb2ba2bcafa61132275fcadfa2fdb5aa
Date: Sat, 18 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760788793
