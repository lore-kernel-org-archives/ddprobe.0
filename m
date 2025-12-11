Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FA919CCF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765446174; cv=none; b=GXam3JeCLPw+IVPEb/ASqarRXomGruMJZfYDWGNW0AntPZab4A75RF+x0mhTd4bdOo+Ce45tO9mbd1uXeLVq8N13vGlydjuCNBzpJdrTXE44RfzvvE8RDlmfQR6Ptl6GHCEx5wTkeB9C/+MsHu0A4jxvNdWgHRvdOm0gjfnhi7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765446174; c=relaxed/simple;
	bh=ykwXHEGphkSZnbNqlh8re7v4u2Qe98ijyCZ5k85STLo=;
	h=To:Subject:From:Message-Id:Date; b=IaMIaQKgNbonyU57TVbsIJDrIVyJnlGCzodoyD/b503S3ISBIpqHXNfRw2Vkt9fviRJraHT0GqyZoisS2ZVwgcJfjRVK0o6KXrxwh1Xbi+jhAK6CVUAWbSUMMOtoYitvmbILvPFJnKS3H2rtGpVNSZtYh98COPb8vtePWzfp0BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfMQXmyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfMQXmyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C9BC113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765446173;
	bh=ykwXHEGphkSZnbNqlh8re7v4u2Qe98ijyCZ5k85STLo=;
	h=To:Subject:From:Date:From;
	b=LfMQXmyZFiDG6+kjJ2GhZpk23lRSvRZwE6cUM+zllv+sYL3ftkzV2T+dkXE8mP+CF
	 5ATkfKqCCzOD/lHN35OMBM3340X0lwOKdbu2U/JT5Tw0N5jz+OiiHUOosFwdDgxOp0
	 ych+ZYzixUSnglfgwd8T8toU/TiBHO4rKVl7n+b1dNHmbhVOwk/zJ6RXBJ+5wPKcCu
	 EJDc8KMCWwDh1wWrPtkirRPxxpQMEO1d5WKCtbag/a/wlC8F9vGLz1sSgjoWMzxUtj
	 REUYKAwdcd7Lf4RVoNLNTkJSbQ+xvz/pkgnIdxD41Sf4M9dqE+siI9Zm6vnuT2rvFv
	 I5KFSdAhiEHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D87D41C12
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544617358.11874.7379569181387877232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4621bf2f8628896b0ace2e71a7121cc07c1453b53ac3640da4c5b153b7e47f8
Date: Thu, 11 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765446173
