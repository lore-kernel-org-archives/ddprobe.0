Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CFC225D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738557954; cv=none; b=Hm8tVbr7mYYxu+troFzjkhZbZ6oVimEKWAwQ1+bSOtvma2tcVj7ookQIdWM2x8MhrjjhY925F0ektT5iHXJDBBri4It9KFntp7qM//gpzENHi3p0RVzqYhHdUPVgNwJbO6CCI9BcxGbHNXikUMiLaFvZKcqOJQRLR3MdMxadvlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738557954; c=relaxed/simple;
	bh=83u8BaUPlm+moAerk9kVUBg6OgKsBm+U1h7JVAKDnhA=;
	h=To:Subject:From:Message-Id:Date; b=FbjdpdOvoJUksHtzVMQjotVSMgipSUUPbw6P0zcd60wnj2xcsvxp/F6IP9Hue5awkutzAQrc/ORGStP2tD1bb+tFyyQrdPvG14+oxGzahuxjp3RrrZZqD1DvkBfIXk22ASOpkRqBLPqyQ520q5kvZ2iCqH4abKiZPltqEFaN7E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ssl2aV5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ssl2aV5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88D7C4CEE1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738557953;
	bh=83u8BaUPlm+moAerk9kVUBg6OgKsBm+U1h7JVAKDnhA=;
	h=To:Subject:From:Date:From;
	b=Ssl2aV5EF+2RopeUQsmC5I4nKgtm0E6kdQC23SDaKznAva+gtxAKEyfvvuzwlD7UH
	 Av5K74VklMApPbSYIr/HgTXN8SlOtcjQFYuw7XqTAALyJJ7m+eVokeWYdmN/9xnkxU
	 jwIR4vpc3niIPzetplC2FTKZzsI3tBOjDKYo6KfScbybS8aloKdhuT8D5ohsVi3zqy
	 oVMHlR770MY/laxUo802Qc0HXN0aPWkOY42GzL5wNAvlLyI2aA81EJVZ+OBMTGlzW5
	 s4kq+oeyVqTF+Ya4CAXU+d72VHMjJAgQXdcE+B4N+gKeOFruqId00IFaEdqVmHVb9h
	 SWUTQhxZza1KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A085DC0218A
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173855795361.6449.5475948175898606877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643af67e3e9059802756315a5beda0f579e95de87cd86f0b5e895d62c2f93c5e
Date: Mon, 03 Feb 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738557953
