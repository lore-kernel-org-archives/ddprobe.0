Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9691F03D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739264875; cv=none; b=iTNtzLHJ531Y3fIz94wYTjJbtjYEJ3djoBbCTrAZ2d/Go1FL6CFYBOMI8h538uV634D7tJNne8KRs4xzs1s0OfGihGf9Me6L/2o7u4kK4q278toHbwZM2+YjRjaLVsjoqeBO4mhX+lSyEjC8P7N6DMXnZOTM/nG/xrnRnBNDcq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739264875; c=relaxed/simple;
	bh=teOzrCg0tCTrHQwW1EJ0hLMuspSz7RltVWWtmu7MYDE=;
	h=To:Subject:From:Message-Id:Date; b=mWm4LrfurgqZul86FgKn1pKMxKuPxFBpOab7RruddYVgK4Aqnc+YraSdDV4xnt71IvYd3siMXilCrsM80UBtz+PHceSUv203eYCkrhWAbi8WiUk6wnsFEW8rA3eq1SIYg9HQtiFptzDCXJgXA2IyzavEcOezOUTW+K7eznU/RkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+DjIZtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+DjIZtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB3EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739264875;
	bh=teOzrCg0tCTrHQwW1EJ0hLMuspSz7RltVWWtmu7MYDE=;
	h=To:Subject:From:Date:From;
	b=D+DjIZtLwuJzSgN3joE4LbnmM5UJec/BqOXL9T0s4iEFiNUo+zX+FFs23UKhFNjPD
	 H0qw6FtDE4bqsbxJgs+AMdtkxPR2trx3Hhukkg7lejTe/vVGs3jaeEXRObvC6LjpN9
	 UQ2zkJSe0gpa5LECUgF2Spp4mbfatZEH562yO2kzxu5gd/1SrW0yhwgyfcWtWlvgMS
	 Z2eFRP1ISBeejJM+eT44Qn4Ech3m0FqVvDB/oqjyGE3MXlYkVAx2cpbNgFn/Iuyh7J
	 OM9AF6uroK68g5smbfMHEJ+GClGFimKK1ofZkGzY8cnnPfkwGlMkKy+1vTJ/EXerS0
	 99R4gft6sytGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C440C0219D
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:07:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173926487429.2795.7845812505114925557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8de59476a063c888748cadf1ffbff3ad5f35d09fbb4c4204042ca363acdf5a
Date: Tue, 11 Feb 2025 09:07:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739264874
