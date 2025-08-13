Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1858F2D5A13
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755070794; cv=none; b=rOslsBzqVO7IWHiX89vrXa3Z7RtB/VzywGu8Ft4Twrk1r6Az4CMr1hkWA8iVWEeYHNp46nprfXyO6y0hdoyHT6tzbIYDz0bCXexLCDDN4xUms73j7xw3OwvXTeUBZpnjd3iPyJpblJG1bqDbtct49GVqFUyagg/xBzo32y39Fbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755070794; c=relaxed/simple;
	bh=PxTMb9Q6cvpO9Nos1RvkHI5A9BsePmY5ycCQXBLwTN4=;
	h=To:Subject:From:Message-Id:Date; b=aNj2dk0SJpL2cn7yptw5h/miEyricmcCIAFLhXIf8zs0JLU/7uNCUyFYUh3NeEfeeDPYP4yKq6RB/Ilu6d7HQe5h7IltNgU9lAeBpdNsMWs2rH6k5XJuGE4GkUY7Y4Jo/zdogACJTFmgfvdSmgsz69OW6NFMoHYNZb1dqLQgxQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBpszQKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBpszQKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF52C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755070793;
	bh=PxTMb9Q6cvpO9Nos1RvkHI5A9BsePmY5ycCQXBLwTN4=;
	h=To:Subject:From:Date:From;
	b=gBpszQKv3jxSmB/vmUfoYH1EdlMxRNLaJdFWnWa317btSqmPPfLBHsxmk0onxULJB
	 gVWI2ita97vwrtTODBPnhhJytSXTAAzMGTNS1lQGu6ZBUkJvv+D8Jb+6f7vfKDqUM/
	 kdGgWQg7TpDG9Y2fVyoMySRAzm7XzfV/AD2JOsCdxjC5poLhEUpcqDjmWe5HWVtysC
	 2yd2HupfJxAW1pBKEj17YFszrNiV6uHl9RGqtlDRbh6+nz4UX0vsPtMFisDl2zxyct
	 dcCVQKgG+AhW/69Vwq2lMFOngMyZm77rZpBJgjicmOtoYgJOdB2uthj23wn6kuEFgE
	 Ozj8ojK+kzDlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F405CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507079357.8706.10306580990804384874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e055933c4d8ccf577876ee671b174239a4a3b376d4500de5b87ab7831e9000ca
Date: Wed, 13 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755070793
