Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5723E54723
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783915714; cv=none; b=kVQF3WWTK5WtpNUeGnNdLXqATuEegckGWuko0YahzkGTBvnRksQkh8OM/k/SnuR3wp2A9M/evjhhcVsDBCyWAGiONMbUDothbxnKURTUu1VeP5nKPMQndyWBg4bwIwMbU1W6bE3lhv8X7PAJlkjUeyExYv1AwqXmm6iZbm35OLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783915714; c=relaxed/simple;
	bh=y4yZ7M8X3OI1c7IKov2f9O8JvpQUZRjf2HXXZ9M2XCE=;
	h=To:Subject:From:Message-Id:Date; b=Zv9RJygO8AQLzcUzT59TDBJnDrh87MS9PFIznMRWb7SUlpXDny+MXc2n0H03z43DD+xzfyVOEbi2/oSNtgKo2wmrrZH5NIBxjXL3FqedvKM/It3L3OyKxE0Pe/o000QMb0OE5uZVikj27tAne19+elEohaoZZUt7kVn+pPD6mVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYXn2OU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYXn2OU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDBFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783915713;
	bh=y4yZ7M8X3OI1c7IKov2f9O8JvpQUZRjf2HXXZ9M2XCE=;
	h=To:Subject:From:Date:From;
	b=kYXn2OU99rWJodh6OfJClNBW4LZQD3P5ntjvnEb7ivcJl07y4JGsVc+xvBVyVVB8K
	 SQ9guhDDLjIbysXyDrJZHTb2vhMuoIG6IyqCqubfd5DLbqM1S5Pfs5s2luiGnfIyHh
	 yt9FSXUG+9AKe+aMnIWar901ABGjZwwF3Q3ug77zNSSB1MS/ethbTRkVvHi2V2nOqX
	 qqUVqWeecXFKPt1++IPrKQJqi9PLg4O273PLcCt7C+sgiTfQ17At7IN3Cv4eAD0egd
	 Nd6h8ldfnVmeVDYY1/1CqQJV+9VEBJKD1aKxeBFgBMVU/LVTKPA40S6FdH8UyB9MeM
	 w8a0Q3VbD7Ykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48F0C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391571373.30774.8705777323900224681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e010de983e43463f0fba57dc94bd31f1758fb8c9169755a333e5e5888b4d1db8
Date: Mon, 13 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783915713
