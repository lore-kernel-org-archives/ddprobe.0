Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2F117A2E8
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739906334; cv=none; b=t848KNZ7M/WQTZult0NFcnUuhMd9eZvvc+vSZ9G6e/58k0OcVJrEmQ0LfHhzOF82olIeUPlmj8WznZIIWNlyyJMwxy0jICjSRpRht/sYGdI2Px7fNepgM2aR5OYTbcAkQHcdp9E2d2Zn8WyABDyJkvV8pDVj2KinaMGVYXNMJhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739906334; c=relaxed/simple;
	bh=FkbSBP8RXR8aOrI8uZ7F1viMVl2Sqa0psoATphOsS9E=;
	h=To:Subject:From:Message-Id:Date; b=gdNyXB8KQBNQhsLAGtoFMmZIASv3LC89BAAzhSIuV7kRJQViJoz5uTDvvnLtXRGg6R+iyOqzUAu/Eh3MVuCJkmGLsaNRe9gjx2EgHno650+z3XsVpLfd5dVFPd2FLwi70btg3JjY1fGi6ULyHKnHoIgkCMPS6w8xAvTSU4q+KdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nH+4zn/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nH+4zn/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A365BC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739906333;
	bh=FkbSBP8RXR8aOrI8uZ7F1viMVl2Sqa0psoATphOsS9E=;
	h=To:Subject:From:Date:From;
	b=nH+4zn/eEEjUmcnwmjX1lKReyyb6U7JUHoXoUNWE+VnCVWJYQy6iX/WcvQgxncGlT
	 oKF4gMpaHY4quJSPCwRIRwRwgPkUizPtUCQlFdcRjKUSPs5lh112DIEdJN0L31hvm1
	 LViVZNCr3yigvgynzS+RPaCF8Pd2BgKvxipYOi+y6QcVdBaPHW0d9z9UHF+RLiaVKV
	 Fi5G+1+EtCTQjpdP+KwuSYA4ObuKNymKL44ZfD5f9cJis80JNHBRWUq7SMt9jmQ2io
	 Lp2xbUm59ELhQp3joSbYuon5lZ267UK39mI0K2+/JfRFr7tMSshHe6aKUD/On7izdK
	 9T/RiOO8SU0vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9513BC021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173990633360.29805.17377180133807880990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5b93c4cc610e14f4cef4f4c6f3e82b2dcf54a6ccced9b6c34b8afc6af46e89
Date: Tue, 18 Feb 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739906333
