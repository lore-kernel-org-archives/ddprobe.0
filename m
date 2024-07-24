Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30089208D7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721798754; cv=none; b=c55qMaSoReR7jv9mqAfDAzKdjgCnlzUQkpg1aiFkoALb9JKLKUqCRIn31S74oAjNp59X0xgatcPA+QpblPi9WY/4Lg44SLWGcIx+1g9ILAf2zuTCx69sKxOQn/eYWYNdrGozAfdJQBNtTppIqqQ217vBLniQnsJo40BmkY+xQqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721798754; c=relaxed/simple;
	bh=1yN1inmyuqMLC7U/m9+MWj5/KD6AXAvgDpAu1sm6JPA=;
	h=To:Subject:From:Message-Id:Date; b=KMAdheq+myRi4WSx/PLDYSDeHfi0yPoJjrlNqneMgaX2XgXsiir+2xCW0lrhJ6sI5iWxI1oiE9CtVQ8Gi9zXTxXwq+wmBYAc3KSSOqD6TzJdYc44VC4dRiFJTrx/K6nITgVgQyozNPWsE3cuQHDZyewe4l+syvMXcQiSkZo0zHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gd6jX6Tr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gd6jX6Tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83C8C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721798753;
	bh=1yN1inmyuqMLC7U/m9+MWj5/KD6AXAvgDpAu1sm6JPA=;
	h=To:Subject:From:Date:From;
	b=gd6jX6Trvhb2WYoXTyPJBvA+d/JFYXw4CpTuuDAFA3BeILxMbP0TJCQnHnBqa7lF8
	 BIT2ptssool6qT8FcplDMiUVPVU3aZmKk+hSU+fTgn7kOdmRSs6+U1G/fO2jUtfSrH
	 u6NfELjpTxxd2RkMzj5vLsLHJMXci780Plr+fhmfTK8QJisXc7S1zjorPtn9CA130+
	 +j91moi9PLbqMMTcG/yQTIyRnsAWKrDEoG8HJx0IEJLK2xP/pkd7AC9gU/+ke9STU4
	 W2uWeEBihBJQzNyqyB6itVKOp+p0jS6tK2YahFwfRMZqYymU22OlTRin6LIs1QiToC
	 1eg2Y2zHr2lxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3935C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179875362.29700.6713744168802637188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc2295234edef6deb4d1ad935a653ba6f2756c7762ac7cb45d359cdfc452064
Date: Wed, 24 Jul 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721798753
