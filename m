Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6163CC2E9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717814843; cv=none; b=ujjq+iKPxflTQgYaGmyJzlnxds27txJAVbnxQM3BxPhIlTQCrNdQDRc/hH6G1MlVmSFzEy71MoeYHr3uWzBg1e12/H6yVsi4LUx/faGZE+h83Fj9bGA2RWjk7ahOMdQCBC5RbXG3ERU6I6YrLqWKeei1CxvLFNzNagoMg7awkOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717814843; c=relaxed/simple;
	bh=kgvE6aH7KMoh2rcID2V4kjJJAD7ty0sBGydZt6SYtd4=;
	h=To:Subject:From:Message-Id:Date; b=XZc3YNWbsIAL9xdvZRGNT6FUZoefwCEU/pTgLRg9gpa+9kCpMFa2FsO4q/zfA4qLUds6/oKwOG7R2SZ8K1h7W0lQTcjIP2hmLdvGPO7CBurqPnKdh8Wi9j3Y41oakqvkJVASU2i+0a/YpriIG1nVFolV4GDaOwMHjQ/IinH5Sbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLj3q7fM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLj3q7fM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49AAC2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717814842;
	bh=kgvE6aH7KMoh2rcID2V4kjJJAD7ty0sBGydZt6SYtd4=;
	h=To:Subject:From:Date:From;
	b=MLj3q7fMqU41gNELPo417twyks/6pR/A5j2NHubtQix/jdNhdma8vECmLHDQWbu0o
	 shD5h+NXtUEM4XSzD6dPoo2TaSazQSSLFmjaw6a74RHaUy5AFcbJwV+cjbchcSdhDz
	 5m/2fq0APEUyskQHAO7h14lnEHuNb4Pe1woYGwyGzxtIlWYRMprgYmP79353xUMIAW
	 +mEdM9H/LDT+f21t0UZwkfl/ChJAmRpQCtQe9YBaxNyUQUUrkNxUKdAHnBcne0UHXk
	 t6mJ2rQ0Kh4/PGL8Brd/tQKkMY80Ct4kBRtWg1uLaERd38RDvJSqiLcPzf5+XZZ/vl
	 RPnzTcKgs7kng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42D4C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781484279.16392.14402024153956546945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2d87c009d2d0a8bca2d32ae07c8f02174ba3e963e46c40036309e77ac9643e
Date: Sat, 08 Jun 2024 02:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717814842
