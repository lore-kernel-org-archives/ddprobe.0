Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245BA1BC086
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732138554; cv=none; b=kn781woiSTjbcWYxke0GCbu41qaO0gOUXyZ8FoxqIcsN7fZXWs0v8juApL50fNgcAackxq4NvwBVKluFoIcTfQ25ZJC5zUFKn7UgXUhW3aavzG8NdbWlcd/tHgI6vPklhEXt66ZwijiuNOcaWJ/Yy/7ei5ff0kqHzhgCQu82VJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732138554; c=relaxed/simple;
	bh=oqHcJG//+vIzxAhG7G6/PkS2uHqOK5dsvwQSrmbdEYU=;
	h=To:Subject:From:Message-Id:Date; b=n0Tbws7+2nmpqkag2/MYWdyh21EbTuRIU+PYRslOJDaG0Dj9IfKCppW0HAnSVyYV8XH5XV0mRv914iBHkEJJFHYxwWDtAgC2gtx4c+/+/SO+uZsrpMdgIUUunc/pbtUEKvsGbCeOdw5IEgvcT27U8criHRnliSbbcY5vbdTv1qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A94vnpF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A94vnpF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB9DC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732138553;
	bh=oqHcJG//+vIzxAhG7G6/PkS2uHqOK5dsvwQSrmbdEYU=;
	h=To:Subject:From:Date:From;
	b=A94vnpF2exxITyNEJKnoSgvuV7oJeJLcomZYxk7mE8qdnxjCG7ctvwKwhPUaypt65
	 EwILyw1PBjNz0K+Jdmm4iFlf1/1gPq2h4PnwdeGCnHjptSge23mfIGsUePJYssXOot
	 BD7GZxq79M88MvYZlqsQooMXmVji8doDxmX20DziW+2WPSpk47wWC17DwhxPTYK+Cm
	 GmJEnzPwgcw16ha/4F1R05RlO9Gx+Bcsie3cEero2a7N5aJ5wARTfp4Iz16XrrvPzn
	 eVo6ibPbPy4vPVX9y3v2UAdbxkPYSMaMxu29EFX//Co7RtjMcAWPaU/tgy2DO2Wb92
	 bLVsD57ANFliw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E04D743DA
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213855361.1820.16404699655752749787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf85c4dd00b4539021cabdff78247c8da0ca49763066e133f54d083fb5c9488
Date: Wed, 20 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732138553
