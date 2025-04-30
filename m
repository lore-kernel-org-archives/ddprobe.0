Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6F3320F
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745980193; cv=none; b=RCQ5OTBy4N1Uec0K0dH4yugfbkTvhcgmMZKZ0q1YzH7NPPVfFWME2jZUDZ5sn7d/nTBHGTUjInPLbExjhcO+Fvo6AM+UJSlR3ILwj/O/Q3iWVWJLd2u1LmZIM+1Qf9LEWIHZ+WsrPqI/cGTBvNJ+5QtpIhVmQiWf7q0p39zey8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745980193; c=relaxed/simple;
	bh=faQ+r7dmtq2lr89RKKSztGmiu/677Uv0dZGu/xIv/tI=;
	h=To:Subject:From:Message-Id:Date; b=KfZpJJ9gmgXy1KQ5OrX/tOzNJNhmHrVjiMTgQq4gWpy5WAe3F/Cy8SikgzZGAMuLp0BQQJKVc29ZGgwb//D7o91pkqEieFLE2hkR8dFaCg9egV8ccEAFPSI7shA3XJx/Wg/ozTvSdHxRxPZMPtsRQhsPXGAOkxP3dDMz9VhTc9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEGRcgBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEGRcgBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FEDC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745980193;
	bh=faQ+r7dmtq2lr89RKKSztGmiu/677Uv0dZGu/xIv/tI=;
	h=To:Subject:From:Date:From;
	b=jEGRcgBCoqPk0Rj+pXeiVb/kJt9RSjetqXvHtD/zIe6Bjuj38dQ4DXBcsBbQsEW2g
	 1Faq8WWLsFTZyYh4aOS/UmTzMkZOQ6B5OT3JN4L5uWxJmSDiyLAOj0wInLIHb16gDU
	 m/9ANHNFXnpzWVy9e9BIkj+h4KVYFCM8qIc67TKG4t/hoIoTsqoykPL54oRiECF/gQ
	 /DXqpCQ+luL2fFH496vCT21r1DA/FQtRZXdzYo8diqb8MdHeUvZCGRncZQaQnjrPOE
	 Qdj2qFxg+mEhg2vFdR6SPSGGtFvUYYXSwVySq3zoxuqln8HSIjzgv62hrrfHZRQXAc
	 VzlF+/+f8ERtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E55EC369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598019357.28323.11799190202913890556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20eeb3bbd7d92d7311e63e6733d1f07e6d6dabeb7e39ae4b3578fa6271e40f73
Date: Wed, 30 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745980193
