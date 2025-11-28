Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066B730FC08
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764339174; cv=none; b=u801Ta1FwTXWt3IGwxYd4/om3hewa7ye6igBK2Xy1ybnRcak68xLAuv0v/KutvbM2Cwl0xlxuywB9vCM43CFJd/+54pTmRIpaIJWSPcBHNsxVaY7mLo/Sj7v+dCH/g3boIuf+p1eyHajsoA7erUYnNXRa0fnqRzM8dpnhvZGcmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764339174; c=relaxed/simple;
	bh=9BAuMh/O/gYspgCuThkCw5R5DyyO/J4TVbh01WpOdm0=;
	h=To:Subject:From:Message-Id:Date; b=Ez2zzAJRfdD7VoUyyWbNEUbZMxenhuel3vYJk2mKw7ZdJHB2+8qGwKtVaz84fUZjDhnY/porivB8ck8n3TNyDMhFrc94a9VxukVZbCC1Wvqai38VGiPqukqWtOTtV3C9hU5Dd+vIcEthAJi7fGikJ18CqzzfDJ/XBLqQU2GeMM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrWQqO0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrWQqO0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9697CC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764339173;
	bh=9BAuMh/O/gYspgCuThkCw5R5DyyO/J4TVbh01WpOdm0=;
	h=To:Subject:From:Date:From;
	b=VrWQqO0YYU1oksfTIl5eDiYjbGUVvnRdW1HkabHfMCnmlwDzjCmD9DxYVHRcGKzDA
	 mEMgPAKoWZun5W3b9yX/nw+yjE5NZFuRsgAdhQ883ayRMfwx5x6p6ir8y2kjEHLBRP
	 NkYCY89j1RzWgNNAg5+V3vhrs1aSCRyTPgJaRB4W5YfLaC8KiUgO4uArp0xJ0iMUkJ
	 37gMHQdOw49PlefFlgIXos5LeU9bEQkXp6xitE908vHUgxtsJx96V2C+wAibgWTRJw
	 muIyS8SHDVCjpBM4SvAP85RKi/yI0oCMXdaPPMxbKOfZQFY2DKAjSCEh1yyWi+ipkr
	 gsv+3WK8dlDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F300D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433917357.9730.9919384298564481074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f25c1370b84a0c58f5873e403edbbb7ada3641f1dc21fc032d6809a3357d25d
Date: Fri, 28 Nov 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764339173
