Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B4A26FA5B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764501174; cv=none; b=ge1VgwMlS4yeiGidrw8FIghGbKF9DvL5nLyswEasUX10kxZ+O5oyp0hnAPMzrfu2WOP2rz8gevdRfRJaWVbHKJQFT8S8NvTrJ/e87qh/wm2/20Zmlji7QsaMz99d5wpDKg1GiXye5/+mxJ0QJWRYsySpr9+ehDWuNpu1TH6TPBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764501174; c=relaxed/simple;
	bh=+G7903tWZUp+AXN0rgQrx7ZNvMJs7A8gvyCeff4zk+g=;
	h=To:Subject:From:Message-Id:Date; b=VSA8ReizLR2C6BWQg5ermPqMqjnVK0+YpyoFycNVaUUgY6TriFNwbOR2EFtUWxtEktDsb+qKwwa8/BB0jCFzC78Q7xrB4KWsgOdcd2cn7L42feeIqZD6Hvrpu8ryVzxKwU1kY+Tc95usMWRrynUHZ9UrOCkYmPv0QxfYCS0Q0NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9+JR+/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9+JR+/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABB7C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764501173;
	bh=+G7903tWZUp+AXN0rgQrx7ZNvMJs7A8gvyCeff4zk+g=;
	h=To:Subject:From:Date:From;
	b=m9+JR+/f33DwkZkhkRNX/Lr6r4csPV+mYGdliNWiEQNvcIyz5N18pU4L1Gl5C8Tpb
	 gYyKxps8FovIosSGFALZT1lCSPM8BRWbhHkT4yh0vLbsqYookbIBNoJPxArdnR7riR
	 fu6s/zVEaxQjk4uTTLBvhKnLdTSOZTBukjDpT9mLoHUimo4FlZ8wZo8np/2BiiBqsI
	 J3+LKazkhdKY31tGe3l66hpHnexXiEB0DtimG3yujdH6+1sJhTL7F/kDj8BhZ5kt4u
	 +kTf3J5naUhLGrMrJbBFKpRTNBmA5WUwz2MlwvX7ZmV03FhpgFijc7bFYX3uMvQQq8
	 5UfL6TXeLyJzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95909CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450117360.18407.8796734083010202741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2190f2f9f33b8e047249ab4e563737536b37ac8779b9a15e649258ce9e4d8649
Date: Sun, 30 Nov 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764501173
