Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2091C198A32
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732533954; cv=none; b=Bqthp3gLpbEtk3j3w7I2UZp3MC5ENx1pZQ3rJsnAqHvCkwjT27fBYTLFy1m4t+sx99kJrClmKmXWJi4HZLSXputsKvl9iXb4Jy0VlZS53BmlCOUGJcdFKg9FaglI3DS0ecPa8PPJeVFAn14NkUZSrYrjRSr9uWrzAClATPW5dCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732533954; c=relaxed/simple;
	bh=G02t0FlB7R/IgBugvkl50DEW4q76rDsvpjU/oNxzd5g=;
	h=To:Subject:From:Message-Id:Date; b=OFFlk6Z/ovQB4pQ6Oo5muXIT/Qg4Q/XtaLN6LQQ20nRpqqtWuXjAv0TfT3Dx7KN+NFiQQPyV/NNm8J0VjZfGGhl66XPRn2QuiNZjmF6jj2v5fypk1C+4Q0UTqbaQLSLzn5b9cmgq3wldGlc4GOzIyI7LKY5VfRUJDJjuCXz3nAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLOpKo9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLOpKo9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A860AC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732533953;
	bh=G02t0FlB7R/IgBugvkl50DEW4q76rDsvpjU/oNxzd5g=;
	h=To:Subject:From:Date:From;
	b=HLOpKo9SbNyD+QJ6wu5AN5jmuyBbDQlSBaWJfrJDjTXhopG25wIy/qIeyVTnfCoxu
	 JZ0ICGYvoPgIn3LfvPqqi84k1G7QAaSzTFNLwIwK0cJA5fEI5Htxo5JHirAIVJUIca
	 jWYd9o7j7/uLPczVA4PClFcofxxvv61tY3zA1YvbJ8ZjakYlHRNqwnmRKMPhHVWxKi
	 xvCnorJ8BBeExM8FFb0knIO5HoIKm1L9wVOntc01p2QkLmOKEEAgX9D/BoNlGFjpHt
	 jISsGmJ/bUY7iILBgsPD/VYh0MNJEF6dJumkkUEGWyOFFRb5asdAS04ZGPgvZqVhDT
	 X+FCTCSKZ+K6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9409CD58067
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173253395359.28049.10418352667410647634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f6e7c56eca18aac9ad1bf807fa92460ca46d687e71808cc2763f4a8490e026
Date: Mon, 25 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732533953
