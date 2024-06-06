Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B48D4594A
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717711043; cv=none; b=X4fZLYi2Y7MYHa6uJb9XnU4Kh/rsw0Hiu3Lc5bJ3UmfE5lHjID2VhlEMAwAubzGjBUwQyaA6qBLnJ5qUB5rvQ1Zkb+6aWLLutasefwUeBVg7bz5AiuR2DcExpTkT3Y8VXXOkDEfopgZf9qtL4tCmm30H3JlhNxm2jIF1jtwECfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717711043; c=relaxed/simple;
	bh=m6MyKuW1kVzcnRQlkJe0kfLmcIQoz7vQCkq0+pAUraE=;
	h=To:Subject:From:Message-Id:Date; b=EJaOHZDTFg7rYpuzJrzZC6O5+9lbLQpaOFmF1pnxPyn//Jk5cPMGk+e1O/bZeuygR9vIjtDm78X2FQoQzArLYEHPmorA0VVV4Bif3XIJNb5TprWQnnnehUdlW6fMAQvizoWdIfPIS4QkdlhrxDP1Gs375fsbxFgXUhuJ9Fw0tvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KElG05Hx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KElG05Hx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E060FC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717711042;
	bh=m6MyKuW1kVzcnRQlkJe0kfLmcIQoz7vQCkq0+pAUraE=;
	h=To:Subject:From:Date:From;
	b=KElG05Hxnip6Lb79ZSr8zSltqxww9pr5ekuarYyKomoJmnJyzNMrEc8ASsQjlN7FW
	 0tVNk+6EM5uTkBo+w2ItuZnLdlTnb18vSLWedolRMkk0HkPdd82O8/Ha7WR/CvWjcK
	 pCqnO1G2a/PSY7I9D0POinzWg9jHPIxsG/5PVifcoAfZaYTGrzoiHf6aAuJa4QaWQZ
	 Vdc1qNgN2WAKpEzSZvzQBdqBSUxqe5Q9qFDBW2nRLg3ZuI3eqQJIZ4sN9SolIbu8H0
	 rMbp8JEIrlcBXRUZaLjD67NprWgm5/FdAQTaowyx/LRspGtwbdtRUh4HCKdJogdXLu
	 4DPPzrGR5T1XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB268C27C6D
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771104281.3382.11635208552019970411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e226a504d7ceb47faffd9ae92be3393472c18a8b3984670773017c0eadaf2c
Date: Thu, 06 Jun 2024 21:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717711042
