Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061A438389
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711821497; cv=none; b=Jiip37LP0inN86WJE+NqIuj4Hi0N9qC0gc6XxxXw5AFntdRpsw9fjOhPkx9jND76UD3j56cGAvCdlQVip+5AVuXMABNYnBL0Nv8mSxPUTMAsVKzjstHln7fkQC6ysgrHRGsolBaYkzIpXMDfTZsxT0IeimTYugr55Oj3mlbjmOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711821497; c=relaxed/simple;
	bh=Om7VBSwIrj+d670Q1raClUV80P7wro5XCbLR0gaCiOU=;
	h=To:Subject:From:Message-Id:Date; b=RBEtMie3Xv3NNdYOI4AJoFpffdk/cie+7ZtiRl9y3oh+InmDUqg9VKUFeHGbRalk8T6iI+WmHxGEGFYTRXxrQyj8Ijnj0vMyx12Svll8oJDAeq+oduI7Si/eEFWmvTqqFxAj1xdOyb5+MXUE5/KgLQnOzoQFKU1lZt2CxppTq0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxWKs5sL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxWKs5sL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E53C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711821496;
	bh=Om7VBSwIrj+d670Q1raClUV80P7wro5XCbLR0gaCiOU=;
	h=To:Subject:From:Date:From;
	b=CxWKs5sL6jtzBoD+DzDPagG+LoW8NAGkk+TMoC4MOLZtgLbZ2JDqKHFgJVA0cIN32
	 3QXd+sr7m2FCnEsaCMtwFLM+M02FBL2Q725zW5jsZi4S0dXC9zU3jmDEExEioshbW+
	 3TwtUIBlAkikieE2SRTGPIa4CkWsB9N3eRaT24Rm4kS3JaaqwKHFRqk94ig/NQnYyq
	 k8jERlrNVFLjCLoqhtHIipLmWtfp6Qkei5+u1/2vXfRd31+Iquikogen262Bhg9JDL
	 FQCfNj78gIo5Q85B7/xdG27IqMmPZCn5YV/KnDPNOs3EXZEiSCef//uw6CzkwCiyN8
	 cEoHLnUCBriSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6415EC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171182149638.1938.14998372056149570076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5540a098b5d400a4bd22aaeb8ca72417dae0f2830d5815e4b984c04949bd67
Date: Sat, 30 Mar 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711821496
