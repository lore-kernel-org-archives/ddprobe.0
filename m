Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350D216F271
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736742954; cv=none; b=tP1UhsF7RVvLnxFDPwY907zesicXA64+umOgVsVnzTCNktLSjlrq+vaCWiHjLSAbgVUzD+BxAbzy4QDupPyrxSqXw/GR1A6zqAorCHW/i9wRyfPmzdZ9RhL8gbkg671aerBs+vyH0aCGf/Eab1Uhtykp2eiYl7irpmJHFTq4hLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736742954; c=relaxed/simple;
	bh=oKaOvxUedfAz298eWMjG4IJLQXUAKGs8U47e6GnE2rY=;
	h=To:Subject:From:Message-Id:Date; b=BI7+lUONroUUfMmAM6HKJXN5pG2zQQXb6uk+g01SQRN8jmFEurJ1sQEa31bHzTz1ryViR1P4sWFw/jHMpHtYAgm8MBXdjYR9jsZNNjudik0owzpntrEndfUkvWLbVYdm8/KvQGmSWBHRMpoXiKXok+dmt1UwFR1BQ+i4oYzc/xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oReTbwzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oReTbwzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A805EC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736742953;
	bh=oKaOvxUedfAz298eWMjG4IJLQXUAKGs8U47e6GnE2rY=;
	h=To:Subject:From:Date:From;
	b=oReTbwzLey98lcYtlvhduqxjyFkmQnoF35ySkEKmYwfurc0bXM5Hfg6ZXZsdx6e7h
	 KYI48aB3QT1phz1AIYYDdnHJCsIwWwVCQQSkChqDLugHgHNZ9u+/EMgTzJMxfnxH0z
	 //KdMhNRL4tgOeOAL07ClE6NNtbJZihnVisM0r8K7pLFx8rZAKc6PqfPAdzqmoLZwZ
	 uaTSEHak3gisJK/h/4sIEtKTz2KpWRTRIe1cFhzY+u1QZ+WXpSVYrwmpBteYT3MmVS
	 rvY3QRrj4hJkxqYNMUhPMBpwguGHciCijrJU0FdH5y9U59WfrTkgoDRqFTsNNCuCeR
	 eCG+FyKbS8uuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B9E7719A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173674295360.13875.4984866678734818996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7375af33342a37feb8abb352e1ac39102e7191b6afd8e4d9712f09a14000814c
Date: Mon, 13 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736742953
