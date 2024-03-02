Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2562E28F0
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709353697; cv=none; b=XNwAU6K0zxVP3W6KdKn40DCVmebvClyrlyY4fx/5LRTw9LRc8s3F9ANrUU2MNE4o36DHYTw1rtnUqA71S0dKh4DKhWNoc2z9cQjTZ2YMQnlMq/LixOW8YH88H9c0likKMq3tINd11cGnii0HtPS7qRi3x/6/fr7muTOwhQs1nRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709353697; c=relaxed/simple;
	bh=FB/iXd2Z4Dn6KqBVjTeTdkEmcTEaq1f7yyjYn8s/0Ho=;
	h=To:Subject:From:Message-Id:Date; b=OME4q+PzYFecxjaVDCNluR1LrReOuOu4FryQwM8gwZXeqo4HBB0PLur5jHiDG5PoETWcPMIICAZDzUUPtX9NT2I4IqXkVgVmmBPJ2dR/NXcSsuleuylp/8nlCN+IcSl3g4FXkURTPEAuBIbI0ZmqnQ5x+ntAb9jtEGVCX6HKiGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlCbbsbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlCbbsbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9513FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709353696;
	bh=FB/iXd2Z4Dn6KqBVjTeTdkEmcTEaq1f7yyjYn8s/0Ho=;
	h=To:Subject:From:Date:From;
	b=YlCbbsbUn2w9YRJiyqaRe2CyPCDIztfiMzaqIsH/okkpG03jzn1obzvIXQklAwile
	 vGifDr91wKs096F8aqyts2BgiD6QFmA+ZoaZ8ta2rjGHEWffpxqVS44ctCWXS1LZCA
	 S8ivkON2kG7BLVAnaCsQTBl+qnxeJvnAkcncCuh29yjcYTTSLI9UTjwM3eG6WvZofO
	 c6+SYawzUCnAfBeIY/O/RIdYde24W2Xf4+1Pc77cHVaWOz0iOIjY/PScYJ5ft2TVGO
	 l51zdzGY/l/OS99i6RytLuPv3YDNsBv5HhzZsXjc/u6BYpHnEsq7gXwj3hA8QLW4/y
	 FhwYwZlsx4v3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71538C54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170935369642.16887.1194561414742297945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510da5fa9af92a9be8d040b95e500c2b8ab2f6cb0f46ac5187502663e6511bc1
Date: Sat, 02 Mar 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709353696
