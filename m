Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BB73CEB84
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778257654; cv=none; b=lfq03iZWZQ/lp98GNd22caYuRLXviU/KKPq6YfJ69+t5RxolvYRBpQ0wL3WPeyoSmM6un6Y1iXucuk/Lhd8EuisodrQtlFNIq7wt5kM/c5dsscJOKrQC76jbyBn1Y+EON5IjpnMtfRe+3JkC1dV5yhUMX+4MkF7CY3CVY659Y40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778257654; c=relaxed/simple;
	bh=2JRzmeqfFxaORL3VyXq1ICsM0/JWkFHmohnH6/6+bAU=;
	h=To:Subject:From:Message-Id:Date; b=gnsbVwjxgo4WRgvttzzg0xRYCJaghMbJeg9fQrhtcklIAL1uNwO/UFDkBJKDIuGpeAEShhpdisMo7plMcUPJYPK+IK0fTBT7TqsjmT7vT5IxwwhnDvwb4BRDBYG7Nd725mgih9dHAYEexoxb+yjNS/npi5JTkkLhtZtX3cDucWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9oVa0Z/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9oVa0Z/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB3EC2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778257653;
	bh=2JRzmeqfFxaORL3VyXq1ICsM0/JWkFHmohnH6/6+bAU=;
	h=To:Subject:From:Date:From;
	b=s9oVa0Z/DFG43bxOVbhmyjDRewkMaxiITTq2QbL0l0DYWFdCLChXVbwwCf38ThhBL
	 GEddfcYuFH/sdsC3Q87L005e0mRh3W/Sy89/zKg36fGcgPdnEYh3WU7aXANrPCr21t
	 pOQisHcfgCoUoWBfnn1nw7AhkPnzju3HHBmT8wU5+Ia8ja/T7b9GZOa6eQCAi6Ksyo
	 pJH4LxX1iWuibcCB0RTAcl2hr2acpb2NxWO0bbKGW7R7taKhNwDq1yFhqOCFGs1JkT
	 K10OMO7PGgee4YbooG++fBLN6LlPsygaNXsb32qcGa98axjx3ZQ5YwPEHROIvsIoV3
	 zN60YsGioY3JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA42CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825765369.27468.2397776179251561582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b271c455ddab890af148a31a329d51f3b00022a7c530aa5545fc2f3af24619
Date: Fri, 08 May 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778257653
