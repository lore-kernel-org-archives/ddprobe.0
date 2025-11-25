Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B012940D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764046974; cv=none; b=DVwt5v0wFW6JdvhQjhzepJfcmEKjRl4rDgA6lVFNGmn/5ldKnBazk4Xordv2F3B70c21emTGU1WbATnscMUJFVmuIMrDhqWPRCVV1rIdRtaMBYFOEK7YQIcEJCAxTM4X6foqvZSa4sFNr9ie1TnKXKfvU5rtnhHBIVI5/5Q5ZLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764046974; c=relaxed/simple;
	bh=8rdY6iN7fgheUN4q/0bMCPFFsjAsvcn3VjyxrWHbNME=;
	h=To:Subject:From:Message-Id:Date; b=BJk1OTisD8dbKDpk2WVvk0gB/OZuj2udT1VyUefsuttZFi81Xmoa4OINJoS1hKi5NwZzRZ4GyA0t+YYlk4IHP4Fk6dAAf3sHWvTBSbFZOPnxzgCjeUUsmgrdOApq32LyOcKH/vBq2GcLL6uExl7qs2uNdOaal4bGfRyrLwr/URg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hqc95+Ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hqc95+Ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C83C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764046973;
	bh=8rdY6iN7fgheUN4q/0bMCPFFsjAsvcn3VjyxrWHbNME=;
	h=To:Subject:From:Date:From;
	b=Hqc95+EclLO8zNYT/KCAZmfACFGvAWNGsRIaV9fQNJzkkZ6lPMiCbELo5JXYMIafw
	 12dRY2vRD0slUfFMwzUH8+QT0tInklQuW0RYilCD+9sMRVBvYzU2PWdNxzVI4BeyMn
	 E8S09Ros0Y//LHUO9e3WpkNay1M8ZbuaEMRJgjg+Ch9RjKAlYcu5Fs7OreO+H+PeD1
	 Wncyqn17/YHH7o/8t7JVIvoc95Td2at2PrNdysQBYyC0W/RZ0jdSm8tzMTQS7TALdQ
	 W3p1DMiJ/sgd2pcZXrDM6SRW+E3IbDWtHw6UkdcnOSUVj5tkGe7PwX2D2ohf4k+nlz
	 V5nZQKzo60VYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970AACFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404697358.24985.5099544920487799089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f28381cd0380a8640b0aac5afbb82ca37d6d975322bb221f6d549d3bf4c440
Date: Tue, 25 Nov 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764046973
