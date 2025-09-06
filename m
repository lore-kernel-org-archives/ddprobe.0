Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9E42853FA
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757186394; cv=none; b=J5+1+IrsRA2O4piqYYpgsxkbFblDbnlyopOL1LHVS2GqKi58hFyglFXP6LVYQZ69mdKcmuRmkJPfrEoWd0YUlQfGZX0rzEjUOEk87EArZSGzboO2vsjw/3ImZIGMhiC8SpuN5mOlOZu2Sq7yA9RpfDvhFj8p7LIWvRETLR0ET3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757186394; c=relaxed/simple;
	bh=9n5oTs+9FRwD9G7F/9uuz9S3yZLhhzeL08t+mPOKW1w=;
	h=To:Subject:From:Message-Id:Date; b=NMDHobsAoIjCf+cBGBbbuesN1RRwsgHIo5GDTHFubWFtqSldkay4W19cOHHxnasB0MX2XoYCC4ebHcvzx+W7X4ZbvcwV+y+yCpLqu/cP7ndRehIZHBQJTjBuT4W7OnYCM+GWJz4uacV8iYoBnoLAWvAc7zpzV5WoIeQKv4XQKMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me9uDUPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Me9uDUPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757186393;
	bh=9n5oTs+9FRwD9G7F/9uuz9S3yZLhhzeL08t+mPOKW1w=;
	h=To:Subject:From:Date:From;
	b=Me9uDUPm2o/fszq3mQpA33jPn5GFYyEhgJLdWRuUbsg/nppaMaDqkXsHvvbu8vrzu
	 aSiVGv4b1iRoPHQr7/K8uNyHAXPNiJ4zu5t3mugtp0Anh368qHQdBPcuktiiz0/A+x
	 xJa5olWXwKVNaO8JZsB9+6VrFAsTcy1W4fwPRZ4ZmT/A/efhJyKgbKBxtqnQXnuZ7T
	 6hI/b2QJOMHnKQPzO+S+OQ88umvnRoXR2I9TVQRoJATjYkJciEeumv7xs61lgmI4FB
	 rgzjinj2p+bo8hcuRQSHiHv2U53kLfTyh6API9IohYKDa8n2lDYKq0MvfevkhfAhJG
	 903zNxE8TyiTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9382ACA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718639357.8272.9756051772422602073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ef55431b5c3e43eff08df547d31709df545624c2d6ec9fc095c59200b2787c
Date: Sat, 06 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757186393
