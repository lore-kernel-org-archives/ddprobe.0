Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA24338AC88
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786735234; cv=none; b=FdpuXcHfSBr2H1q5KRcCiqJoycfIRpoyJ3zIWfNWclR/tPMC+Ni6sx7VJsnqYVnZxaEmRH6WhUlBxPkExKr/gLvcYLLcUxPOhWpYRxNz+1IbcOA4XqhHiFf3uaL2YUImEsDV61aLAprYcDWQpCQTOK23Tv8QC+Vz2FnZbuPghGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786735234; c=relaxed/simple;
	bh=QvOuhLawP/C0ZicYip4h36M96jtXyyqqHcoOTShVJe0=;
	h=To:Subject:From:Message-Id:Date; b=MQpT4rqRf27ijo0ca6vzp9AQXgqBMIjG7bsM4pDX0ibbhoAZrlUqDh2twm2SkS1aNCiD3JeMC9zbrwFbQXcszUxm/TjIVxyGOd3ykm288gY+PUk1VaSy4QoZ6KysudiuVGtlIJ4EtNIHx2GIi/5Km1p5IJchEGXJPsbsyMoel9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwkJ2oCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwkJ2oCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECF0C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786735233;
	bh=QvOuhLawP/C0ZicYip4h36M96jtXyyqqHcoOTShVJe0=;
	h=To:Subject:From:Date:From;
	b=TwkJ2oClPnz63e36BXzJbtakLgGS3SELW38tmtT6Kv52GzWxv8IDfwpKesfU+OfBM
	 v/4ss4akc44jiXRm/Vh7Y9ctiE0qB1qYAQ6UIicVKDFkjiMeYhH/xQah/PBbvElrFF
	 GCTCqHjmpjQ07yIrgx1a+7i8PH1im3E6cEkjqBZbn5HJWT0CPkPDAUNUkTaMdvZ2gz
	 +SSvppPmQBzwyoA64b4IWr7jQ5G7xNY1sOO+9zYIEE82cR9902YJxO4Hvh3XImCAU3
	 jeITqLr/q7jxWd6O5kF3+Y3TWP1wGQrAy+w6HJ4XcVZaKH6cxLdx8Wjw01uOZuoD8b
	 a4+Uu41m5Hyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB76FC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673523369.21967.9852498913260416308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e065e4eb412980486204b80d571b90acbad8b78806b130f7b206097b21942584
Date: Fri, 14 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786735233
