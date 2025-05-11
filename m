Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3427B25E478
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746988195; cv=none; b=c/lQ2UYV+2K4U0Q/gbeWmcw+G1v4PdDvjmd92VV4ZLpUPxM4MBJPCQwJ6ND20gDaBHWxsjoHG8KNboDkiq2kcQ+m1Lc+O1kGM1w9xZvzB0f7UsMU+0USwKvPERPajRWfPiHqOePBtztBcisesZSOKRxVv3al5trovMTRMKPoODU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746988195; c=relaxed/simple;
	bh=MHpLP4E1KW+lyZ6QNj8Bwr5uL+kGdZPXOXltOqsxOBo=;
	h=To:Subject:From:Message-Id:Date; b=hxj7WrDjxL4p677lAGN+sB6wBSC/1xNcQY7IGGkUdBIoHd5C54JQY5DtvdX9y6y8ce0Yui6JzpG+cmtzJXxLkNkXigA6l+eun+amNUF155/f2L1rEFRVjrtUSZ/6/tZcyv8yHqq6EfsspGbJ41EkZDmqO8keKa+S3a1gUU8P65w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2AgP9GH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2AgP9GH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2ACC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746988193;
	bh=MHpLP4E1KW+lyZ6QNj8Bwr5uL+kGdZPXOXltOqsxOBo=;
	h=To:Subject:From:Date:From;
	b=Y2AgP9GHw/C5xjrZn3XNAviU3yzjFG5nobDdh5J7aJEJFkVXZlNebmjPYcwqzrldQ
	 fSMByqO60VPIlAVRHpcc/I8v8S9j1C7l4muQDKggcXxyU2JHEULtw686lYTCHip/ZO
	 4hKRDYhhRVyfk7+qKXuEUjKcKWUSdn7kYTnmz45F9KP4vYNDp8r2cYdSk+JNKisLtr
	 /AwthrVjxlyomNyiahDGP5EfwBt+zl1duKCQaBjQTUHViTbMbfNns/UYqpffZnMUiU
	 x8QZcPpWSRS9FIlAK2erNJ0aRFD40TeR/M4z2tBgU0uzuhUvbUTbq/f/VqzNypwX6x
	 u6i0P75awebhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9626EC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698819358.642.1436656207699317129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1cae56a0f53bcc11a279e8779baa64d4b9ee2d9f691380c749d7f3013fadbae
Date: Sun, 11 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746988193
