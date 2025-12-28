Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5504C15B971
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766886234; cv=none; b=aT4CBa+7r7ksnq+1m1Lj/rwnwxpyyZuNla71CqTwX74/wQRZksI8bKBQuioSjlTlUrrhurGRDqJMimBmVTpKC5mtvE/FZPW5PhhgpWCIT3dzv0ZwXxqMuC2et2k/NwJAMxH+G3hCqrqsKB543Iuc4vEyv97p/XYs+XHGS+RjFVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766886234; c=relaxed/simple;
	bh=VquyVYSLzFfvl5WxVLT80QrL0HuG/8KJTUkOwjvB+a8=;
	h=To:Subject:From:Message-Id:Date; b=KjMgcRdYYAUKaCTl0IXOfzMVLCZ9oE7ezFNdw9qNtXwQiwA/ijUNc80pPMjV2iRGW5mseoJWas+eqhV5OvvV8xSClQ/yruW/qJepGSfyUnaE9RFEpraaQLtEaiFxXaa8VUV5V3yiVL9dDJsoTUkaRDMlUG39u5bwUUvU1vgkVMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP7JlEbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP7JlEbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC72C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766886233;
	bh=VquyVYSLzFfvl5WxVLT80QrL0HuG/8KJTUkOwjvB+a8=;
	h=To:Subject:From:Date:From;
	b=CP7JlEbk9uo9kMncCozpi2yatHZfWN0VnHrLP2WxhPU+0aHikRiQOHQ+RTCFaUibq
	 sb9VeA+bqH8v/y5LcCy9TGqC0Kkun65QJmbUQFNThf5McGV0VFQOsSPrFzjv2xhUTi
	 U5sTzNfCzj3vEZ84rzuKDNcWLygeEaFvhgdV9UMjktPxzxLvXJlbGPUnEndVu22Y3y
	 MYVZMGCZmvKXXT4fksxpq6aRFnCQl3mRwDDfFh5a/L+TMTSxTZ68MRwWLPE0HA+FDe
	 H9qcLlSQh/0mhdSID4L3Us6kwthsmO7kusHE9KblKM9NvlmYfoSzlAnbHdRN9b3XJT
	 dq98bKcswyFRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D671E92726
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688623361.4225.4491578775717657660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefd24b5492e67a348d44029085b4ceb0f771fe4dd6ab2f818532c2d0b4ce653
Date: Sun, 28 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766886233
