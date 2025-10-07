Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81912D29D6
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759831193; cv=none; b=ebJTZZkqTEbCN2gWUw9PGssv1XE2ArGCUg5oSDQTbmq2zqy9E25ncWLNy8l+LsEnbeIHM6S0gWedX4+0kOjzyn8eOvKm2JYdE+9BIpf+iqdDduxtOE8I0FmFVV699oIxyPxoXwrLVrXObOMWJmN3Rdw1sWLFO76FsX/RRBzO9eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759831193; c=relaxed/simple;
	bh=v1AlIwj1IJmkZUOc15fDNinwdjCQvYqwkBEtlp5/rVs=;
	h=To:Subject:From:Message-Id:Date; b=o/UZLCE5dbv/t2JwKrp2HUGYkccRcRjsydjJmtv/xU8dPVLTZDMJyCVmK49tOhv2MBE6g+7S7YwflDBQGrRXQrTCkXxUVbHhQgtuTmFfDTaBVaIM5JmhhxU5jGc+ElACMFI8QTxbEdQDXqiBQe31W1zsgei4DxbLD1C3hN1nFLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PweFWVqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PweFWVqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E04BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759831193;
	bh=v1AlIwj1IJmkZUOc15fDNinwdjCQvYqwkBEtlp5/rVs=;
	h=To:Subject:From:Date:From;
	b=PweFWVqtQWYyg4/4aXGbZs101v4xyp/AzinT98sfkAFTfvQgMBi8d+lwApuan4vtV
	 LTpx/3/+/vcjMeRdVWz8cZOkuGv6i/lFlyxXrLf14lPp4TzDgHD99vyHbialWgoQHz
	 kAo2cSSS5pzY3/Jfd4nhNxD8upU4Oh13LANMBE8L8ZkuKnX3HyeALcCS5ysTufNUek
	 zq4HfNVN5GztirN0rz2X6X9d6L+vbYrrakuZbwhKSRvkMSMtl1XjQW4ozOs/+0qvaO
	 3uPf+EXCkOo5LcAYWCNvyEb+JMjTOcjgl6aCbWry18XY+uDOqUJJATz486UBxoz3Ww
	 V0nE+oOyWeXvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E86DCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983119357.8337.9171949625005862728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e34beba6b27d3dcbeb553ffa1faad6c485a64e0f6c46507bd5c671705460b16
Date: Tue, 07 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759831193
