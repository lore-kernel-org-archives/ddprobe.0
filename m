Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F191F3B8A
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756526395; cv=none; b=BkmhPt4OBKCNu8NAz/JIvrPPKE3dSq+GIdIwctd98E/4rlJmDfsuZRNAOlMT0NCgrJI6xLNEhU18OCmVzdgTcjl/nEuHBu7812S0aiWOLPs/1WoF+mlTSXMnbFWaNSQBUgu138SBrgV27/LHKwFLnJLngZgLVYrl3qXvzI8yCGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756526395; c=relaxed/simple;
	bh=LeNMXjNqN6dbF/NXo6pXq2gzTKnDRS6C9cGHZ72QZ9k=;
	h=To:Subject:From:Message-Id:Date; b=sTsomJsT7d+OynxVQR8Jbo7e0bF2XusAbXnXnezQdlZd/9dMnrejuSZljhg5rnIqMaay5crUlMgw/u03o/Uqd+A7NeK1WtRrtrC7bI107/Nbk0VJ12LS28GiuVw7zeAwWSvzg2fII2jxQxmO3eogLyzjB4huQ97U2ugNPvQAVx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMW86Mdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMW86Mdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D2C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756526393;
	bh=LeNMXjNqN6dbF/NXo6pXq2gzTKnDRS6C9cGHZ72QZ9k=;
	h=To:Subject:From:Date:From;
	b=uMW86MdtYt2WOHrk17ifPRSpS1HKNXMJQcF2J6DBkXt7/26fXt2SEomVwstkPF3hR
	 Xvm5cv6yOIS4EZYfaT9VCpckV+R4KwSXo5mb1cuPSXQL9uSF2zkO759Pa5W3doq5bw
	 tZDkHtQ8LyneVg/l2Hfe2khMeGjpAmzYql3AIOu9pm4e8hAc75fR7ImNuec2BRIytL
	 TUPmsFVtg/M7L4M+O8m98VzTCjx/mBoDlvIgSLDS5IAmdbkaVR7aXybF/3K+ikwRLR
	 AtOH3qjPalPOevOx9e997NpXAZzbg4aCfgM511pVDhDqzWaBTElwZ6Z8+cMRYmw7sY
	 hF2q0Um9hqQlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386FCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652639357.32287.953438632093885407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048f051cf645844a8cdb01ca703324af42b803b3d14f205fa8ff0ec04c75ceac
Date: Sat, 30 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756526393
