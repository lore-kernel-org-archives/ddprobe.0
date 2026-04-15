Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BBA3290D9
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776247654; cv=none; b=gvAp724lk3THF8Czdm+LRveZD4GIICV6Zo0IrIKBPpneq2s6kCK8EBCOgbR5lIaiA0AHnJVTdsgbc8058B+lFN6lZQ8E7qnYJoV8Z/5V5DFOPPZW4naKCk3qxndIRGPWEYUHm2PZVBA3RGHwygkzXSRl1IRaevPOeLMDjn4e1yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776247654; c=relaxed/simple;
	bh=b/Hht5v+TULpUAS1h2/+ouQB8sF6UkixAQOFRr8WnK0=;
	h=To:Subject:From:Message-Id:Date; b=MgHTSRDIbwOpqxiWR8DQx/Lx96JLMP1ktzMtHJeDRmrO0w/v4wW1YPKTVRlunozSWOxnzf3pLcQBmj0iydL6YFP1/0zmrjXGmm5kCI2jcCbIqMeMfHxCQ7izLZ97MirTERVMnba/76ifiJKaibe3H+tkLa8tO2LDQrX9FqETVks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gm09aIxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gm09aIxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC582C2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776247653;
	bh=b/Hht5v+TULpUAS1h2/+ouQB8sF6UkixAQOFRr8WnK0=;
	h=To:Subject:From:Date:From;
	b=gm09aIxKDsxNuKw100+tpxcF0dd0QW6+F3dVYow3mOFCGCD2Q8vEwdOOAcza61Qmw
	 wwGW8Bt+29SC+EGHAlrYWJnByszM2t5XrUYknR7DTsFw4fh4022bTdOYWVX3R/bmPY
	 y9Fbf3W+dAm2drvjRGu7ijTQyCa1tyz4OT6KriUORHcbdGjoFUTrihMGVpG4CRpZBg
	 ocYvFv4qXt0WvDBkTu9abJ68YUxVb+yRDHpOqfkiKfMbbpBS3E/Rw9Djmo6kyS8Grc
	 CmqkKxTCo5g9U11rKKRGlPYzi1O6WyyJjuDMglDzcteLsHPRcgod6tAKHYUis7SpI3
	 9MXVbPN7OuxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB386F41986
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624765369.24087.7639541913778575289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de52ba8adf2eae4e85974f2cdf5ceb6b48c6b04fb7068b2196c43ca34e93634
Date: Wed, 15 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776247653
