Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16163155333
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727247354; cv=none; b=u8Z3u2+Lz5Arm9JNFWZjyF+9iWHa+xUL4TfhLX+mx/av7IQPpIw94u4oU1hgUzd2bDVZJ/woUJ50LHu9zcYk0EQqWmPlS5PnhlQ1uTLmcW05/PeUCWfS6L7UXhAS7NLJGwzxaPaL06jrGHC8TDMBhcoPvqZx33i8ln7y79BfGo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727247354; c=relaxed/simple;
	bh=JBNiPmbpzbTkfSp1JS7dAw+wVrPgzN1TBOcuqajWwzg=;
	h=To:Subject:From:Message-Id:Date; b=rPlNYxWO0fVZkcWIhkZUJS6egG4gKgFtaiyo9fV/DYue5qDSxd7l8OANDtf0KW6He5IhbDaRof2GmLPuv3hmIhcb23V2tN8V77CytgYxyYTSMYL40fXFzlJOYx6UFr3kM54Pw63MZgB/j6acIoruYN7bp6CEIa4i5Vi9hn+AxAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uanqg5lQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uanqg5lQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DE0C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727247353;
	bh=JBNiPmbpzbTkfSp1JS7dAw+wVrPgzN1TBOcuqajWwzg=;
	h=To:Subject:From:Date:From;
	b=uanqg5lQrXHsZ+R9+kdTBqdSrTD+tTwrHDcPFZmy0iZLgf+PiYchSLsD6yYk3IW8T
	 oJKHAunWgjdH8DQEpyNNpcvIRF76LvUU0L4wNMHCgLz1jMPBM3lBQJA8uVqztpfGQk
	 ebST21TYhSMm2PVGuVtykj+BoD+ZHDMBoIUGVRF4E+GzPAb+wRjZTG5puF/P8oFHyx
	 /GWjyPtQbDt2tBQYNFxsfdb0Z0cLxF5Ycb0JwjL1OZvvnuuuCrUKa9JLbHY9IwjKcj
	 GR1Eom7Ad9k9EJ35dkLJMQhiVIeVXmbwY8NJeJMuQvmp/K6D0doZN7frdvCCPjlxJX
	 YDINmbUGCrZ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC2C369A0
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172724735359.3445.9902419328374130517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8bbbfc5a7a794e52e7e9ff4530ac9cab8988c393e7bf27ce2aaee63c0ed7cb
Date: Wed, 25 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727247353
