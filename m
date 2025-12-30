Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349F42E40E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767057834; cv=none; b=LwK1WOMpzBX5IybIhps7SOe2m8UKdjxgPmDXNp53VUtZUbv86V9hQDMLm/3F9Il49gxMDzCUjeDGy+kFxko3zH06r3juLnD6kZFuiI6g8y9PXkSs1HDtHCaWZDClVt/FH6WNf8vIzqxJFG/9/0udGCQ3l0Ndpxr4plPjolG+okQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767057834; c=relaxed/simple;
	bh=TELBHFTqd9Q1Gta0p9BugNPyLCl2tm7PrktmpH5552E=;
	h=To:Subject:From:Message-Id:Date; b=I+rxOMdRwAw8n7lUJCJFSaNSm6Td/U0GdOuiZfo3lFfIDB75W/CRUHTjviDDjLQtmYTnigf04+4qqix30b4VGGJcp1EZgiLmMfklNB/q+8aDZWoOpyZ+cmz7VZveHDp2MCNSoCvPyAYO+3V9WrTPELQ96jf8kZC2tgtIpt4Yz6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DM08xvA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DM08xvA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8916C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767057833;
	bh=TELBHFTqd9Q1Gta0p9BugNPyLCl2tm7PrktmpH5552E=;
	h=To:Subject:From:Date:From;
	b=DM08xvA1ZfsC4uleURjU/2xElK3kviNFsR688MQJNCMHCR3TatzfP1X41ksgVUIYc
	 d0NapLwtIXtbD+i7Gi7DhPrmTpnWsl1IUq7WdVOh+XyqCMBRbuNvMZboCTv4WBQHPm
	 P1CGGEnUGPnE8ClDWClkVWd8GR4SL78HmBH5QwCnWfkl6UPo1K3IUAS6U0gCRXcX05
	 rj5IMNF3WgLWH/EYXHmHqg83Mt/PAdzeXz77QeL4NbDeITSlcwMxiWmY3RO5JpEged
	 yADRA+DTEXWZcDa5wK4buMjP17U0VJZGjGibkh9f1L2AWnR9qhPDMXTokGawCdsAF0
	 0r+mprs3V8fgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92201E94107
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705783357.6894.12043424386452402214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5a981f84d8a859ae28f0661902eb496541bffbe64f4f6f62fb7b2c16597cec
Date: Tue, 30 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767057833
