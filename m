Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAA716B3B9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718959343; cv=none; b=mDwCgWImo1Q89HdC4DS4YvTX3iR1jXZ5h2Mp6peJ1WJeq0RZuDRISpFAb8H501eTgvu9ffy6TE9p4eJ4Xj4UE3z4WtxFmIF0Qt5EKSc9M0xHqhvOY+5Ip0PK4zmlldqyljVo0k23xy5hkMT2oB84Y2kG0AJoj5bDzKVSbVgEEZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718959343; c=relaxed/simple;
	bh=Syol4LHxSKFqABZkkKB4MeEBmTG62X/zaf19ZMparFw=;
	h=To:Subject:From:Message-Id:Date; b=hQSCn43VJ27Eylx7fpQ4ShUWjTcni3Bm2u6a7lF6/6Y2Pps7FZiBauFafZfsZ9poFUk1Rr1KL4FkjspDi2ss91OsLnp1IbifFq8xyV9Io0hE0+/BdJ9rLpLLYLmR7mXBqjzPBz4Q3OxuIm+QqYhyEQ8vBqmxtJas6HeswdeUmRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5xJmYYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5xJmYYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BF7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718959342;
	bh=Syol4LHxSKFqABZkkKB4MeEBmTG62X/zaf19ZMparFw=;
	h=To:Subject:From:Date:From;
	b=i5xJmYYyLpMMQL7WMDpuAE/PSIMpBbqwjJDM21J2StdpBxljE59vQqKqyqV4bNlyC
	 QAcPw2wal2S8LESzWcokmkMpMVs93lUL1f6jrzuEOuYkxmU2mjKm0HNeHjiBxd4COZ
	 XdAG2fVHN2B+pi7CTGC2HfeyvQ7kGnHdZpl9WlcYaWn8oFSsDbAfWOprQvNEv7iz/w
	 HklidMuZjNC2zeKPTdKqgIlPWPe9VVkgeQsTlLHrQzOJVJxbdcfGR9k7Jq2UKGaf1Y
	 Ud1dkhPP7sjLnWAYpuE/dDMaRgPTeEc/2REZIt4j2GqvVjPidxtfwUzgyaKtCni14j
	 Me1gKeFHkaKWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7E2C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895934277.24024.14953643715757664781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57bcaf4844a5f7d879c6d7e70e07f41ca7bf0050bd789216df72494ca216b02
Date: Fri, 21 Jun 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718959342
