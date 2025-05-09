Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BB122B8C6
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746764994; cv=none; b=U0o/1yMEpHIgKKBr+B8btGffCr6q1QUiLXy+f3SiWB7SJ6nw1n0ydg44j16I0z1yV1kADUuN/ExWQuzqiDVhe2hk0XS8OvZdwMamYpgqrCMCmb6e6EMxSiUBbrNLcdXvquaenGqqfLE0pxqlQEHi1h+xugbsBLzr6y+X2TiHkSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746764994; c=relaxed/simple;
	bh=+nLI1Mvpwcj5DAqia7AJQbeuWIhL21qOJPFYiSbwvT8=;
	h=To:Subject:From:Message-Id:Date; b=TqgdJMFkV/64LtvP9gv/Br1VqXPw1eOagHlgRqYpX3zCoo0Jw8FcLZf6GyGCNe7QPIL3AiNeW3AtOeGkU8Rdi0sROXmhQ09fN1zoLFVBgMIgGSP+6fA/q+p2QKvkXW3XaLg8D7BhM3iqy3H5+BZyQYGykf85ruTED6XUmwHrC0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4TnrhCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4TnrhCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87D8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746764993;
	bh=+nLI1Mvpwcj5DAqia7AJQbeuWIhL21qOJPFYiSbwvT8=;
	h=To:Subject:From:Date:From;
	b=B4TnrhCKIfAR6Tsa65eXJ7YrlX69KJgpxSCcfd0FlwfbxfqqYzF2QrGaM2LqcS9YG
	 0xN4aovNdvqtUpvAtcy6Biix9QoiU+1h5c6xFnddVprSz9uJfA/OTQqAyGd7VsWaDQ
	 /1fay1usugc9bCVFP8QhvKLfcXP3zpOK0zuxyH3pUsn3p9GvRLIIe9AjMwyIH8nW0Y
	 QpS1lsmfcK2Ut+W661b0+jdnan3MfuyKzT6+jolrIgI3ZBxSghRsm8VqYEzQu5MYpp
	 kkF6dB5uI1TV5S0KT+m+fLJhHFnRh3AJu70NVlFRp3oZh82PU6Bgs1YX/m5AbqjDm1
	 HdDDICx1DEtFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B20C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676499359.5831.5837044770209840115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6050a8d6cecec822f0332d3716bfb81559ff38c41332a1cb12fcd85bef246b6d
Date: Fri, 09 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746764993
