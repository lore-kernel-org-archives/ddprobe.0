Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A17D354AC9
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760885394; cv=none; b=Alh/k6EXmvJyP/oZVCU5iKmv3MswRnENvm+I+qQbEyA0dC1a+oSSUv73+ewu3giGmEugvyW9lJZ3RWRkcJVtsm9xRqupLhK0T4SCjTepnSKJx9h2OorAQ8BVDeEqcl/WSJt2TqYeq2Iy1m9JClVWYPXLQ5MMDbcw/aBuiqI7uFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760885394; c=relaxed/simple;
	bh=ire8tZz6r166O2tvTItrEXp1Al9AK50+6EWTNUkSEpQ=;
	h=To:Subject:From:Message-Id:Date; b=TAmO2S1QStPVjN84EXe4S+N98unt8TDlaK5jaEJZSQtf+2J6QansKwji4mPYP1JO/E1vF7jUDhbFxjDe67RvpeFDVLDs8Ln5gSJaDQvFO3QqYtHWlwepNd2m9DLV5o7Ob6jXVDoZp/+9so9Pln5IlFs77j6MoZUAiBZ/Az/ToJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkXUboZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkXUboZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FADC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760885393;
	bh=ire8tZz6r166O2tvTItrEXp1Al9AK50+6EWTNUkSEpQ=;
	h=To:Subject:From:Date:From;
	b=gkXUboZyqvb+3ZtD62gnq56d99xPTWYC34pv8PqpffzHyTvJG4X8X71/h87D92rz7
	 6MEWLOtkvO4YLITz8vUdOCPAePePxP74ikA7F+J1vc5yRK3mdIaN+C8DHeLohq1rLw
	 mHw/fa3GhKEAZIvJ2kUZ71RDC0CP5PM4bxVQmkS/ZPKP4Y2AWCab7I0le7Msp4INtz
	 ZKEHrky7Q23gVWHzjNhmC+nsPUErjviJo32vQfxiKOlvotg57cyRgaXU2edkBPXoy+
	 Zif4i8QtubKGw5///HQEC1jKS4Xk2mJ2xfzMbl3tgJl49XWMBL61XQjPGFJcNJZW4j
	 twb3JLiSl4cyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94193CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088539358.6838.3866531628188630774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67869fff321288896a2ac12790b59a8f1c14aaa1c1a3400fd7a9a186bbb32400
Date: Sun, 19 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760885393
