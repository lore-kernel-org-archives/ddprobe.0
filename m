Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DBA3F4830
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785000634; cv=none; b=hDGKLo1Q4Rq1+OJ+jmYv7TGxst4b4yxARJSzFxP3F3HCc+8DuKX5DtJyghnsd6a3/zc/s+qqGa5+ltKnQzPFTFWTC4xKBDoXHw0SYCYKDpGEyNmUq5ge6pEn9n9ZmBX26ULNewGUHSRdQn7P+iIBcq381HRRWbjfx7SDVMgauXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785000634; c=relaxed/simple;
	bh=1vClQt4hCGlTVmo7U+x/A2crFgynY4VvnwW/EIWs52s=;
	h=To:Subject:From:Message-Id:Date; b=s8S3wUIKPm8D4k2yugTmbemi8dP7QIfS2G7OkLWFSLyz0ryJ1z4Un+gN1I+0Ni4gcr2LVZbiTm07D2mmz1XXRqzV3z4coNeIq87aTR3bB01uYE0JygBXIpEGF1oE/dGwt+2bCR/5egfj/jGlXFqthLp1Wbrc/cEXha3MFoFkbvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbnNYB1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbnNYB1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFABCC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785000633;
	bh=1vClQt4hCGlTVmo7U+x/A2crFgynY4VvnwW/EIWs52s=;
	h=To:Subject:From:Date:From;
	b=QbnNYB1sB2nE2V5QarQhPs3CWnjlEcHoWqeOQCkba0J3lvseXOjtqtE8NXsdubtNb
	 PAxPj4ipMtsNYOQ8gv4lR3ZToiGLDSdupezdie5MC5k3Z3MD/5w1Nr0kurczN5lOuy
	 UyOweXIO20Y7C5NGkJCxZuPMRpYhecgyNxAY6SC6k9h2rrVEivRmNS7HyfjzQ7IDoH
	 soVSmzNKowqpwsUm3ZqxAL3SoDIIASnEiMCpb6gYH5rEK2WGBeYy1F9EVpIbk1IYbN
	 keonsBUzDEb/7v68wGM8WOkUq77r85Ggm6dVV4XPeplL4jiqIXNag10NEa9dAo5I2i
	 L40dFG3Cd+KMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE38DC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500063368.19892.16878904646454497739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d81473d3c078b03bab84dafe81b1eb2c26420ef5a9376ebc42a29e82420c721
Date: Sat, 25 Jul 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785000633
