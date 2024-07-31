Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E9F2581
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722387954; cv=none; b=DlfYjhE3As4ZAOwlkiw9w3URlcfO9croJQSkgCGUlZRTmHkjqPkcy8ORIRK/KDJSgAKFCy12+iLwNbjtZyheQzApLITnwk2LFwV1miBnUGcijtDpFYFmIw5V3oH7OHzC/D3gCwvvBF30U+f0+xFYaYuZwo76v+tpEf3tDi1xtO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722387954; c=relaxed/simple;
	bh=mWUlfmZFLvz3ygl7AqVD4PjF4f+bw9iwFpeOB5ihY+4=;
	h=To:Subject:From:Message-Id:Date; b=D7RghEPh5OE3ATD041WK1ZRCbAB6oW0usXwSw+N1VyYzOtGLnMt3AaOArBUWWhjsDt2d8odstTQ1Dm4OfKijzwE1WtjmGTbvGc2I1pC0QchT081CBFgekr25FL76IItPGJJKBLc5a7/tcHVR+cwESpma3aaMc24ij+yPAX/d/X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXxleAtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXxleAtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37D9C32782
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722387953;
	bh=mWUlfmZFLvz3ygl7AqVD4PjF4f+bw9iwFpeOB5ihY+4=;
	h=To:Subject:From:Date:From;
	b=OXxleAtxSXcmmo8Yqfx2Ct+mAl5imU6VYYZoZjuXyFsv/mqqlPd5hXoG9f2mlol3I
	 g5a5Tp7jzUuDth16SKa2Kza5NKC6NXFKYePkg3lg6BxwNd9p7/aRXEaQI3LRPA534C
	 JMfQPLWtJQXUxWR7IrYpsV3zClCaSzZHqCQ67oSRjmfbWiQn1w0mJZ+lbmOo1D9K3G
	 f+eF3PkNfZ24IGEmotN7qaDzPq5dHtFyOTaHegCyER7N4le3gi1r5tcUDj7N58gbDZ
	 rN36equFHIZI2yf6mBSD9fxuYakCUb/9idBx3HcTcjkTUdHa07n/71E4WZwlTWwCOQ
	 FtKi3RObuYsQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADDC3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172238795358.6936.11681022826162446854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c517fefc1d1685ec3c0b4552eef77010c4ade095f3521e389d190cba7b3a9726
Date: Wed, 31 Jul 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722387953
