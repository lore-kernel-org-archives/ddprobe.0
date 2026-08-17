Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5912B44C505
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786988434; cv=none; b=XecLVIVnfUBW4cukOG571D6ahQ/DzxlTweyRin/GkKU1bJc/xhRvstWzSCZShWAW6ggTtCDqDRM3TifhsII9klCChxjfdIuqjeVnvbYE4qfZufcnwvdDOgaqRBDI/13Leub94Lwe0BpqwTWl090iH33X/Md9Ty9IO0YUAEILEvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786988434; c=relaxed/simple;
	bh=e/dakRgwOFp1HajcnU7dJjqN/7GEJG3y+AZnH8srGNg=;
	h=To:Subject:From:Message-Id:Date; b=DKZoSNXUMKqYAZgF1ee0ySi2K25O4HehwGZhcZYKLlrOwHIMjWQT+EFmU2lDy+sQLialVjGH0fJF3EKinr0i5PW3DP7Z6H9jOijgJCX0ahHFcz9DcXdlbFaCImXIn7Q4pFm3ZPUo3SOVJsI2nmiy0bYAVVFqtfnT/RoJdCtz4Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qgxp5spA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qgxp5spA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9AB2C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786988433;
	bh=e/dakRgwOFp1HajcnU7dJjqN/7GEJG3y+AZnH8srGNg=;
	h=To:Subject:From:Date:From;
	b=Qgxp5spApHH0mwpUWc4N2hcpYcQga4UceY1rYxeBZpK+EMBI6EBqolAanGu2cx29y
	 d1sjZHZpIWhsC6tbBzBLAM+5TIsRBC8OFMnb24wMgX2wd32xnzEYvRlhXcKIoy3mBX
	 cRw0H0DAXxgj/Z2AszV65i0QWuJA5Ptb8WPJhtmHrRTdKWzwP0kZozS2y1/hKtOqm6
	 ctwJZsibQxy8geSOZ+NMNDjKSklzWrKIlJCv+gFJn5CMMW26ricFaIe7VHoN3+l8ws
	 GJcSF7nRIEVMDcUJIrzRiBvmuvQcxxl53Rc7WZqyuBTaCvSSFx1KJHr/WLPqFQUpZE
	 F4uX1m2LRv1Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB8DC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698843374.22169.3828872973838809033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa7ae259c2a2a3fc3f312a5708689c5237e88f15000f0853bf92ce2d71fa45d
Date: Mon, 17 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786988433
