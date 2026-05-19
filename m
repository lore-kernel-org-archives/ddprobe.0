Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8083DFC7B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779226234; cv=none; b=CeG6yoj4BNjESZJ1vHFTiigA8KRgD4Rpz3C+eEPQSSrr3iAcPAmfwhpupEL4IHh6M5OqrtNFsYsIUg+VNvs9ImsWYf4kh0InZrbRuF9sX5fDlZbBAdLImpOc4Hn32yBbDErftiIdOQmxiENzPsYWnVrcrrLq4ez4BHldi5OCSZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779226234; c=relaxed/simple;
	bh=MBBQWJLm10tGcC+HAjAmCj+WPszirMBFldLGckhHiL0=;
	h=To:Subject:From:Message-Id:Date; b=YJzBRVG7S6WnYRxzZELV99+xRuAVu1jl4MygbTzNRKdVa8BPNVAxNNvjPRMpBM0rkKTL39qeho2t/BJqMTSoahQQpst+bfiRQwAxSl2Se4hH9XXUwdh8uVf1JZqUFQI7NtI6UX1lpAuB0x6+aNZrQxAlvo7KPQ/a3nZN5Qrrdpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUkX47xS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUkX47xS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2B7C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779226233;
	bh=MBBQWJLm10tGcC+HAjAmCj+WPszirMBFldLGckhHiL0=;
	h=To:Subject:From:Date:From;
	b=KUkX47xSzMLcmk0SvuSbP9rZ2efOArUrO/mvOOScSYAuTKNQckM+wHRm0om0aholW
	 9hi0dvjjYP+YuP+rJqAl9NTlo/H5EMs1UDTAzwv1qlyJ6aJizmoij8GGZ/N5RLUoeR
	 higapXk1NDv+ePWdbwI0fU3MQWi5K7heaPTc5+/kNxcd78OspE1gyTVRLrGWDnZu0V
	 zIUIg14Xm5rZR79p0HLGwibzzE3iVKY1fgUL3ov5VArXuw58Civcabt5N8+JmNsUHK
	 SfTVxM2sY5GrRBb8WTNSm/QX3ttcA+L8uzccF58f8j/8lvqnM4zwt8eJ2UTWQU+RMU
	 8jMa82f7wbllw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF97CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922623370.9881.15261288453531529979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb75cff30e1d3d9fad02e84a7fda149a28644ca57b291d9c07655775dbd556a
Date: Tue, 19 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779226233
