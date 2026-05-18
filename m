Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0FA3E3C4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779096034; cv=none; b=SRzVoSgCPlYNsZE0/WZK8Uf8Mwmk+GG+WxD3kW/vxP8QP2pVAygZLKhkhAzK971TZUkz3I1X2adVHnnLVzdgbH14H4X2acysoBzp3QpcMdDEjOspLRQFbZ9w62j5H4gINMYO+93n1i/K6vGVCDNNyI4+RoEx7TKv4uTiFUJ4qNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779096034; c=relaxed/simple;
	bh=QH1nNXELz5I74kUxQoof9ut+1CgnjDc6BhVDurKqacc=;
	h=To:Subject:From:Message-Id:Date; b=KCQRTLItAo3EzwQqjMX2rRQuN7+2JR2QJS4zmD76Lf9IOYmTczsb3D0J+TNQM9a6OUIwB2+0GK+lC+ES2uwkXryvi1iXs7srtiKabMnxtToZGNPMvdchwOU14ikcQxzETYGf7/VHIzMI+h2rj983A9NWK5Q1DZvEAoqII2piccg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcGpQu+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcGpQu+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD376C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779096033;
	bh=QH1nNXELz5I74kUxQoof9ut+1CgnjDc6BhVDurKqacc=;
	h=To:Subject:From:Date:From;
	b=OcGpQu+2rWmQge7czv2pO3UBMgUYiiOXBg3/x2ssoTLtsxDRYIjeevraK3XY+n0Wy
	 74KFFd0EybqqkDVqnGmR2LMiRaZtaDQM/IR215Ed0YVbDiIrzReB4Fc87lpE/CK5QI
	 hWeL85/AEt18A+l6A4stKYSor/YiNxm5rzL54f1h1oxRFbL4AHnTWiq2M98XT9IRAe
	 XoyqbfR+YYKEkVoLYZXdjsn5eXxkvJ6ghnQ2ahbaUXQB5A2YwP1KasW0eN7awLK+7Z
	 qbufGvOjhsYRPlmGgEOxRefYLBI6SL8cUx1i9+8V1ZLjndn3HGKmIiIzUI6sdH2AyI
	 WQ4gQvIcS1NlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDB3CD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909603369.24065.4931994549838757042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78df8775b22ce88fff0b1608dea0337a29f0fdd8f79b2025590c67b425c11dd
Date: Mon, 18 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779096033
