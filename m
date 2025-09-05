Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB96E552
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757112594; cv=none; b=YBKLs4JQy3vmDX6BEkg7m9Hyl844OFkpbA6+auFgUkkxGjrZD+6jWuqI9v2NoCT9q6UgjZxI9npamjDQa4m+mVCaYvrL2KD+Ey19zlmh++g8qFukDfLUA3cBblmL8KBEsBeb6Ppc/czQgoER7zw2sAWezp3kAGBzGBSVPJwITBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757112594; c=relaxed/simple;
	bh=bg/JJhE1MKMOFI8ATBv6j+jmJx79RNKRMr7Sn7+dkts=;
	h=To:Subject:From:Message-Id:Date; b=hoxBnQbiDaagvUB0skXelz9PdBPHyIBrollIX2io3a7awXeQENxcOtOF22mFT3awnWgv6MkxZ1la+ekFQnt8SHr7n7HCIgf45EysdmIErAmt8s8/it7/ZMn/kxmKBWWDqSDGLnPpBR6RpkHZWSTu6HI1dR+pdoMBvtTnrc2OIpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oarz37yL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oarz37yL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7639C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757112593;
	bh=bg/JJhE1MKMOFI8ATBv6j+jmJx79RNKRMr7Sn7+dkts=;
	h=To:Subject:From:Date:From;
	b=oarz37yLfWGbYxS8xFbS4Dddqnv1NNukzID2orn369BqznQjJDVFhejNmmIJbSg7m
	 uIzuN6rBRXSfqvuVGbywzj9jpWOQAGOUpTenbAYAakOYeVoFi/0kkMvpJQ/uWn4r04
	 QVVxFe7S4c8NSZhFutJaBlxpDdlAiF3MvnksUJ7ky2GJJtnx5OuL4V7X3YrM69hucS
	 ivcAxNEAtlnsx5wHz7iSQnUqzSV5ecAi8b4S4VHIW6LZdrjKCNDWVzFmvLYwUyTW1C
	 nWit/v+R2tng4ACtc66j/1zwwpyVDm5XBcO6jv89tL6lANhqlkoz7RKutSC+Qtj+cp
	 hHzJ/RG/wdJmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95501CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711259357.21096.10671838575819161769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5cf380b2c4316705463c7f035c55b25ff672e9bcd095d01277a0d90d3cbb5cc
Date: Fri, 05 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757112593
