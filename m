Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D7A202983
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754504994; cv=none; b=f+BLsVVO8D5Rv1yCz4A8dTPBbsbhdcvgcPzxrObVYXWwG3n1g5yQHHW35JfW3ijvUMp7K+xYcpD35TO/lL4szNB8xowBO3yp0Xz/XFQSh/b2oQWwiH9vueb21xPL3NG9OnHw48eZHy0QpofT+2Hbi3guZVqOid9PrEumcsMHqH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754504994; c=relaxed/simple;
	bh=GAldHbNoJoPdzSg3ZeVDmqhngVKvXgCvkfExY/ol/zY=;
	h=To:Subject:From:Message-Id:Date; b=Mzx6oEnp4KCxOmSQflH7D6MgMmg54mqLNevTCK1h2/21kEo+YMz7hx+17VEgYpeeTzOq5H4wI2XC98gZYY+Qy0LiFykhIwOECGKCSqoaWb1j0z36wRnLD6om51FUkYcy9DNzCAQQAW8/O9aUOGS/p6Jb4RyMoZCRvSCjSk/LKaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UezUtYT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UezUtYT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6B6C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754504993;
	bh=GAldHbNoJoPdzSg3ZeVDmqhngVKvXgCvkfExY/ol/zY=;
	h=To:Subject:From:Date:From;
	b=UezUtYT5CRbLim28pN54NviKpNJXNv2iPcfEqEBsysn2/NDXgHBA/G+zH1OR+e4n8
	 6njEFArAONylMCcQjeJ9D2y7sNf1rQTEpizeIOyuTE2DT1GvuEnRzb3iaFSFHwLdP5
	 DORhPdd2tGxhapob5CepGoHfuVDSwmQLhqtiWWwWgE/qrJJMVEfW10+6qlVT6VSTIE
	 Fm3/fTwSHA5j8d1Gbw3VFfY7/cFYw4xdCZi3+idf/M5k2YhWpI7MDHq+d/fDBO5pia
	 eIy17hrfYu2lwREfUFzbGdeEHSrSCwfsg8rb/KctFeL2uGnkpgwpoOwIoSZOJ9qH2N
	 8RzR57+ezffcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F05C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450499358.10128.16354408489653158900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bba5249a4a208bcbdcb0d5de7ea4993a84dc65b5bec5960afb77dfe4c27b041
Date: Wed, 06 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754504993
