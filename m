Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1662E1DFED
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736858154; cv=none; b=a55FdtlD4ghDwY3ka4KEXUSW41+uh+sqfPoSYAvIeKTH8RTeXnsyJSzl2ZC8IiMDtdF4hqegUtbG67sM4kFTLWg9j4eUZTqI/SWcs/jQQbl/lEC32xAWQ2+efK05Usau75S3FVAFKzoa3e22432iQoXaMoFHekL6oZoSpZCgLdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736858154; c=relaxed/simple;
	bh=1tKQN9/lg18gyXaJtTS4qn2+Psw5kk2x4+bURnTlEJA=;
	h=To:Subject:From:Message-Id:Date; b=WMtw0dKSWaIaJth6jBNbS+ogxKb1R+3ByaX/IV6t/XsjFCS4h1UQTzwNPDk3qMGsZrZJ0U8QJ47Tj8YVjXOc2T14xtF8fEFvWjvCsp9qku0sAd8Zb5ZzcRh9gi/n8XmQ+lTDngvlcO5hZU22s59rrUorsGKMn4YhFY9QaUnF1Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPYvVOOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPYvVOOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD25C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736858153;
	bh=1tKQN9/lg18gyXaJtTS4qn2+Psw5kk2x4+bURnTlEJA=;
	h=To:Subject:From:Date:From;
	b=bPYvVOOeRf/olseXMppBOpvXmPn8X3+exQlVLwxoCjJSqqHcdQ1SUPXx8oyMp9MS+
	 6w16HAy+zo1Gg8bKnYZ/E6YKP0uNoDhpGniWl6Dql6hqVc4+S1AeTAEgBzvJfocSqu
	 qa5s1uKD23x6cB3YfadcuvPSpdSion3Ljsa0kGW6DkytmSUj/IKZQBct7E2di3IxMm
	 wljkU/vuCj5RaF0yr4XbJ/zUPl0ny4NJscvJeE0rBRF4DDtMYbu5VYLJh21NMHhYlc
	 k8nunrWyYxwUlcBSbdYQPzNtZNcH1ILJNmWILB2t07rlP7FvVENoFZlJFLeQB9aDMp
	 bBa5aylTYrSBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF78E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685815362.5622.17887952857687069853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e16d0e402cf0560f2bd2b6477143eae1b92efbc046dddb5451d398783727b16
Date: Tue, 14 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736858153
