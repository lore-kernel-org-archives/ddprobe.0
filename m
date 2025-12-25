Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E153A1E81
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766639634; cv=none; b=XQsGQnxmn+TQE4mCVxQ+dPHrOtTVWfRNFT22PuyQN9UeD79B4/9xfCM7eWCIX90cC9mVdAN8tUsG27mtRAKYJ4pDSIzisYM5/u8we9lEQ47UwbnrmDOkT7HkUBvLdP9UAdYNE2LVPwe9Jp0xoZtayCV0TcI4vzJdNCj7ufaNl/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766639634; c=relaxed/simple;
	bh=vmJem27M/I9q2wGSjed3ac27Tk/SmkCO1liI0Jqkj3Y=;
	h=To:Subject:From:Message-Id:Date; b=KONDRcFU8U4Mioktc7Ht8YMoPEMQ3YJgeVo8TTQW9+/iZ8bweu2ZfTMcBEIopc9pdi3bupv7tQHtcAZjwk+QWpd7uwsQ1zk0M5utlqayAjUlyVtk3oQxGJpMU4X4jDlzWohtoyYu3iEszf0N2qRXe9s49V+RAnlyl8WuQnWogTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6F7+JNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6F7+JNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1248C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766639633;
	bh=vmJem27M/I9q2wGSjed3ac27Tk/SmkCO1liI0Jqkj3Y=;
	h=To:Subject:From:Date:From;
	b=Z6F7+JNjqHMmp1MOm7HeBe7bA5hbPpLsFxfKGbODLb0d0eFH5WqNX3LxICK8RKB9L
	 N6tFObKBkwrv4DOfV7k074gLqzB26heguY165gS73kAxI7WZhNbOFzjGjvDy9sIUnK
	 nundnw+mfB8fAWOMBh90gJAub4UA6wW903yaHesUfnDTmHMxrM04didCWrOlQ825Dq
	 A58MqEnEBHMPmMK8X+XSBjU+6gwqBxlTgHtpWUOQ5H/o43WnaWRJHbrd12S4/DgHcU
	 HDottJl1brEUhELuMoApCh3ZcAc5YrraQYx4gmYIQedcoDSRSJkoOrd9N9QXAM6gFO
	 e0QGHIusc3i9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E7E7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663963358.17878.10420483861448751434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf512e5c8098ad8aa777d5701bdae2f6d0cc0493bb59bb0355ea674f902e69f1
Date: Thu, 25 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766639633
