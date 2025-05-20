Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F7B6BB5B
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747742394; cv=none; b=MuOIJDkuwFkyoOOVfYiwRakkxsBjioyKvVR9xCBorGovMvb39V7Zo5W+HS8i2cTyrY5zc8D90dpUUmojy9HtJ63hAFg32+JVazNCDNtFSl065LA5K7Yb4DtPQ8L81nmtvXKtSy3C1C7SzG2/tI/Kx3Nb8xm/TQAQAc36F+tvCCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747742394; c=relaxed/simple;
	bh=pGtuwx4yd1uOs5ChopVHzx0D8nnWo9fp4FVmkuhxm44=;
	h=To:Subject:From:Message-Id:Date; b=DL5CK8pJf+h373BH77o4OuerYZ8b+4RcVXXU9EbRBng/yE4oVQsN//+y3V5u13C6gjZiw6cYG2VSgPmusskrQR4HorW5OgpMf+aj21sr7lscGrzr8oaJU5NhyOnY4Q23zZwpsu0O9aqc6ACCYlWo4iegyTk+WvboFsw7VJi/Naw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onGabNfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onGabNfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1595C4CEF3
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747742393;
	bh=pGtuwx4yd1uOs5ChopVHzx0D8nnWo9fp4FVmkuhxm44=;
	h=To:Subject:From:Date:From;
	b=onGabNfiY31rrbSpmsZnnnvc2sfP9xjv0dzKqPIXm6ji35yFLkV67QSVZ4WKnzVer
	 efCtQs8dabpX2oO9MTqrEq9YVL7FdGLbVXzt+UuVUzz8Xk34PQVZoUR37K9ZVyDaDU
	 4dhubiSISqr+4H0dlN6HyAVRA9x564uVbatlTsm4O4AkXURY4alrEIQXYSGLf6d8UI
	 BlNjAD+3ER21vu9sXn4fDstPSwJzjtFlWO10qwo18rHcNJ1CzT67xHjV2ycqH5ur4a
	 UI81PpnKbji2VQ+lFjBAU+gjjJ4rXlq7sZKsd2qdwnDZIEcyc4ADhS0EZ7zvgspTL9
	 Vr6PR+30xXyXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E67BC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774239357.19361.1065317638343076220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ca998f1e5b410ccda02bddf0027621869028a7fd54a292410e5e87de75fd52
Date: Tue, 20 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747742393
