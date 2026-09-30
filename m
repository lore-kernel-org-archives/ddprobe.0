Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FF738F249
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790749234; cv=none; b=Ma9Rqfo8UU/IImSqk8CBnoNr4jQmzmh5UvbyM0jOWJHcaiWdfcAXK3YjRKyLujx2ZCb3Er4rBEQQRLp+oX4JYlydUjWjPmUxPnZw0gc0Sm+zd1/MlSO09h94y1OLxNoeLSFMTtW9w4CpVBLo+hGk1Jk+fkf7slB+AwPj+OSfnb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790749234; c=relaxed/simple;
	bh=g0Kfb4RHVi9w2yg37uBb0RXz79Y9lOe+CVCNbNZWLfU=;
	h=To:Subject:From:Message-Id:Date; b=RTrgz2Tl+fk0lJdiU/IuZ2XedLU8KIrdgPWhoExLmE5c8oyptyTf2M8IZ7V8KBKoQCpQHLUb9x6A0lsDyQ9gcB/A8VrJPIbJt4X9a0ioyR+DJltyO9LEw2XYEDdwo+oSHNFTbbxQ/AuxsauDW1r7lbCNzdr4q9cDY+OsyiwIdiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrwWqAlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrwWqAlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF95C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790749233;
	bh=g0Kfb4RHVi9w2yg37uBb0RXz79Y9lOe+CVCNbNZWLfU=;
	h=To:Subject:From:Date:From;
	b=mrwWqAlkOkm/QLGFqrF/x9fjgQFKHxRnDupUwKbxU373rOC2SgAsEuCQbg2uI7D68
	 UCvVrXuPyuWleSg8RM3ufePhHKRpSqgPId09hLVEV/8YWtZsZVryYvbmN2mAwDZZqR
	 oxhZsCoiSkwzN/T9mUSqv5z5RqgXUAND+i7y8OIMeSKtvmCuCiwykMvDGriUAd49El
	 tnZ/iGLls74lfert4KZxvVAdtD/2zFA8gbS8rEJHmSjc00dZRn1vQwRFbIqyh4Mskz
	 kp5tdxbttq2il1Z739Rq07eWm7FyPba38uMDiQRjVidcyqEQux3mduBIRQAgaf/Crv
	 j681eMtfKbZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99DCC9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074923368.15470.1200655927766424342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9335fb3cc5dd21bc35f9b8ff1d6cd0a1fa0f8a2a77f001bd1894c6bf25cbe798
Date: Wed, 30 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790749233
