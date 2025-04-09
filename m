Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343F120297C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231795; cv=none; b=bgFUSucL8kcBz7sum/W+h7UZK5sEM4ZQGyrYanF2a3C0SlC9XcPBFaNgTyWedN4dsE4Y1YUCpcUWTxxZIyUVr45yeAOCyrlJaIkNbWZLVSdi6YdT3uwtYoYeAH5Q5i48d7UbFqisom3AAwBI6+sYbZ+t/1h/0gAW8Ga2K2CdV7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231795; c=relaxed/simple;
	bh=Lo/eETWYLLecuMO3XsGaTNu6/jKa2/vndM+bw2+6QWU=;
	h=To:Subject:From:Message-Id:Date; b=D/4sMhKZwjGwiMsRbSqfL/JS2T8se1F47D9bl5SlEN2t6TnK7tUAtR/UMHrTurgQTGu/5OkHxHpMaddqiyXkhE/dv4e+Che7ysClH/CvClJg+52/FfnuFRN5txYpgIxecw6aK1pi35dcR/KlAWSV5NZ81MmczN0S2C7phmCAfu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwV1btEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwV1btEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57E6C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744231793;
	bh=Lo/eETWYLLecuMO3XsGaTNu6/jKa2/vndM+bw2+6QWU=;
	h=To:Subject:From:Date:From;
	b=NwV1btEvRr0eXzHeZ2FaCQD0iXxlYY5xOHojs1C304Y7kYQhG+YgrBRK3VmtiaSzA
	 rYRNR4WtCTgyQCw/OZ79Nh07yJ7IWcZGuIUimt0ZLwX3NRBd9s2l6pXQ6AaMG5s5ht
	 to56CcVRXBHOYklKVLIEWQ1BhSNebUk93K641a7RpOCK1ZE7Fcxz0f9ECWo84SXjIq
	 K2sil4FBFqdRlvleQfYi75CYngCF7vRnP1o4o61sfWJOBC8T3b7M6abng8MLJaIKhg
	 rXA/Lhw5dGf6YNiWH9vJnThjKYi5m9TVZlv1tdsfyaZWJ2nVUPMLiyhc2oBYA9YjGZ
	 8jTeZaMcqUtGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B4EC369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423179359.20397.1819016401889262688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc622e24c9f650d1b8b061c53badda6dd2b9d00c627cddb8b2a8b4562bcc18e
Date: Wed, 09 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744231793
