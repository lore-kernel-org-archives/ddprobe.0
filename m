Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3514E632
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734840354; cv=none; b=Bwg8XwcKUgIwl74uUqpsCGsOhKEBOPpECLPKx0CdYEHL1JH16DZw3ZNDg5jdJ1ihHQmHhoFDNjo69UpsRhaBByFFwFihfIFnXPOXVOEdsQlDAii64gweJc4U1nM4ijnIBHDfvQ+ba0WI2apqhAEPXYBD5LBgXaaKiICaXxUN+s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734840354; c=relaxed/simple;
	bh=Jn14c5qLV47C4SyvzikxuqYj7f4WMF4o7DRIF/ClIa8=;
	h=To:Subject:From:Message-Id:Date; b=XNxE2rmxpM/y4G5q7sVsk9WfmNc2P6bl908dQ3kxucG1mdPSGXO0dZYP+RlasiKrItEgk0hPQBi3MDkOs4oMqrIfMPNaFtmbFVnDJgrO0/lDcgZF49YyhupPBFmrqsZ/3/kduLFFELDdnIB7+G7tPjt8OSQcdMogcXCaz5s3mSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQmhO++U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQmhO++U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6372C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734840353;
	bh=Jn14c5qLV47C4SyvzikxuqYj7f4WMF4o7DRIF/ClIa8=;
	h=To:Subject:From:Date:From;
	b=UQmhO++UEm6Zb8u9cVJqGEuJD0W7uOqsKDgdAkyGCyRiLIzyPUl444IB70XPCAnFk
	 4417RZwLF2Y2lxPo6PlOl695xPXkGxCEF7Qr5oQS5Mubl6QO+C1xoBvnNBV9h+67Md
	 fVvjI7bYdAk9AQujYMgef80hqSpVQ9wQt8IgG0Pcv9MLMzSe5aU8LNNblVzbyHEIZu
	 dilZWWQjiEI8vQ9uLrv1PiTt8X/YvHRSqlReHq16MjSiDr5N72bJRsqfVTgYSJhP8S
	 oS2ZnBNzL3BwWu7Nq1VunccTKSmzuCJeSZVOpFaYpo5Pd/TBZe3HSqthZuJdXB78mz
	 ENAehJC3KzzfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92086E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484035359.25643.10910492157605395193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c47c5f9de6a0c3b196fae70a21325eebabd9b037405cd26a566ae86f1164376
Date: Sun, 22 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734840353
