Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F408158DAC
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757731195; cv=none; b=Fhbr/A0M2tXT1rqvsR2RUUD0W01joUHnKG8UpH5YBlJxSqByNoEO+s7wrIGJuXDtB0UhQ8IAFQHysJBPC/jqlpJiCvwa54pixVAGlWyyGTKx9Sn5o2mDQbkjPCRevKbT5SoR+6rwXcNu1zFdjAPqQeuWfXMHlJLJbOsk7oe69go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757731195; c=relaxed/simple;
	bh=KAoyxdNi87anlJp1OhEyQGMYWxsPZSeO8c5Valcmxng=;
	h=To:Subject:From:Message-Id:Date; b=hKqQdJ7kvowW08IReIDJSlhtVEB0AlduUsmwZwd6k5qidJDdFUOpqX1IEVdOQTpBcIx4mpg5Csw6NZnfNP7/1cXgcmvW/7LB5vg2uxyMwnFB/0Opaqo+BfznWFFKWFuld4zlAyqTojg0lqOnXAFEIaf8ngHVl6JQAtY5eK8IHAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEmhyCmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEmhyCmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A200CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757731193;
	bh=KAoyxdNi87anlJp1OhEyQGMYWxsPZSeO8c5Valcmxng=;
	h=To:Subject:From:Date:From;
	b=ZEmhyCmKcsOyB013qalRe/fUiPMULus3iQyb50y0AlNVHGsZLiSCipbW0NcK4WUdm
	 PmgQqVPPN6ukBRtOjEaclAavbIE8T/SewBFjaXQEwI47KWXP796bhSCCgQWq/1zGvZ
	 Mejvv5e3vhNNIIlOLvPXFErRJfSwsyq/ILb5raee23sCm0x3mFpV6Nnj1X0BNeXMXf
	 zx0r/FcsBglU1hCBlH1bQMtsiK4LvtFT83hje27/+vQm+KKxfFBbOqdzRz+Ymhtio9
	 /WKtxbZNMYqd+E7KhlAqGre5ciTbwyWGwlumHxPzuRlMxfGX7gwCn9HZ/iHX2/sGki
	 N0IL44juEBIyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91431CAC582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773119357.31758.15102330830826101879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2a3ae97dfa05bb923c460090e8fedbc839be2dbb4023e92ebebb033f70c484
Date: Sat, 13 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757731193
