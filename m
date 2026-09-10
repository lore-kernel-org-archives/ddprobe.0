Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B38377AB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789081834; cv=none; b=de8bRD4ghbOco8Sz19qIfVfuUxFJA+rpsOy7RQFOSbCw+2UnHh978UGqoHWhCZRtjTvoOc/yGbH6jbPRn6Mg6YA6AQ7FXDnsybgq8K0TePItfx39nYiAPtmOb5rnYhf0+pnCAyZ0H8KcLm4e4cI/n/oC69nW0T+dvXdD1qgsH50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789081834; c=relaxed/simple;
	bh=O26xro12GoRnprfLJAba1fKx17Ce6o1tEDjQQvZKB50=;
	h=To:Subject:From:Message-Id:Date; b=EuKGe18cpiiwGgHW8mJmfro1MoOluijoCQvVKjDtgojBrG3u9Y3xej3qs2KA2t+Ef9BhCWLpEkzNUw0FvsB0Ikem/XWyU/3TijewFX100URV16w1LRZTOwGH6yXC6LbH/V6UXNsQL27To8oPluA7loGCUlt5XFB6zyC5+6tkKLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Heo+lLQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Heo+lLQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAB4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789081833;
	bh=O26xro12GoRnprfLJAba1fKx17Ce6o1tEDjQQvZKB50=;
	h=To:Subject:From:Date:From;
	b=Heo+lLQT/Tk7zQA2yOK7zDt2xqjpedHqwqB6HqLTzyaG7sJgUX5sEMCufxTlSDv+h
	 iqVr/75NS9Dv0r0CkY2aHmG2d+HMBNFKqY3HX3y5ixTDZdWm3TxbM/g+mwlcdaDopX
	 SDIXzNrKejnQRBC6HdhMlPbxjR/3gnh3WxyUfQ4DaAI7+0azq+feI0WpdPxT/cFh2S
	 S8D72qQv/bIE4HfeiOMWbEyxxJNAeWO5mvFtdOVsTlN636MtMT7rAsAfhEZLpc8acJ
	 cPf+6CRPRtOYHVQn+3goFyiKocU3xeuMCDu1IvoI+qh8r2e1+hqOEpQGZK0vyUIJ/+
	 2xjkh6mUzFFpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFC3C88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908183368.21426.11844597111529147404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188ce061776c2dd717728fbe219cb1a6ca0ab722b42d9daae9e5d40e7831d976
Date: Thu, 10 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789081833
