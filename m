Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05C22D94A7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768499033; cv=none; b=IvEezAYXIdP8U9iryYFxDRhZqKPSRcXU6zaWlRDuCl5MWLAcMC9SYX64LXPsmPMjnZ5xoJvSIfBx6CgDvhbTKMbjwpurfX8QUnANN4ftCn7JcPpCogMjD1QC54Vq1Wqcx7EvVHvGCGA5WjFXDC7RjfqGm3Rnse8x4ZxNBmLVbDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768499033; c=relaxed/simple;
	bh=dAamQyxKHVLB3kviMJDWtQQKRqX7P+VMADY244yw0OM=;
	h=To:Subject:From:Message-Id:Date; b=mXaRdGJxsS382SZra5+yrApqa44p142p5zNrV+5QISGQGaCW1N1RLaymeZo5bNTSUxqLSJT5gua6sWxWyyV2viC5lAWkBNB1pDQQRX63zw7i9M1QW/Q68GWg4WPb55lTb/ap//VaskhwE3uSgQ/qawxv4iX3jHfzQ4lt9nbTJP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrlL5EfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrlL5EfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F25DC19422
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768499033;
	bh=dAamQyxKHVLB3kviMJDWtQQKRqX7P+VMADY244yw0OM=;
	h=To:Subject:From:Date:From;
	b=IrlL5EfQVNGgBcRk1iqOFWaCxHyYvhZYxAAhJt/pFZnsz9ey0y9THoQ2PSHhF1Gy7
	 riO/AJHZjyTg2gt1Rw2O0bQfb9qttrZWKnTmkUAN29z0f3kdXCeI+ONDn/VFH0ddAw
	 J1lWmpat5xqqviHJfeyrucdEg0C3fsR0yeNKsQI1e+mkuK3QLJadbUeC94WOz8+f47
	 wjiaFYDjScjTp5Dc6sPS3QZEjyKFDitv6lMKupp53O64cLCBIiq+s4+ax3+Sp9sK55
	 T59wpyIVyHmKhfxw2Hce00yVtQXSnj6UdpA5znj97VFwrIYgd/valS6ZLF2qHRtUvQ
	 xsD4H/qM33JZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032CD46606
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849903358.8557.9339135848649278942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffa6655aa94bf0e14efc73f7b10de340d614d28aab9d179e916b5676ce55616
Date: Thu, 15 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768499033
