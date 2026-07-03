Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34671367F25
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783114114; cv=none; b=jE5Q9JxeNnPwIvMbrB5v4Co6cT9yTH5nuKIyY/XEffQWoWDwiekDdjTH1LEUfo0knJxcTjHipYhxLZO2MnaFeNVIy/OV+1GAVQpCF4erG3K2fTOW/04vIujchutIZ76A4lsDlfwwCc9HEKFSngwOlfaGPO3b+4q+UyE//5nUhl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783114114; c=relaxed/simple;
	bh=8kZw1HJMZUYLvDz7nSbw4uClRhCDFI/Dy3IoHj5b3Qc=;
	h=To:Subject:From:Message-Id:Date; b=JYs0Qa/kjksJ5c1aF3XkX3cnOXPdI9tllxyNpcL3BX2M7PPg89azutQTZbYx7V47RmGznVuMYIRVoYFRTpcofALBEmTmdhmZBhIZWQ9CjcfGkoY2OpZdWNJESHGQAEooSrFH2JK9UNLptlCjqtdlPoMoLvOgcSvkdm6TMHF9Kyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWg9ojWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWg9ojWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6A9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783114113;
	bh=8kZw1HJMZUYLvDz7nSbw4uClRhCDFI/Dy3IoHj5b3Qc=;
	h=To:Subject:From:Date:From;
	b=CWg9ojWCDfeYECLqfD4RzRBRvMcSCHccJYDNwEEYgkbX4hqhwVuJxoW+ZQlfTVDrt
	 yJ8P1s4+/kTawlZtNYsSm+3uS+YsHhTVdFl18A1eTaPPhi71cjsLZdyuE3ubeffYU3
	 CC+7v/+npxrrBOv9XFJgtMS+LJx7EpOHW+i0wyrrBBEHssAePgDALfsOPmcmqTSHfV
	 TNe/y9utLcbJCaDoj05ulu7toHj7G5hCoQGmm9vKvqdeZFhVxGgK6KRlZr3jR8KnAs
	 /C5PffqXXYs5XV02I2mMD8ODBdHjKzrnqjeA0RY1+211NDN/CMwKoQBGyaWxX4f2X4
	 n11NjljAuUsVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9336C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311411368.2284.16174563594412636904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f0f6a30bad1a55f892310eb75eaeff1f41e1adac307d8303310affe6365a5b
Date: Fri, 03 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783114113
