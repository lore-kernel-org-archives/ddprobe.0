Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B472D8379
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752757194; cv=none; b=OISzdXzvP/7tsUeISY4SwP8rV4KcO2GVCR4PO+YH/yJn5ejhKbf0zH0OFgG5ji0Fafhica0/MV9qxCni/2loEDHoEKhR4gkuPRaKriNeeH3xeW+bETxv7iNaPSlrNIJoZGPNV0p2m3cXTYqq8VtkyVVJ0EMKxpMOzWbamkp+eBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752757194; c=relaxed/simple;
	bh=F9m873xGoXVP9Orcg0m8Huw4zdtsShkjhTD2DNrbQxs=;
	h=To:Subject:From:Message-Id:Date; b=Aa3cre8CiW+9IskuojIs++SpbaG0qNcNEGCCfmE7vOv19YlLXfU2JyHM6fIQY6vAIB2hvQdYmxBHmIJFB2FhuD0z/VtZ83FUlpP2gS1LLoPgLC/0smo/rBaQ/8xP2o9SV+XvlY+5e5DPg/v9mmcjJCf0XKiG3wyCNqAxiqD+ITw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mw3d81kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mw3d81kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752757193;
	bh=F9m873xGoXVP9Orcg0m8Huw4zdtsShkjhTD2DNrbQxs=;
	h=To:Subject:From:Date:From;
	b=mw3d81knHYzuhC/2EV5QzDJ1oNDzjtH4264QL0jPqPeiQdbwpc4HgCgCVM4ZNe4h8
	 +P4ShckXZeoIKEyhPbk8GwHHnir/qOC8Hks7YahwwpJMcTRTUq9sXvhgamJ0BFgcT2
	 EEu7//nwldncmZVyC1bJPBAHDi8u/CttUeKsEZS1JKTL+HeSXT2BvssTRFol+jfkhF
	 avjqPLXIqNRy368c3DgQ/41vt2Jyv7Br78OEO55vL432Yx74EJi5NoGmVpXcQasrIF
	 WiAtT4uKg/QTefpNNRz7b4fLuALLGZLqkEWiJXlDypf0PihEd+alyDcS3P7u52q1TS
	 GKUqmKKALXEpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97856C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275719360.26940.3230706569059962164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7825527b0d0db7858f60127cd4b79f534b6f0cd913d680c0b7f9bad2fdfc7737
Date: Thu, 17 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752757193
