Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512B16CDB1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715085743; cv=none; b=fnqNwNWbELfN1SkaJoipTP8SHZfpxBxYVsja3LCPd4GP/+fk4bxidvp3MtHFERG2xJl/DDbulzst5sKodgAUhr56yoN55BRVZ/nRGCGEeh5WYKBwP1m6rTRuGL0w7LHMtPPlBl5WHNisnUXsk4Gvol2uuT85kVLU4eZXDxi2el0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715085743; c=relaxed/simple;
	bh=CZlvte11OYHJAZZMT3IWTOYZ0soxtvr33JgF/ihRzQY=;
	h=To:Subject:From:Message-Id:Date; b=rkGeVjFqdb5nFtz2NsVJULw+i612o1HNDbm0wI3dSuY+n0c9IJT3SqRn8UIBllFmn6te98X5+BTr6C7l1FCcavzdgd/zq6Ph14/VL18jbj7UXEhnUgjL8FfiHA9d5voX7u8RWX6VVk9kPMqADHH+Bb9vHh5KakhFaVZDNQBG68I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abqX7hxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abqX7hxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5643C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715085742;
	bh=CZlvte11OYHJAZZMT3IWTOYZ0soxtvr33JgF/ihRzQY=;
	h=To:Subject:From:Date:From;
	b=abqX7hxP0TPIfjtucSa5WAV+XughNhQllrpjirs3LAnqGT3sTsif4d2e9vm+tTsU6
	 hIFnStV+lJNOtBzFIzAximQ/pcpKpLRoY4T4/mYu3qE1JH+d3MsgwcN8UF5czGbeRl
	 GFQpWwd0/ouRaL+SSVpuzYL6ABCeyhAQj0XxucQWVVB55+rNfibbh8CjwAt6ysckQ4
	 zrwl0MkzFq57ppEEUWAvUCsPqU/xowWqCG0H23uXWaCWfKHli/uZHQvXsBUzyxw40C
	 oF43/Vkaoxgf0+6tWf6PxMcPYq70gq4cxxJ/x4wLYERD3ds0HTc3C4AzQSzShD5+vJ
	 nmSA2sIDxursQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBACFC25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171508574281.19638.4350438042565867758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5874bdd3592f3a3f92bb41ca302d0f716a2627f509aab69341b14e8856260546
Date: Tue, 07 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715085742
