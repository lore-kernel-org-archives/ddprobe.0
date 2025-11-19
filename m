Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545E81B0413
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763519514; cv=none; b=Rxxc3EaoeL0unQP/rf7FOtIOWJGZYZ1RZ35cBEJUyB+QvCHAFK3pvHMIVoyNnA4cJrE30WyrM14PejS6BHFsTDUr6jVYc0CHotxnHqQWBm6BAYaEuVSaVUVEtC+etDbcHP1eGUTT0CcN1HjHKveGpnvX8t29S/lsyZ3aEujLPt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763519514; c=relaxed/simple;
	bh=E8bL/K+Bn/fFtHIcEmiAc27QLVU9tqM375FFPT6FMXE=;
	h=To:Subject:From:Message-Id:Date; b=dIIFAqWunEKOU8NovxQmuJ1eYcL0hw9IfsNc1513fsf+f+rKI87Gpa62mragvCxyFWvFYyrVk2S8o+RbZ9bI0RQSFR4r5hTlxvgSVbxjJj1uMvAemYqtctROm9PhtoI3EO00xMopHVN52d5cNjFIpXw4yjgAlGe/wOhG9tGuQmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ah8uTTOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ah8uTTOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DDDC2BC86
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763519513;
	bh=E8bL/K+Bn/fFtHIcEmiAc27QLVU9tqM375FFPT6FMXE=;
	h=To:Subject:From:Date:From;
	b=ah8uTTODpYnIHtJjhffqDcnaoIPv/VnQM7krhh3PPbYzjHubZET/h/aoSI1NlbpWo
	 ZmmnzLf/f8TR67SnI+QkV7F2Hu0mFVrIvYOIWTGJggL2U5fqv29S35NB5fPq+ZZfEf
	 JjnJ9R66JlPaaJWdQA+y+1DJKEqypUSspxj/QaDKC6lRW3DrTw/fxotpEthCIjGSgr
	 011vm/r66JnWz+4UqUwihK0jcAuiP74/lOS13OPKVY5VTqFsGvSUY3lzjuKI6NN+Bn
	 C/wOV6yvEAnCZx7x2vH27HhlT6okvv+KaQQLyN0/qIrv/8KMEzdIUXX2l4KHRJFOqJ
	 vfAkt3BD9sweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BC9CF2564
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351951359.5643.11918475609755874328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37949f7450cea5c3c711b7e3467b10f7b21c2123d5bcf9ca0263db6b88ba1d66
Date: Wed, 19 Nov 2025 02:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763519513
