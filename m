Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD052BD1B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749173994; cv=none; b=mG0y9yugsi6RE8/mWwnje7hDi3yI69ObUUKhWvWsOzMgj9ygjHgKwF1lG89pV/F7mH9hxOwkhlZxAq6lEJDvpWaLt2qVqZqmDyZ65c58NCmwxvHxGibXbdzo1H8/AhKncLgsTBOhIBG+9zvrEGNloDf1y36+6JM9PtwJ3oQ8Ms4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749173994; c=relaxed/simple;
	bh=T1LYl9Z/8W4lLGj3/B811eKRYgmfeiEuGBwTj94qHLQ=;
	h=To:Subject:From:Message-Id:Date; b=SnNNiNMmE70deE1y8kRIJDtISY5SKor42cFXU/m4OENuUIh0GGM1P4XBurMV4PoNeNkmEgbdDaFaerQ9JNOPBNO+qilzzMxCJNmlv9arpuQts6cj8B1t2r2XLFVgeOgwMloUeYMwC0+BasMWKHu8zKg09fpGoqc6u9S6uype0nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eq6V82Op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eq6V82Op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DCAC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749173993;
	bh=T1LYl9Z/8W4lLGj3/B811eKRYgmfeiEuGBwTj94qHLQ=;
	h=To:Subject:From:Date:From;
	b=Eq6V82OpAy411l0ZB/6O7demMujnVWV0LWZfBm4yR8Ho2LcGycV/9SniuIwRPnen3
	 qakfsZ+4NGgQWZfaX7Vt5/XhB8cra2GXS3GgWr44povsBTVHH7zxdGdY3MKzNqV76U
	 5WAtfmTQIN92CWiKGsg+ndr0zNb8Ih1avcIA4E4YTEhWhNw/2pAYIbiqu1AxC8T4Om
	 C5ZhVWR0MJ6+emn6V+jR5Z+YpJYWpZn+E5QxeyrP21ZSklpYlJzA10smbVFvb3/mAg
	 WmJin7TB8koFUbNASNYUnoHQjb04dx0ge/I8HF2sJIpO7x9eBdFJIw1zbv/0MZChWm
	 DyqsJ6AAxAijA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D1C5B552
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917399357.8213.8677732032992833388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc24c7a51874d98994a4b73bf9afd213aca046120dce3508dd3ae9a669148c82
Date: Fri, 06 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749173993
