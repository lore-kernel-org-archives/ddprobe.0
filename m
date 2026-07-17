Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7CA3E51F0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784281714; cv=none; b=Yl1U+uP4uGw3pKBEoslPuwdkN72syJ/fxYi69oWfCeQroXcNgOGL3+JaK9RIRMs1+vHvF86/SUj31m7HHQUdkzqL9+a22WoHTsrsap5pY4ybkOAZ70LmnUP5TduwWTXkyct4SV3bjeCf5eMwtKXezY7kmin5JraLxc1OqSZeo7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784281714; c=relaxed/simple;
	bh=I4BZuAFGpbcKGPCgm208mdLLoBGEZ2iUTOGGrQiSI3s=;
	h=To:Subject:From:Message-Id:Date; b=gU5vSHass4xRVliKuPEBIBdwe2ikVi1p8MLlG/zpVlyOsclfpBECibuV117RQ0LMdQgKSTBVPWagheEq7/OAXd72w8gLhz6TeSqTadBAPGiQ6NMuj5uqnqHayH4QFDixQBGskZz9Ps2g4CG7Tj90C4bWXtL5+q59WpEyJiU3i3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/IsrUkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/IsrUkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F16C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784281713;
	bh=I4BZuAFGpbcKGPCgm208mdLLoBGEZ2iUTOGGrQiSI3s=;
	h=To:Subject:From:Date:From;
	b=F/IsrUkAWHG83ifk2yCPvZUdzAaRJ/hFybiWHZAPnaM6yPFuGYCN4lbajY7Krg64z
	 hPm36pCK2xYo74RqY612cBvcikPi8q+ZCNrK7Y7NSnahmsH8b2WT3NMe1XJbHIsRzG
	 wKnRTUkNv5S6awGi4sdNDx+swQxscXNdYxWwlwzW4dzdAvXwO1qcQjfgggZWcm/FL1
	 ylMi/SOzFK/pPXU+Roaqvd3z2e6OnNlm3Fah4SOb1wrjRPFtOd4B6dnvROb9aQscSQ
	 B1gUmgmdgXmgFVgmTISQYKZokrq7GCrvZ3QS4xZL2kp/+a4FGMi2bcSYpFzaUdLfR7
	 uGWt7dlMBM7fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B922BC44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428171374.17620.8637768528297877546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3b56e5cd02efd00d8c5e6f873e31f5e4e7be5513b5cd5a31a945e79b4f5ae9
Date: Fri, 17 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784281713
