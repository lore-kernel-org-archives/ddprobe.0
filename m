Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F26931D39A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772453094; cv=none; b=WIqN/BqXSQ/Xwl6Q/mamM4ROTpjT4Xr1ANUmOVUnpIN+ohvr15GhM9MPHGYtuKcpJgrRDxQRDYn9cOX5tu6RjMxp87XWCQAr/TpBtXORBnHvy74QWY+ee1LyOdd/66hcriu8YtN6EFQlQcpfBX6jgWB1TndCqENaK2cmJbFCaEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772453094; c=relaxed/simple;
	bh=El3LLgl3s0auxJ+HA0UtTSOrxYe+xQGe2TWBXbUczpo=;
	h=To:Subject:From:Message-Id:Date; b=oPf9daszFfPlSmkz5wXSKH3ijMNbn3GRlt8mvIVychKNOfuwiRxv3yZiXSFxxM8CNR0SwFHowP1Bvcr/zIpWN80/dzzKWrMPIk0s2xVZXIHPKEZ7fT4If+hCGVfrOO/oBHeNmji2yy/L4Nw489x93eVjUAlzANmDu1bPmDh7gnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xcs/lIs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xcs/lIs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D84C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772453093;
	bh=El3LLgl3s0auxJ+HA0UtTSOrxYe+xQGe2TWBXbUczpo=;
	h=To:Subject:From:Date:From;
	b=Xcs/lIs49Wrz19NTJGNmQXY+Ab1j9XBeWTYifrsNFUNha8yCgvFsSTrgREqqdIxUl
	 ePsmrj4o5SzIz6mGO+j2LLS5mPbpPUeTfGYOXf2V58ZszmT5hNIeCVnvPW35k0Z5LH
	 GpKEH5pAOQNAFCMPjXfhm8Y+qcOyyJt6yizE2JzfneI7PdyX8QrIUqO5raWPy4FcgD
	 ovFkSSn9f3DMoVG7TaaDs6Zkak8p7FVNwLhQkerad+5hGi/twHt4KOLO5VCK9+BQuu
	 6AS/1f7tAKXq1+2qlFSGwWKa5wS3d7Xx9ylBnyuF16K7z/J+LP6UrXuuH5NZy+J/5S
	 x5pnHgtsvi6Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE833E9B36A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245309367.3058.15911299920036072844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b913000ec46cb4a17542f1cbddb0f887500c6370c332e1a186427064527cb5
Date: Mon, 02 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772453093
