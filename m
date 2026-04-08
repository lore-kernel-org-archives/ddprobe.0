Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A633446CA
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775676334; cv=none; b=Pcx+ltq5g0X03MEoVxZuGfUaK22NL3BlFw+8fAzRb4tsyKo9P+zWyhOGoXa9aU+cioxsGoTqyFQV6eJbEsUldpFAnOefEUxHR5HGtTacr8ozVRrBnv9wVvN8og7T1tc6tTsK0ZvOW4Lwod4Xxi0UCIw8KWH57OL/a80o870KWPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775676334; c=relaxed/simple;
	bh=ORcwWl66H9tcI2LY6ifGZotdHtFZ9yjisF/Px2DP1KI=;
	h=To:Subject:From:Message-Id:Date; b=oBm5DE3eJ04czHLFFFEPXCxWUVh21BWzXoFQWeAsuIqZYv4Vd0ADjnMEbxY6XNp9AiiN0Pm1SUQSab4MN5jn+Hrqzh1Fj6Wt4wBp62IJRLDB/FL3KArakFHGL/W+HJshWDRd/S1RFHW1XYxLudjgsb6t61SuSRUAPw4vAy7YnXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCm//EtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCm//EtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBE3C19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775676333;
	bh=ORcwWl66H9tcI2LY6ifGZotdHtFZ9yjisF/Px2DP1KI=;
	h=To:Subject:From:Date:From;
	b=VCm//EtKG1pmQAf/MmhcVh6x47CXQTrEWONjXnqsQ/fkyeJuHnnD+nN0QuAbjnxXK
	 pDO2+IyV+1op3Uh3sQiIUyFDvWmQpho/Mpfe7lefr05+j4xvhywbls0KaGrt/6EWjv
	 BayYz2VLMwyqp6XfgJIZgkGHY/qK+KX99P1sDl9CX1fDWkzfWopMFrK7vOPqlItITC
	 VbisYy5Wqn4jLcVgR6++Eesz2qVTKy8ycVm3b6sr6C6ZUi2d9t0iMo6oop2qFO565a
	 UZFoCyduxq6UlszS3E2CYxo0oopC1EnWFQ9VUDGgjbjIrlS2uUPahYgwc0h6VXdZY4
	 bRTYplhnsbifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8110F9969
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567633369.30287.2265158874554446820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404e9eb3826487c033eeb5998ad55b285008c2ca5223eaed29efcc7b939af4eb
Date: Wed, 08 Apr 2026 19:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775676333
