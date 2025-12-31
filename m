Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC0E1EB19B
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767196434; cv=none; b=ZfPlca1FWJkkykgea3pBK6tLqLEhSVvi94M5rNgTD6drkPDvxfA34rt26sTFUlUpYx7OzHeQoIy9Py3JRfCT2AIj7n1q4wU7SL0h83lbSwxVoQoqlAF2zafME4w2P3bxQ8iMZobGlxQni/tQFNyKBsy6VnO4PEf8poFaoudjLSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767196434; c=relaxed/simple;
	bh=VLubQD+lRShaeQb/zhia29dXynQ7WPcI7u8xiD9RO0g=;
	h=To:Subject:From:Message-Id:Date; b=OaXcxjb83jcvCe1P1HmkE3jY/+74SrBAkKxU9sL1GkVbBtwOwIT2FbYqc63m4x46okgy5WQu0xCskLkQhQ1YSQCET3T22mknzbuR3n43DSRIifuqZQJ2JDaWmDfMkWnjSQWs48grzESADWs9/ncGq6+LB4k7gob5pIhxIAyLN7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5Ithyui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5Ithyui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20FCC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767196433;
	bh=VLubQD+lRShaeQb/zhia29dXynQ7WPcI7u8xiD9RO0g=;
	h=To:Subject:From:Date:From;
	b=d5IthyuiSHfCZ6CosdFLiMpWgyFcjCQT3+kiGgmx27fbmIvaBlVHQ+/kX+dA05flh
	 BPwe44OLvQsN1UBxr4E5OtHLev5KdDeUVg2Pmxf3abvGQHZKLfv95iBYp5M+i0zb5O
	 8NS940Y5FmG2dbGKcAxNYB1TFxm4QK7BQhg+h+j0XP16Alk21hmhg6cThP7iS6O3Z5
	 oEtA64yugJA4yVG9IE04y8cdr4NWAKapj8Hp1CaKNpJnj0X+7+oT3KihkmycXGrsdx
	 LCcaPsYJPTP0xvxMa91mIUSF8+4iDeA4HYSKYbVWahst5Sc9Rx7Bt5va5Bdhn1epQR
	 KQlnWnfXTHcxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D32EE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719643358.20489.11946647468980285360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf90dd85eea2c364c52101b33ada00b478c9c90891ddfd90e60017e42c7d15a
Date: Wed, 31 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767196433
