Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DA51096F
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753478394; cv=none; b=jHDP3n2pqrlRMBaaJ56MyJyIZT8YSCaEud9gFa75cS4nAtR3wQ48klevOKvTlhjXd+hxnBV5coc7hlLEC9l/H3jtssIDcD21PbqSmGgOLZSWltnjgFKjr1fkbNGaBYvVT0pjK+n4MdW92Hg1Ql5kNY1yzKn7P+khORrW3wowgXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753478394; c=relaxed/simple;
	bh=pFaEOwBXvZ2H0/YY48W30PYBCgtGuITmm2j+pQqhHDo=;
	h=To:Subject:From:Message-Id:Date; b=NXvBbOJ4PJ5sdFuvPTpgWb+i3ksxZ1yWnvwSXI2deZIZORemswv/aGCmAkWRMUpu8ycsqCLFo6SRld7tANXm8Ex7ND+lIctCkLpXvp2yE//y5ujbG99eVXZG1pTVYvmgAknu7WcTBje57vc9DS2fHG8s+M1U5T65Avydj/fV5Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwyW5J3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwyW5J3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FB8C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753478393;
	bh=pFaEOwBXvZ2H0/YY48W30PYBCgtGuITmm2j+pQqhHDo=;
	h=To:Subject:From:Date:From;
	b=kwyW5J3oJbhjnhhnBnGf28jaGkG5LRgpOJrxWLAnFwH4wB28wR4crL0dfjSpUOh9R
	 NQ1bVDjLKm7YGPypE+optEUKFEPHG74W3zdCzbIZv/AZ7CNiDoazm9rJDv24d/Idj0
	 qiFVoPrXprzgx7Xe/9bWGe0l9eU5K8utV8q7rP4WQ6VFr/edJR9Bh4d8z4QAJ2xWc2
	 Ae6W2ytHhjP5Barvwbyf9vubvh/9bIooNusS78nScHyoP7iVuC5NCuwzE9cme1IW8P
	 lY4uHtzYu742JdS1aT4BGclT0ozo5IVH9dBHkyKfZZerrBP8CdccMoflPNvaWbMJd9
	 Qm6i2oPKndcbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359BC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347839358.24663.18193462150669810656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d6e7729dd5dc9341049a47212ea5687d1d235a45355c3159294a8e96adb300
Date: Fri, 25 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753478393
