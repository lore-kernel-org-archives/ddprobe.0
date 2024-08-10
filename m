Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4D1182D8
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723289754; cv=none; b=WbI1uLCP8XpGZ9QIs4eOeoRRxS6gBOiEkjLIiYOfDxpm4Wx/FA3R0bj9ZkiWTdxTrftEnM02boDwDnsUCwtQVk7kefZG95BVk1K2jr5HfkQNQ7J5U462uxKeulIBNT4J0zA4eRKhq+wOn3kR5mTb/b0MKrtJavbrRBlun9o8aD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723289754; c=relaxed/simple;
	bh=vB9HjwJzv6hzEFGFd9izuoIy2fBuytj0Z0gEiq6vkR8=;
	h=To:Subject:From:Message-Id:Date; b=ujRDA7c2/ko/7lHZkXiOnLxDYXs2P7af37zR07NKONSk07QJzBSV1lllP/Y3qkzGD9e+Rj4c/uvllN13+RItHXjOc+weUL15NJc/N16zlxqkGRKa/wjmJS+9HbLRj9sua95lqHm44+2PdA7X/p75PvtVy6Q55rUHov62UbfOrtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RALN6Zwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RALN6Zwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7687C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723289753;
	bh=vB9HjwJzv6hzEFGFd9izuoIy2fBuytj0Z0gEiq6vkR8=;
	h=To:Subject:From:Date:From;
	b=RALN6ZwxHANA9Ywem+BmqL1ODX66xCEGPwsGGuuDoW0J6JxYJsZ8wvzZJXAkwHPts
	 q7hOAGf/ve/mwWeMmessu4SxV/swCxWCE7ct29fsGX3rzhMx7SbJmptYUXZVk4kOki
	 VtsJv8WD2R7s8XwWI2YYeTM7D/V6R5QNPGIEfq0amriqi7rhmHq8jehvH1JZ/zW03o
	 6eItZgqrRHizQSar+KtrdbLaAmNbja4DAQs5RLArRiwfL/4wk1KM61Ra18wlR5Ttmt
	 2YzedkJidvwYdQvy20r07yGxx3V8Nwq0szqydYxpUnPm1Mpsg9V6wTkLwZK4YJSNtp
	 GOVEFMYQuP/iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9899EC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172328975361.9391.17781086728973505306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e434e4d1a30e8885d9491128fa7d733049c599e13068a302a8a93ca998be3b4b
Date: Sat, 10 Aug 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723289753
