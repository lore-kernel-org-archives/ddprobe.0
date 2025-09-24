Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D7BEAC7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758693594; cv=none; b=QDjGNdswi/zp2N8r9bjKRGGZXTdVzHop6aJpeWIq5dmOUfgSWAo2hv6Dmo8n7ZwZqfSDZAvbiixkwM128gq3pOjlvkc5Fy9WYYEFh8Uak1YaYV8snpvbB7v/zgKCYtSVA7Tb8srfDhdTxYGRn5EI4OkCp8T5SYk3T+A/B9FUEfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758693594; c=relaxed/simple;
	bh=n/Q4vD05YAkVBLPso0y0zEY7m8N3oLEftWltdulktA4=;
	h=To:Subject:From:Message-Id:Date; b=NMasJqmV5SdHEa3TDVkHU0AVX+c+WA2RfOGrNQQABGXXkzXFeUdemZAf0/aa9nT/EzF5FWd32q3KLVcqHgBS8WU7wAGTApoHClfzeKhadNsiP7V5Z2juGkQMsM0Y4rkCirgXJM8QNlOrfkqFK/MquGC7AOZ1lgSsPrQVnUTzStY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9J8UkPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9J8UkPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A195AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758693593;
	bh=n/Q4vD05YAkVBLPso0y0zEY7m8N3oLEftWltdulktA4=;
	h=To:Subject:From:Date:From;
	b=a9J8UkPbFSMW1tU2rqoIdAmwws3Lc6nlLjBlQlWJNMtBhPo2fYLSnYuRRzGSkbWVK
	 AFac9Hu6u45agh+ms/FAhPZI8YQuAUrjCgipnxN34UenQR/8E45ZGsDfcalADbRt5D
	 QSlfKp3wjFgX9pNBYpVO9UmWmZgDE8ePeUDBP7uLoy4f+GjNdlKEUovg/YN1+MbA9h
	 cdBrF9BKpVtEmBOI8FVOTFneYN+9G5FjAy5ATA9+8vh01JzIVX6xqEKyDmUH7OywAv
	 bnlsQZkzQBn9wHMkKi9JNsWZRzPmZBm3VXUSU8CX8cdQs+tbfDGCAk9k6fnghPdfBJ
	 L5L3kC6Po3h+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90726CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869359358.32469.6067856182035809609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4bc19d942eb7b343ea464a278d4fa9c7f63d6b672e17bcd51fc8d550ff952d3
Date: Wed, 24 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758693593
