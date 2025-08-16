Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1343913AF2
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755305394; cv=none; b=TfiFCZQnKmnjDPhqM2Nk16RoeOfxtO96PJ7ckJ8cPWcSEN+f4L9LDFpyiqQq2fec+Hph2qHm90/eO6R/9X1w3lnppNirYJX5W4U1xaeK2z83c6J/LU4sLmH363a0DhUIJYzfzOV/FDGKzFS/XdVN17bWryIN2LKrUbGtSRe3QTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755305394; c=relaxed/simple;
	bh=GXrvewyIbjiQJwqE92wMT4NHZMd++ukM6DCeegedDiY=;
	h=To:Subject:From:Message-Id:Date; b=NPv7Vic4nuyqFkER/SH+/VnUHQm6BXYdJP1/rTea1ku5a4S0tobtlJv6YpH1Kexk/oLVvbingdswgIFGdAun2JLqZrRCJfdABOfRcif32VRvYoj7YiyMMCOOFov3ScX3v0x4tP1ltd8l37Z+uWlHJJsdl+vnu6S1btaS++Gt4SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUxN9xkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUxN9xkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE85C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755305393;
	bh=GXrvewyIbjiQJwqE92wMT4NHZMd++ukM6DCeegedDiY=;
	h=To:Subject:From:Date:From;
	b=YUxN9xkXa7W7Dn8DH7N3rKHu0rDMLXJ++jqvAoH3Fc8FjiNQu4tFD8+ugXZLxkiFQ
	 Bt/0Bai1gN2l9flI7kS+IiuFW45mTpwM5nibHm9s6P5DYj4nOf2PHKlCPwJx5TzM1v
	 ColHaomOC4LhnFP4cvpl2BSl5FsG/pplwB4S1coEgE3lmgykv13DM9nC4LM5LB8Gv7
	 2USDV2mzG8MHHUCgnopD0OwauGn8HwFdfsWGeIqaAcXGZzQSyd3ZZ8cJgQtooicFVF
	 IlqpZKZRqcw9JaezzsJ2ikk3X8hVI2ch4sWx6oxOro2K4K/VjefQnGOBgyIgxb1Jub
	 jWzu46Y7NPvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0C2CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530539357.19822.13362067313630599894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d647d4112a56b5cfccfc1b99e5e80862a0f40b82064502386749804ccb3b5d4f
Date: Sat, 16 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755305393
