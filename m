Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9333612E7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790916634; cv=none; b=HR5vQ4IWj5Qi22fBtW9IY7ve2snj+j8n5cLeNYDExHY7h7zJF4kShHeUq2kmVifrBOQIaLXzWWKtMgU3GsjMt37MVW1qTFTxlCe9QUEpUm5exjnXd8q+36EeCJBxyFyWqaXU++xoHVJSc/xmtJjMekopHlO9C8GPehP5IXrZP/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790916634; c=relaxed/simple;
	bh=Yyo5xW7QOXrL1p4TSlpJjSp7Quxjef4dgg/L2r/ue5c=;
	h=To:Subject:From:Message-Id:Date; b=pVDiLN6/rQiR3FxPs5kJ29sKmXdJjhHu5FLCXFu6dfXMtW0pKvDDWVIYiKe8+7AjP8cOVpR5pcThy5EoYpwzcVTQV3A1NNj1qgWOsvSwpeleuAVqA6zJdc9F09gtK7Hjdmyq9yVAT1xvLwry2SnnH5dp6dT2FN7pJ1DS1PlBPQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BT3EjFz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BT3EjFz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38F2C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790916633;
	bh=Yyo5xW7QOXrL1p4TSlpJjSp7Quxjef4dgg/L2r/ue5c=;
	h=To:Subject:From:Date:From;
	b=BT3EjFz+RTGTDNw2+Lq1i6faEwOKLkjer2pO55M3Wp64F4B5Z9Sml9p1xearBh+Or
	 0v3El5CuxrNztkK/HxBwImMi2Xf3A1FkmiqoKVTdiBSHqgo8gtpxhmUMoy3qGVA/Zz
	 UNGUYPES1VjfkdUhCPAjT1DL/DsreuhBRmsvRJBjymlmji3ky3xyW/M9JWggfRwxYi
	 JsTt2GWU9sELB3msxamSFhKaT75iE1Ulb9i4T+YlsZfvfwd1UUFOTlXtmgFHsoyZ/M
	 9dnJkilbKYSGHkWUEOqTFjHKDQHlTE0Sb3wyFQr7thrc6ONv9u5W2lyKky/Kf/Vegg
	 mVenP4wvSUM2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE91ECA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091663370.22115.3142227539542257504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e114eb9941f4b73109b482f8d5b2f4a586874c14d8497c1652d0b8f576f129
Date: Fri, 02 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790916633
