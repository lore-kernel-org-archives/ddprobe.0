Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1382C08D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786318234; cv=none; b=t5DXN6jmLFJHF0JQCHbS3WupGM8Ho3DFOJAavpzV0wRw9MW+u9z+OCIp9Gj7UBGLhgNgTA6TfqPNTbozkyRRmJIuCX66frkZi5tcgEOFiOjW3oGc7elFfK5FHBBW7QaG7cBjjxeyFsfpma00CXItu0gYPjsIRJqK0M1JxV3NccY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786318234; c=relaxed/simple;
	bh=1JlAoYUk4zLbrXqgT/byuiwUzGqsEQs13CLmF1nmH6g=;
	h=To:Subject:From:Message-Id:Date; b=FJoJcPdErmXnEDE6tbMPRWWbnZGEUdxH7YBJ0OHfg7O4VDWvgKTvEtIp6AbF2XJ+z3oDuRvWKUI6uqMKtTcCZxqk1O8CKkDQbWB1jRRLEFTgPyEJNjymEw/066POAlEAWQWdejhUUOUQqoJZt1Hy+K0fIIVVAeZ0XWs0QgCgTiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fsh9dQp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fsh9dQp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9609C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786318233;
	bh=1JlAoYUk4zLbrXqgT/byuiwUzGqsEQs13CLmF1nmH6g=;
	h=To:Subject:From:Date:From;
	b=Fsh9dQp6Bbld2B2Ep3Zde+7XB18OUxgc1Ih1pzrX3Xx/Ck58dkYAFLlH68BGAN0CK
	 cjBE2tDOVoA+tDFBu21JzU0Q9/YmRuuHLyjej2WhuXdjZJBt+0zzOfbwk3q7Xi31QO
	 7/uXOjUTEX6Rgfn/UIHYBeMpSjYdnmqA71wl2lNdGrZwvcXJqwxFc2xyEt4zl1F16q
	 cm1uJxVaHGNS1QNBxz6LHPsE/rwGDtA9is6AlL5cAE7Oz3htekvdPHaY4BnLhnwzP5
	 oOP6JHr3IrYkuNkLmKFNkpof9jE+uuGvqpPaJlU8/EaFfwSsxOhgaMP74Li7IpXNIm
	 brGFc39gRXlGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3318C5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631823372.28222.1783913143717900891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bdcbda88fe64e52eb604b5dc531180b5ad5e505d55e88288274aff9863ad56
Date: Sun, 09 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786318233
