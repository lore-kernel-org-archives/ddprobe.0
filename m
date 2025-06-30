Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB1C24293C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751288394; cv=none; b=b9zd64bHb4GfZ1sz+VNj7I8l0IgZLpbJt27k0O0W2yhWlp9tyKQf2Isg/f9IkjazoqX43XJ6ZdCOCJBkePqGAbhM7rKmXhjaDjRbRfvFpb+u3vmRwu395LBgSI98ccz2ls2vgu20h5i7OIK9ySExzsto7lYzfSuA6MjaCProavk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751288394; c=relaxed/simple;
	bh=w2ARmRqKF0ozNkohLecKPDtqheDtjWiSqUlrFkPvNvk=;
	h=To:Subject:From:Message-Id:Date; b=WvVPF1FU/aNNnJKwpmpd9HNqktLf1Jc6Nj5sDQidzuEdrL3CVF2sQvu1/Vi+EeqPJlzfqtl0OB1aE29oXhV99kkSY93n6H0DScRsqMuulUp1apzK5F9OzIJn20+/exlglQoZoJI37JAIZLm6/3IfxzUqMz2f6CulqNj53cV+bQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNVBh+mA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNVBh+mA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDF4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751288393;
	bh=w2ARmRqKF0ozNkohLecKPDtqheDtjWiSqUlrFkPvNvk=;
	h=To:Subject:From:Date:From;
	b=kNVBh+mA31nI4TsJL8kSaZ4RYgN/xvp+GTpmxMQa9QVvFLR8WeyRF+5V78gcW1sLr
	 YHDff3YIXJdKHe/CMBYsKQiHihRqVXAf5WPSQ7jeCa+D4gjHs2IWcP5dwCo0NIxi8G
	 zbW6LrU0ePjI+okeFUGeKDH5WWdl+9kNrNFRxEGza1s06xOoX4AhXlA50+xkkpMZOA
	 smd15VEQvXmVJs5qsO2B3kUgD3xNxIIn5O0LfEZ8aKyfmohT8zwiEIw8648aL1dAWM
	 Jbpf3ZuZV9M0xWVmoqNqHVBAGupCMBpdhX0BMkWscuJbBbOmM9ufTmMLxg/t1v5JES
	 Pu044nY22m6sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC14C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128839357.23802.7702895691034069379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aac4d84a82aa6572536bfaf608202ed3ad487fd8163b27e3c6a5375d2e25bac
Date: Mon, 30 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751288393
