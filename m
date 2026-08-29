Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8303C3C06
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788037234; cv=none; b=icM/HUKLvr7volATlqdV7KZvJ4UC5kVHBEjPeYcWAOO5Q5uvZurPclapPuudao90G4laD34lFNZCqIxivI4vgMhFqqCAqtG+wNnIwsq6/H5HynRz/GeR5K0i++n2WdBQFALapRlV46y5yExuLWLeskhL58CP8Ut1RaOb0Vrx+jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788037234; c=relaxed/simple;
	bh=ocoeM23syojOAw3P3/sD/lOLu4JTn2LBOL8J1R/Yl8g=;
	h=To:Subject:From:Message-Id:Date; b=FEvKnyvnzv+IcSn8uliC7mI4TdkE/dh86MtbkmcHnRXZnASB/4qh0yBih+i5nE4BgusDgvvg+5TKa9VSPzm7kWyc22ewbHci0lOvrxbMP1q4eiocmD5KOMjH6z6iHCZ1zMNo2n27NR9OLBbNrNwhMMTUUI26b8Ctd3cElHGeznE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1rsAwhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1rsAwhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AA0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788037233;
	bh=ocoeM23syojOAw3P3/sD/lOLu4JTn2LBOL8J1R/Yl8g=;
	h=To:Subject:From:Date:From;
	b=M1rsAwhAZutusSgmYH9LM5lpWFOs4LXohC4shltdmjIIT2R2ik1larxFZAFkalDnG
	 yeAFrw4/QtyrS5ZWLHxIlMtc1VAiJG9Fbvx1BNkTtezJn9azaYfSZsrZza4aVmqJ/5
	 2gwm3drLDb9z9EcD3TrCNk6hC1z2NwJ2uwT3fsl1Vxb60h06R1u0cUY9STQm6UInN/
	 gw5iShbsP79c1EjuVGCKUSCCXcmXdPpWNheRX3TbrArjBr6ZYCgsKQwiMWOWp2gtdk
	 r1C2E6DGR2Oiz5cKIayo9eSC8+uctqiP4/y1SKN8TGqWX7Mth6M5w1HkWb6hcTOr9F
	 5hkGKxuUrEDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0161C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803723368.4404.9766715077389630257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c620916902c13b5133204818b9991da4fdddcf8bd94193dd6f08f088ee09a6
Date: Sat, 29 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788037233
