Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3104E1FFC48
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758638395; cv=none; b=CxRM778Mf+hcjFrlMiiCynqUTpBp5UCQHpZPZTPCig0GiiJQ7sUfQuKXmc1oLXQPAHCw0aSqFzoeUqwkeHXQJZKt7BEodSfSfZjqvv137o2jNFrAF3tADS58Rx2T0IBUEt0l2m2bqfrhf8+zlAOX9JtmecT7Yir0acK5zVft51c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758638395; c=relaxed/simple;
	bh=cO8ZPjSetdOklhxFRujOCGO+7OrOKT7Lv9DmYrqDdw8=;
	h=To:Subject:From:Message-Id:Date; b=FygLt86QDEilSudNtoGV3JVnY5J1enTAjrn14IsCJ3IYAH9/HJYnTF8FdP0VneE0oLYnmJIZaFWrPUt7Bfy9i/aVeHo/9K4HCHybOnMjnt/xesmMBj4UwDXnkNZbsS79+Q31OqegS7C2izPjfe+/czrSWeDYTJREyp6i8oIi/+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyKBMP/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyKBMP/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FBAC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758638393;
	bh=cO8ZPjSetdOklhxFRujOCGO+7OrOKT7Lv9DmYrqDdw8=;
	h=To:Subject:From:Date:From;
	b=JyKBMP/dme+y8zHPnXWZA7lc53TNXifuGSMonf4PYT7vMNSK/zGp8guv0RZSCaBPv
	 OZvSXbzY3VNnvwYClvV3wDccck0qAP4NvxYqSW9jV4ry8aBpWyfUuhAPtmzxvfvrxa
	 V9F/HFAB0fVeRVTEVDbweyk3vMWqqIu39jCDfhUkwgmCSfiTv8um1H579idjpei6F8
	 C0UM4FutzYkbZetUQaQSPOeOwAzilz3JpRlgZSB82G7NNccd+EPuWvNg26w+Q8djAH
	 qX0QSTifAeMBIG/amVncYvtcg7TAefmb/r/7grscyhfGH1q+DBJfVZj7vnBzZvQtSd
	 xlpiT0EqLEHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93692CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863839359.25351.12099469762707301717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d85db727c63dfe9778efe90047fd0e0b670715bdb19b4c33b7010e3de32c4d
Date: Tue, 23 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758638393
