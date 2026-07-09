Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D85043935E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783573114; cv=none; b=PvKacAL7wheL1tEmTGbnaLVmKX/ok84Hkip48yPq6ob1HnPmQqQNngZMvRA7XFzO7CEMK3tR3eM1XZF2RoKYqXBywqQb9IgAlA3/W2dyfql0MixvLQ5Qju27gnuPdIKv3qG9onbvadzBYlnTnrG8eRUmomQW4kCiNy0oj62nG3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783573114; c=relaxed/simple;
	bh=TDq9CYI53WZOZUtb5RrHzXaw/22IXN1BlreCqi3DxLc=;
	h=To:Subject:From:Message-Id:Date; b=qJny+R14ZjIKVdg70DBcZSnF9ZOtU5YTY621UH+mzbC+HzcKQUHY768uK7u8znvQ2VNEqpFflO4mesUdytk2aziUeJ49HymCTVkaewKfxKSsYVlabtTMGSTOb/KPmpivho5k9wXfWDAV9f+clLGL3HCKuivDVtCHIdWargY565s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcdQqIQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcdQqIQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D110CC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783573113;
	bh=TDq9CYI53WZOZUtb5RrHzXaw/22IXN1BlreCqi3DxLc=;
	h=To:Subject:From:Date:From;
	b=OcdQqIQnSvr4YGrGD8NPDW/447vLEyE++YiMmFbHsQ5DMKdXRZS0LflAs30h2VQYY
	 i1tkW0oAgpWp5TQhQIycbj/hD5DP4lANIjv/r7yLR8v+/aSYT207z1jEBHB6giWFi7
	 AhxoTi8PwC7l89Ap5SLg1fbZMI/vVIrZOBdOvFEuq/JNlojTMGiaGq/5ua4GORLAw5
	 79VcmJ/dtv3S3JzV7+c9pZiT8H+M+r7ftr+m3mcdPZxSFs+Zeh5AM8LkaT+9GSZRER
	 77Rw/FBa/0Q3tcUuEB3siDSCyinAdeSdpgucrxV2BpqRAanL0toV9elDLcu9Oi0tyf
	 z/j8UBtb0erQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE793C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357311368.9001.4386092763418201415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c911c75a4f9728534943b86cb0c1d5f7940bc40a129effeba1fa29103151fbe
Date: Thu, 09 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783573113
