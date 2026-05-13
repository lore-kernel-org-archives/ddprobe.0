Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2782612D21B
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778648434; cv=none; b=Jyo5GYUpX9kmw9FWgvDxonj9kh8Np/0Q8kOWnha2Iir0kwKWWGuIeI23SVBCeQN2NDNjY1U8fbT0jeQWbkto6su3NWW9Mi+b1tQd0CsPMW0W7FlKgBQ9Ju5NbEMyW8fh8sSFk2jD44w4NQOGlFdOnXzz/eP6Gd1VzOMLnzSe6uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778648434; c=relaxed/simple;
	bh=DFgBFPVShqdnOsPO9pJn1SRyLSxT4ePPzRt6IwC2ei8=;
	h=To:Subject:From:Message-Id:Date; b=XfDx9LLMLp5uNyEMqSImMTYkzX7YMz08OPoUBaigx5Vh4WXvPdwXCgU3RUUBkI7yQFc+dROn7LwmUvs0X4BtTTwGxfDXgLw89qbFAR79dhXN6IoDiGxpIsJyFFxlGHYf3mhxDK8dZAEf459mO+mGGnZIHq2rrv9lvOOyzkHibfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFeNoIGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFeNoIGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA89C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778648433;
	bh=DFgBFPVShqdnOsPO9pJn1SRyLSxT4ePPzRt6IwC2ei8=;
	h=To:Subject:From:Date:From;
	b=UFeNoIGc2nOdq/07OOsWp1WNRhHRUuRhjPjbVWKArBH/+Z67v5IbS7ZTCg2xhbqGd
	 agyElqfTOYMSq5BKmREwx2agx+i4+yHhnUCv0AwuyiLs5woSM98lsN0cFDG6pdttsB
	 hcyr2wGPqkUmKcPt8LafgwMnIJE6Ughn/XviG9W/11H2zyaVmbELTeWS/9b26OucOj
	 sc5GLNrTu57xLif+kwBD5KJMV7MkI4HwK1OGpUUKGbaLOwpI+gb/hoHK86wKs5/LT/
	 ce23PjBpYleuQml8TZKjXHKCiunSE0LroHnp2JvNhPEyzGuupsB8uoLWG8J4CylZ/I
	 HUcAHot7mu7hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE48FCD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864843369.7436.13495328199769599588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878a0b6dc41d01a1bac3cdbb487d9b56a1f580b597c73d40872912db584cd65b
Date: Wed, 13 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778648433
