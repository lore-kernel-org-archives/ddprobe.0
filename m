Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A97E57D
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739094354; cv=none; b=ExHKkj7WgE59Te26ElRL9ZslZvFmb4i0Gv0IUyv4pySq8B+MPf1nD2F16M9hSfy1ChiSOutzUzlqfXGOJWhO0v/oRU2Xx6tO9wjAvbk0JXxd7Sd1nUPLUeLbyERafc++YtLvQTe6OA/oVI8N2DZ2YuFtGwHmBhfGuVyac6ySLvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739094354; c=relaxed/simple;
	bh=MJ5q1Kdt3PH6tDYXHwGkpDfN3HP8y2kjKasTbTs2z8I=;
	h=To:Subject:From:Message-Id:Date; b=Slj2YMA0p3taD4UnqgfoBAzlRPnfHJcmxi/ERVy+9ZPKU8K7ydcN0y9CQn1Qrq7qsg4wbwHepS8wE4JRAYamT0mgFLgN2IRViuVvnoz+q5fueK9xfsoy6ZP0YCBOtXzqIQeAdys6WiO4qDVkUT47TnDSymcfvy2gN+kHBtOxTfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHte71KY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHte71KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F00C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739094353;
	bh=MJ5q1Kdt3PH6tDYXHwGkpDfN3HP8y2kjKasTbTs2z8I=;
	h=To:Subject:From:Date:From;
	b=fHte71KYHX859kwaF0n7mqmMdNabspcRSf8QdWTaqrznWVox3QGk8LYyZDRLQYFsj
	 wGyNcZEmH6+WRQPkGXiEWSIdsbIHRyotJ/G9h1x1N4IDJxDwfv5s2uxw/FvsI+U9Ic
	 85M4CvdYA6xybSJeg5PURiHQTUg84i3gi8KJN1peBU8VL8RV1OrWmtpH5oV6GD5Q3P
	 7hxtDntYmmxaM2F7CBKRs1MG0hXCjz6bFgAqfvTJGcGZxhM9B83oHvSRxaoWiKN0Nj
	 IC/+56IJWxIXfjwMg6LrqKSDjt/J/Zn27WpSblHG/Po4bt9G0vjdzLnHGzDE6ShhAu
	 Dts07tnHLyFmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2897C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173909435363.6344.10557527743504017689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e55daaca5ebcdd7eeab3fbfd2c0f8e333ea6ab9084efe4ba6ded70d9ae60d602
Date: Sun, 09 Feb 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739094353
