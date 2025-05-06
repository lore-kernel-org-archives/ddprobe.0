Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8BE502BE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746545994; cv=none; b=qC9/igTrlWJb8GQbCTgin27Mo0I+W6jwZVnPYZdIHGPGhYTxytMscAPzBkMmEyTSXSSIFDzfv3PtWs9e+Jtrfj8HwzgBsr7dGRiLGAAZqLCDTAHtkASFtiEEaqtJ2MgecMso+m0P0nw7zhdPb6d/oIPvxknhW60ugGZRT5T7JUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746545994; c=relaxed/simple;
	bh=OCHPR0ZqV+dwM+eZwwJVCRFxHanReUztpv4FzzyMg8M=;
	h=To:Subject:From:Message-Id:Date; b=XT9NvkswV6mvlOYPX9fPrBsfcHyQqFNs8aE5v4rWz1IsSpN6Rn0zumZZo6MwBPdKHv6pRXqXlm9Q6ecLu4euQ8UZ6q1GfTySW4piFPiUy2T4GvJJzBGomEjwxyKDfjgb50vYyE9WcL97loHJg+JTaei9me8zYgsHkwJM9PYncRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZyxRePw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZyxRePw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD04C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746545993;
	bh=OCHPR0ZqV+dwM+eZwwJVCRFxHanReUztpv4FzzyMg8M=;
	h=To:Subject:From:Date:From;
	b=LZyxRePwVJPNtaJHQoT3Km76ELfLXhMwP3oGkJcExdeWmmdGT0we94t1UAPdg9zA+
	 BCSqhZQ8JdLsASCEm3XcEjLPVblfs9L4LtIwZCrzM9hZyocr1dC++xnzvpRxOV5x0D
	 ilomHTUn7X9Aob4E4OJNAiOf1I+BB7p1bGXdmEjfml9mXsKQs3DsZt9JTTuYxGLVY/
	 WzhNvqdMG9SQVHPif0MKOVMmSiqnXfnrRbWoJAKGVjMhqGv/fr4yhNR49FHeiER4Kb
	 BgDetCdzJUkAbTaKWPCD4GEWW5ER3OREWJVJQLrscn1sdTQYwy5S++6a18pTjp87yL
	 4MQ7SWlc5Aljw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18EC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654599357.5940.4286020787971837445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec04b8d87de4e2c75aa1e68deda0025abedc0280298abab2d695a88d02fc6ccf
Date: Tue, 06 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746545993
