Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CD11A2C27
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746875994; cv=none; b=XR1pOfmrFMdCgUHAwBG5qMSL1K+mVbKDH420/q5I1wS79WOQ/ydeXp9JVbRRhXQ5i9inkK/8HmGLznhg+Paczt6qYVg2bXBZpfsCJ+oZrpGmXb6CjMzfMPNcHrsVGFOpogomBX9pfrHvqcLUQGQXqWgQ3tDssgxckFzCvjVC3cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746875994; c=relaxed/simple;
	bh=ac9wJxZWNUybLxt66tXDfqjLnbh/8Ebno+rQpJ+HPoE=;
	h=To:Subject:From:Message-Id:Date; b=RNiagbvYOFMzXfKljr3BTyyZHS8Qid/+PYSwyfqa9/jzJabPhtPyooKoF+BP55ccGbww/Gr/ETCmnXNdPy+YeLXIz6Rjiu3Ad+FvujIh75zUVheuWfSA/2vdFrReX0vKmkJOLVkZlpack3Qfw4q6mjE1/UmbegJNeb5bYDlK7ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fn6/Q1oA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fn6/Q1oA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA6DC4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746875993;
	bh=ac9wJxZWNUybLxt66tXDfqjLnbh/8Ebno+rQpJ+HPoE=;
	h=To:Subject:From:Date:From;
	b=fn6/Q1oAbDiNfqjBMumcBeHYrUWQ/oXvtP+bIi5EdhF/sw2eytOp5kgVLmY72xte9
	 1c+9Fo8iTOVNQ7s3Wb5OYKjRu8E9iszOR4EVYnzRSc0pLWtzlxfXkd75RAWyLcgMGw
	 FgXX37hVNNXHtiM7JXkZ0FsM7/0okt83rll8Lg5NH7pX1Wao0+5VL6HDAGiiWce2mc
	 f8J6sB5RiXv9rY+300nfmuV0dI5maImw9j4BfOuQORx6Y1ZAPPJ0N2dwYRsW/Hwx0x
	 8iiamgFlwCEtrktIsYfztP2Yt56NeoPV2g9isGyQxsQpGp+oCux40NkQ/xpyYGvWra
	 wdxayMKYpvGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D06C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687599357.16516.4624980317822743028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2ba9b724029ccb821b18623b636fa26290a17647e9ad023c8eb47f02dcf082
Date: Sat, 10 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746875993
