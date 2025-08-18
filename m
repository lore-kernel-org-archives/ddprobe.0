Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A9C286D70
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755503395; cv=none; b=T/0C970+soYW9av8LGL1M/WcF/gMY16yWeZ9nU1Z7NQBPx0/mImRCeT2hFS1EsPcXgckPM73LxycctJHPjz4ilO9f5Yu/bLGZEJeOBJIAvbu2FpoIR2EBFHwB6Ia7hzsxe9VxGsK1CekZFtQU/mOcZFEb85w4moIOgOA8O/ktN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755503395; c=relaxed/simple;
	bh=Os0DV/I6obiUZnJMTUggVQ2NznMcgBWqjWX4YWh/YEA=;
	h=To:Subject:From:Message-Id:Date; b=cAQvKi4w0LPQQ1RMADKQXoVar8SD9BbtMc3agJcT3Nyb/o8fe9OGPRCA+OO04r+4Re8R3NesWrTLZ7TlQSs/U1CTXU6MUQ0kxypVMgQ8aguumz+psQwqNq3VV5k20e9Dkrukzh5EBDGvF8hcXFNS5CWgbKzRjgVcEbmyMu6soKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXrj4h+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXrj4h+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9ABC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755503393;
	bh=Os0DV/I6obiUZnJMTUggVQ2NznMcgBWqjWX4YWh/YEA=;
	h=To:Subject:From:Date:From;
	b=JXrj4h+oHBWiHwhKO6xMG7JQhzAwvPtPej7YAc925S+4eIGy9bT4HSOajiW0Jf7Wj
	 ISj/ezHun1BmlZVgxodS/g/nMNhtdxb2AgQHnHh8gP46s7BBhd9HAQaGE0Bmg8OOr+
	 SmsdzuZRMNmdIJyG0DNwJmYRLcb8rPc+up2QUxG6SGe9dkfhLrYIrQvaR54JLQAHPb
	 sSZZgJHMiRnH4q6Ono9ZouB0qltj12Glb0jP4iu21VD70QSkaCcDBOzvsyQbKfiblf
	 zm6GWiTUD6WBimwlqb0oC3Q15xfRQnkR1kkMKzrxsvP64Qo/+dMe+aY+yj52lzzuxJ
	 GDgh76o+GrOGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5A7CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550339362.22152.3151250351472069333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7fa7e88a78852d564a008c9cb199f4a1e25e278ec3b781073a9859966e2394
Date: Mon, 18 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755503393
