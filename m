Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370ACD515
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747615194; cv=none; b=cPlFawjuSyYfSkmrJLmJqT4esVqiBaxG0ieK2nsKdHBwKg3DW86cz4cpB9/TnXJUJdX0weUdlAU96q4JO7vXTGRcY2y+XToE/swBXGZBtKiKotcvXquPTUtNU44kPY9d/jL9klGCZqgQU/8oJoJxu1P1HbnO0wvrHceOurJPNIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747615194; c=relaxed/simple;
	bh=syvPDPX1LzA9/uNBmPMGOTlyAKXTvRgPKQYcHvILQ4U=;
	h=To:Subject:From:Message-Id:Date; b=T0o+ZqseMDDAUQVl5SFOsCw7F+6FVdydn9ANiL6zMP8FNM8LcELzH6VPh2AZUxvpyogf69uyI3KDRwKjkl0DF3FaIpUJQ/jA2aREqjqYU20TaaOCFAlrUre1lPa7f2zsAWbcGs4YT5cKX1TUwdglSAXljrk5CiTtYJ8xJwFLDxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EB5DLm5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EB5DLm5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747615193;
	bh=syvPDPX1LzA9/uNBmPMGOTlyAKXTvRgPKQYcHvILQ4U=;
	h=To:Subject:From:Date:From;
	b=EB5DLm5orFobuavD64x3dOQMyCUR9mU1eeD6NM6SMPszCZq91X1ldUJOU9sogxfXb
	 zpZLQg2/vt+TCuBjZ7ZJIOoQYohLm2j9uZs3oIzLyghtsXV1+3BDCLTyvUK/Oq15Qp
	 EG+CH+NRpR86nqhVFoXvKwhkKIr2sBZE66YKDLTaqssVlUpr0Cy2lfQbaNlFnFudO6
	 MNRPyGVL0/E7PI8Qo0hps4FhU23FHR7RFRxnZI1DZUs5y+fEALeT6zd64mSWFF1Gew
	 TIoE6fIcD7JriUu8kOj5eoBHVMbjj0UHYw/yCPucb7vxZr1LyQ3YbNZamJvI4EU97s
	 V7WRrsSOYVjwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F883C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761519357.14103.1741329633461857210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119f78198bc753ed0aa62a4d469bc3c988aaa727aa6c259c178fe0e93ac501bb
Date: Mon, 19 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747615193
