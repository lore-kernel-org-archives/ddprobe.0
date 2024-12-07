Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587FE3398A
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733556954; cv=none; b=gQa8idnyvoovdXAPDvI89l0dGG9HM45aAL05V8JfQopbfW+c6o0n+jbLm8FaXvhApcXE3F6prrbuU80OmoItSGR5Gh8uWm8lCndHmJQc7aUMUjABQLCat9zd8jC5aqMkO2tUz5Fw+RO+RLdhemFVjuR1XZfhYe0HqVceJRWWwxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733556954; c=relaxed/simple;
	bh=yqTUXDrdNA2L9btX5GpKF2yc+h1k714qLj09SiztFTQ=;
	h=To:Subject:From:Message-Id:Date; b=VHXwGMXEMp0sPF6LHYPutxLUJNyYs1By9S1U/5sKgLSoi0oUdsXnGfxg3UMp5nvWUxc6idXJxk62aaYONDc+BiGjN5k8QSxUmrmuHkYlCtTWOZAoHDBtH8G5dSG25kV1UkHFYSSKlsz/bfWWfEYTopi9t/5mQw+xhTS8ntE4Zl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBddZRLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBddZRLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6012C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733556953;
	bh=yqTUXDrdNA2L9btX5GpKF2yc+h1k714qLj09SiztFTQ=;
	h=To:Subject:From:Date:From;
	b=gBddZRLwcS/pHiHxyj/tSr4VnD7WOxYQZpUXStDJfe0sRPCfmNJYf6HCNSnhSnfl3
	 I3uBExIDfOB3n2z6bYa+5hiGCOYdIpRCwGen3kl4BTWbcTO8zwPpBLjfLVUHtDQm4Z
	 HbLu4cWsjRThkvjVDJ2YCtmbu/CyMq7/+vT4eKAp1sRf0zCKzzf6D/YWae/EsVeOxL
	 epgYbFzKD5BDs746wN27y78TH+ZQqm3DOJJGFd5eoEBxHM77RYXDbQ+6/fDPeG61U3
	 1PKyHtrnLxyY6tRXLIj+KPxEKupwuWpvS5WflJZoH8t5F/t6FqxKb3rXtrsYQtzyQk
	 0CSknGOy2jtEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D798E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173355695360.25607.17388965903319197620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ebeb3398a178b673b1458fdbfd32db007162df924c806cd7f083e401059571
Date: Sat, 07 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733556953
