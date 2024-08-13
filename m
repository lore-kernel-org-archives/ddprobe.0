Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190BC13B797
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723553754; cv=none; b=Gnb0jrSCmxOUZtPjJh985xMRJqfaY9sx4jbu2wwUrnlLi5u8iNdKWt7rC/rLU6/gltS0oey871YEQMPLGMCrMLV0wJeD/guTYAxXFdSdFa5hcumkBwxmWmyYWy/R0wd3MFUSMq8V+BHdnofEVAYVqdUACxjCf+CBJrzeaL/FprQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723553754; c=relaxed/simple;
	bh=5vEL1Saw7tf2r5C41VkEvU3mBRWrR1cVuX/svlFZWfI=;
	h=To:Subject:From:Message-Id:Date; b=LaN3r378af3jk9quql6xsa3bNhvKndG3SRC9ioGZ+Y/Dyabm9AXAr4M7epbcMC+hv5v+9L2HT+7iXFzjx/fR6flJaSAHy28kw75hz6RoLr5fDRCtUJO9IpMKKssfTqRmc8TsctbziWjAKjnWDlLxVhYuYVgBQSgUujjmqf5ZR6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsTkzSbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsTkzSbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7686C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723553753;
	bh=5vEL1Saw7tf2r5C41VkEvU3mBRWrR1cVuX/svlFZWfI=;
	h=To:Subject:From:Date:From;
	b=NsTkzSbROPTFWXynQpLPGLQo9k8udLwm/MKukeepnlJxXqfVzOdSP0H2nbFgErcea
	 xHZptDz/bIPYkwvbjhOiS2G09cJ0v0t+OWFB99leFsYXEXSW4AsfogMgysYwAm7DIN
	 MdkzFQsjXaKMBxtAHw+S58db25kYiLDa14m5a1Y6neuMIW4hlviUs+vEIDwkYTPc1F
	 3IWFU0KbXohNnS4xS1YTX4P7utSRyYH3Pd432RpueFoakajMv21xMRbPC05sXICx1m
	 +B0s2YLqiXm+qBgWJAG0EzoineL9WqE6M3eWJFcIpHIaNL0HWWJbHUAhXTiEz+pFK+
	 GLh2xBpU76tEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A0C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355375358.23005.2682912609204977757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71d53ba67562985335576eac99d13145076495c16271611264b778c13505c3a
Date: Tue, 13 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723553753
