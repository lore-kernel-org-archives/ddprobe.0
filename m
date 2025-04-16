Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480C71B4235
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744837794; cv=none; b=FN/w4DllRpYVBvPHF8qXQwzUcCwu6byK74wm2ISpSdjSs5Db6BktqjVKW13gR0QuYhE4LVzu7VDF5SRZkk+wqCEmGPEFhJxBzyWzxkbjFWfAB9nQz+//8Phqxj9Q442r62HmrNQk/lDv698Ivcoy1FKcY4IpHrqWkTdvpn0Ex3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744837794; c=relaxed/simple;
	bh=Sx7Sd8firWJmKqiC2Fve3HT2DJcntXijFWG+/GnnZIk=;
	h=To:Subject:From:Message-Id:Date; b=aGD3fYXeykwG7cOO1FkBqqI6sCTsU2eq+Xpiap6vN8eJIEPuKXOVMQlM4VgshrNplB9xteHXqOHCGu+ibDkBZhsNRmiOia9X3+Lljf0HCivgltdcop54tH7JO7s7qyaxaCqQnZFnUvC5cLOY/pHV6sF1EyYiCAe1UP71C7a4KT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvTMSnTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvTMSnTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF132C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744837793;
	bh=Sx7Sd8firWJmKqiC2Fve3HT2DJcntXijFWG+/GnnZIk=;
	h=To:Subject:From:Date:From;
	b=rvTMSnTRR0rJU2TAa7hl7mk5//zG0x3xKk2HzslowfnbmzZnlIecHf10z8eNJr84s
	 /adCD/33CQnQUoE13U443kqodzoAuvkmPYIeZHWYt9/5ZZarwl9zRyAHMQmEoIR6qr
	 BNPpCiOGbPYbeVnekQ19rrEgWrSyZty7pjL01qJn9kdgOcumyMsQfKwwt2EzwyoWvq
	 W8Tfo/7psGEseXKKRVEAFyX3lRsAhFqeCbfIRrZWzrBMI78TjMeVEU2NxpmPrRyCeh
	 jJkUEQoCroM/SviTv7gMxx7FbX/jb2FdCv5YzBR84G8DY3SSTrCWq+5NgAq/RTKLil
	 C4QnDPfPry6Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98981C369CA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483779361.1813.6706271726374207471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a819c600b8c80d72fea08d1f1db1ae1a7e382f3f398cbe8f591747ad7f3aa3
Date: Wed, 16 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744837793
