Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE61C378D96
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768563234; cv=none; b=Th1JjbrDHDJu17yPRC+vdHRzm7BGBub1VWgt5ww8bvYSCJ5bS2vIVl7slHXuguqRJ1lTG71aGVg+w3ziITgHYIdQgV7X2XSU4plzNyARwE9NSIkB+kMUuNRtNHGKVDrOXgCBemweaUjsAt7QAlRwMRVif9+/DRnSORAGei1oBR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768563234; c=relaxed/simple;
	bh=pCR1GlrWCu7GnsGP7l8z0YE0a3c6gFZxPf/QrB8eZgI=;
	h=To:Subject:From:Message-Id:Date; b=GK6cwFSbwt7DiBMf2FQKUW2YAjLhPjLWTTbV5qjGh2qgxMBOjj6YCTZ5BtU2eLyc70aq89Q1XXAiv7mkq4lFuh0Rrdayk5rlPW8MOEQrxbHiCi9qdi72/iLQAB4nszbVsQbcbOB78Yvg2Z/G6Tml3oFRfTJMoay2CyDbp5KOU80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxdjvAyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxdjvAyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768563233;
	bh=pCR1GlrWCu7GnsGP7l8z0YE0a3c6gFZxPf/QrB8eZgI=;
	h=To:Subject:From:Date:From;
	b=oxdjvAypFgndF1IxyzIIzIwG3L5Laqa+p269sSxEfYWrpfv9eWzORq08sbmDOZWY3
	 domkietX+az72AcpKtXVzkdSQ2o0RjA8QING2uSeL4BqhkWtc/t8MLEJhwPejJfzTN
	 ewpubtfH/0WXxBTD5UHbjKPnW5Nk3eMaTKqMeb0dJcX++EzzeR/IdkEGpGtD6G8EH3
	 E/A1eQmNavlpXqscyyFupL/+I6GK7LQiMbyEIRMzUNvN+3uDaL5K6PND5rowk/Vbwi
	 j3v41J8koVNshP8R/mZVFuDdtTHrZiPa/FjBjTrZAAtFYK0dFRSXKfd/33a0Uj+cq5
	 kPWQP2Mj8bQkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9250AD48981
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856323359.25359.6633424899217757853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7482f450be7d6a7f2ef5ea47975c443eb90581d0beabc3ad7a412dce0f9439
Date: Fri, 16 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768563233
