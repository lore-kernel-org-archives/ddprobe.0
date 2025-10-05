Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F23258CFA
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759660194; cv=none; b=e3OEi0m8SYhW7WnGMAGGW3UxmnIZHFAoOBvAQPfdEmsFEyZWkmdHh33+BhjHUNCEeZGfrjki5ksUKEu09eACMImOMjM/FwNTDmd3lBnJga3u79Wuk6NZGSeMJBM+5P8Xq4zCVSMxOapZQrfK6INMu/QW3tV1BL38jN6LNu7yabU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759660194; c=relaxed/simple;
	bh=djzK+0D6n7KDH6EDyi7IYMYdNfpEp5XtCXXtdW1vWJQ=;
	h=To:Subject:From:Message-Id:Date; b=C8mHD5DYjP47fH2IT2fKN0TLs5jQXBIKZWS7PlecILDeZoD9gDwWzwE2bzLz9jK9491yMKUNGeHpG/bqgVEITig0obMw/FbfWzgPSusgSsJ77SLtYBgJzbdZtpvhM6YMf07uAwJQ1mfjTHzG6lBXIZyBRwv2Hw/7Z1kTbofCCKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7hbeKHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7hbeKHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1896C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759660193;
	bh=djzK+0D6n7KDH6EDyi7IYMYdNfpEp5XtCXXtdW1vWJQ=;
	h=To:Subject:From:Date:From;
	b=D7hbeKHFbycIcv3jjlpMFPg3Ft+SzRmRrxO73yrHqgWnUnXfBdzpQ43e/Zp+3hCW3
	 39jiY1P9n9BYBD+fGAml/7umfEOOOciCbndUovXc1YZIUxZTmMX6Vowo5wmYtUgE/C
	 GTFGjAqywGI1CApwSoR3ry9KXt3eq5x9CsXABdMOXTB/prAfB720gDsxXXnFNDQJeH
	 GMHKEVMaXyA0titHN34/LaXF7nacN4DZElXSj0J3E6O5KUABL0k7Dw0m+7zS6NlWee
	 yU3vPE/5vWc/HdAYw8Fcv4iFih1agBA3TO2YcReQfoVDqVw6Ow7ddsxTImu2iIwTD4
	 dEMGZGjcJXA0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7DCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966019358.15537.3236240853868697574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443e44cfb8832a0bd1843e7a251bcd5f53d5d7385b75f9aa418fc2eefc73b6f4
Date: Sun, 05 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759660193
