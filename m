Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD88185935
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734980754; cv=none; b=ZXxE6pLjKgDVqEw0dmDWbgHbkJaK+32v853JLzgky0HCNDXj0yy/7cATIVsSa2FoAXrEmJbcj6k3GVLiBLFhIa3SKZf0oTnAkdPm8+BgQcODyLG2/3q9dUn3H7fqNuVNOctevdkygQuQAV0rSeU+5PFuNGy58m///R8pXACOm+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734980754; c=relaxed/simple;
	bh=Zjawoh70QYmsYmE7J4K2jWSgfbQi4IZ+fwq8r4UeTGA=;
	h=To:Subject:From:Message-Id:Date; b=usVM81qRAgRO6ViKpRqP5rVDPHItXv3kLJQ34vH8kyYkxvEvAb2E67rr7yO7ySQHLk2TB7oemLAuvCwKUkn2NXMxFr/JRyD9CGOzAb3Gv2jnAeUNsZaPKPhlLzE7sikEV3Ho9WCidkf2gtvFHPnWsn8NmshaSFHw6uFDhNIfeUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLwtFYd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLwtFYd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56D5C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734980753;
	bh=Zjawoh70QYmsYmE7J4K2jWSgfbQi4IZ+fwq8r4UeTGA=;
	h=To:Subject:From:Date:From;
	b=SLwtFYd91sMlkFt2GmGGKWBkvt6LtNBkaVLn6wCqk350qRCLVQhi53xS8rMaQnSI2
	 BCtbl0u4G6B5jDqh12PWcBF3QpFU+EX1Qfht5AMex5NWorj1hL8lnpfn0Uc925FQQQ
	 sOjWsRxQLLxsgUE7EcHoXu0A1hyZncb/K8h5iNUUju3t5yuKeqI0OVcYflJthiRVKI
	 yPbdxDCQIb8yzXqmXE2jUvHbTICvI+wq3UAAVFTZTxZFKQCTidfj2RZDgyYrqsWhRK
	 iQsVPlNgz3kqIT2V7nD0RD8O0Z9Ip+BOvvl+t0Q1Q3CPZM2S5oYTwxNY+Mn2oE0fzj
	 iJJjVRpPBbhTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948FFE7718D
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173498075360.7038.12510958228803661594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7a7a0a4a4f565300180c3d6e38a9f7499206111ced05543a5431fcb7c4e0b9
Date: Mon, 23 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734980753
