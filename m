Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1352D3737
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767153234; cv=none; b=WrAsiwpt7mDYHowc77fRNJ1V1nNJbVfdqmiE2PU/Gk1V8TBitExpUWTX2jrgyYnnEIC5lNSgryfa1tHjurNY0orCeb1RZACNSzF9fLWQB/5R3hxxLXLfQHtNk2tWSioLMMwBbmDSzsLvMFzvNlVfNRu/QjJ7+7Gef2e/wbeFb/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767153234; c=relaxed/simple;
	bh=Z0YMIaLFa7NfhUPBzTwo6sZOIMwEfanmDmljNWoOYFg=;
	h=To:Subject:From:Message-Id:Date; b=c9NBVoKllXKzkt6EARE7ta23DGswNp5XcEGQi3hSY8qyinSPX/rjwPumjq0l1SE3Zl1F2nW6H3bTPlsJXplbGYV5GEBrs5OznM2aBV56KkZCn4ObZfeotfudXl1LVfsPVwHB0qEQ+8rAiqKDxBWCmlaGbAmMycbc8z/ag4Yk9vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzUCvAfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzUCvAfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFAFC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767153233;
	bh=Z0YMIaLFa7NfhUPBzTwo6sZOIMwEfanmDmljNWoOYFg=;
	h=To:Subject:From:Date:From;
	b=gzUCvAfsZ1EvPIuL3T5JB6HTzIwpmH3nO1KavHh1dICeuTwEep+8yMg0vRarPAGRE
	 FVVAif0C0t9Wi9CWhMQOj3zpoFts+Z5ciwngF9aWTItE4Qda+g7BAe7tTeX7ewdXvu
	 WXHSttiZ7vEbwOCv08eWN72UVfu7LLdXYYRUWeJz9g2jtXZPY7asVlQ31LoeyZUi+v
	 gnMbwgZYAurmCMMazd2Nit9jv3oSWzoR6JVJk++iWjUdSDpON2eLCtSwfH+EeXXAqp
	 PxeTzw5f6JRoHa+OQsbEL0dTTZKwBU8rOzedLRijIws6wliWCpcMW0hqzAP5rj/o7k
	 bukI+91BIOScg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EAE9410D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715323357.27884.15083210825716899637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afcb5cb4dc1a615106053fc0493c0577ed66f0fc63052babf19a4c03ef7701b4
Date: Wed, 31 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767153233
