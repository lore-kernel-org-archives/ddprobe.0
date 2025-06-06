Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BDB8C11
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749209394; cv=none; b=dWBw8fj5v5OaMqM8ENlqwz85Io7u89s0PFjdNXs+q2L/8Hm2UBVaKXG4EdA4L/cer5NyGAcI/NRSc8633At83UrK2NURgTSwJs++NTuYQMu36MbbhrEEZtVypPX3qdzPAfSA0Wm4Ere/PS1KKUlLaAXmRD+iGXX/O2cYF0aZDwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749209394; c=relaxed/simple;
	bh=BeiSc2+ZGkOBVzTF9M025nSsTEyYQEI4/gzSPX+RZYQ=;
	h=To:Subject:From:Message-Id:Date; b=m0S2E97CIQEGWa9ycJpIwoegDCeAUMEb4CWBY5lUqqT0WmZdzt/5SZbxRHT0yTZu2mVUUoshZm3ciZ2J4/D+o8pCQJE5hAyPQk54gF8hrIpov3B3+NNPArCkaJVPfkZP6ITpOks/au8BtRi+tiWfOY01pj72ls9kctmKySoaYas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjNORcup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjNORcup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5118C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749209393;
	bh=BeiSc2+ZGkOBVzTF9M025nSsTEyYQEI4/gzSPX+RZYQ=;
	h=To:Subject:From:Date:From;
	b=XjNORcupHeYzuxqTnUv1s2f0lcTPJIpq8KNB9IFLMeAvvaQksgrVehJj82KCiQ7jm
	 lNBxnCePZArCEO+fj6He60vjfW+dbpNIC5Czp4D7mQ76/fpYlg8iR9USL5bGGJEd1J
	 Tos9OwK4KBxmPHzsTMIiVzrnZ0PTro6HTRmEgrcoxDMYBtRFrRyX40DEvj2m735S/N
	 ju+ZV0WHdh54sJ7u47+tMv280VvH2Xk4nkHw6g5IwinUPjyHfeD8BRK0cE7hV9Ca9/
	 toGcSHw1dSGQFpMQTLLYqEXa6PL8kzaddkDI98D0qLMVQRHhV0aLV7FjnTcgl6h+wH
	 /+eDLDDyxjM1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62AC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920939357.10549.4811426558590742757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05842aaaea18e5abd27e75ea0a73dffb74d34c59b66e33fe5c872df26db601d0
Date: Fri, 06 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749209393
