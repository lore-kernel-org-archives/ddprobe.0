Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E1F33C8
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714244543; cv=none; b=jP3VKUEwmcQcrNoO2XAemd68/DcBgcR436tFQMTXq/xvcCqiI/00hgZzbIdxo0Y3XsLUrsElqoCK3K1A3uwuKe6ECaZhBxBccam6nbc7N/YFCQ0NYbr92LWd2KgDDyEyzAH7MAT0zNtVXk3B1Ui85i0rkXYVzqM4KnkbJBlML98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714244543; c=relaxed/simple;
	bh=E/tAK2i2xjyan0g6pd1k2l6oS+AR1AayjsLfw80fWBA=;
	h=To:Subject:From:Message-Id:Date; b=Hz4qDbLT8TqJm3JMMVOkdWAxQIQpBqE4XHmWBnz1tHFiTb5VXLgvGJdMfbMr2JUz1AJWKEVeS9pDsAgEOTOrGLCvv8IjO6Xp+nnVcCJOtm7oa1khkwTm75q/xKWxsbwaagySlECQghBoIcUXmsSwA7DWpvKlWmyxdGgrF6du2pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqGzyZkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqGzyZkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB64C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714244542;
	bh=E/tAK2i2xjyan0g6pd1k2l6oS+AR1AayjsLfw80fWBA=;
	h=To:Subject:From:Date:From;
	b=XqGzyZklpC6LbDTqXiAFefw3G0M/2EW16WF+co8CVDJ06JR9UOEip6n9c049kInDU
	 3wCzw0rhjuwdYfQuPXEOHRD88x0NKCjmB6u8w+b+gWJagNBKUCsbNAVvilxX0WMjHl
	 Cx3L5LOGpDtRMujgxJf+UMNG+2RXVnjXotZkO1OKz0JW+2j07F2hedNzumx7qtPpSt
	 B/5cE5bqydApU7vNAKuMomeKHgWOeldiaMoeVbBOXB6N8JHuMx4bcnwj0I03+6uOLG
	 a7J0n7WAowmNKwqduSrpebrrISygMlCp+8xmKu7vA1NeA4Cm/LkNqUhuJFyLDHWIoM
	 OGq/eSWJcw47w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2480C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171424454278.25706.12011709856586287412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cc8cc514a074811e90328d7b2cfb9f6d9ffe2bdf78a4adce7ae4aaf057adb2
Date: Sat, 27 Apr 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714244542
