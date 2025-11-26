Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201EF29E112
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764151374; cv=none; b=VA/HAWAdkyrsGJK/nxI5zANqG4FOKT+N82ayV/WYxY1aZBfmSSyjwm/7bvwBSvbQMNRfELj1sqW0GKdtfQ+fLxgsRduyAGjkwsu+QtwNue73DYxlw4JNR+7mryhFWk02Qh3EtIg6E3jRPHVqxMCv0hDyljyujaLVTZLiKzPAb3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764151374; c=relaxed/simple;
	bh=q69qLa0EQk/Rs3AoM7+l3bh4xecrUnZGS62j3CxnK4o=;
	h=To:Subject:From:Message-Id:Date; b=EPKFqXPpnKLZKfXc45yqt3CYRF37nBibDW62b7GAPDT/BD1rBOJ22jQSxWmmwU6md+osYa/PQl+ySR7BTWZBo5GOZQj9uhRyuNRT9D+H6ubVA6ryKnPHU1AF7yRBWbSwv2RU53KzIlxTwS1u8T5zG2A6AaqgjvGhYUi2lo7HlS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf9sTRz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf9sTRz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FB3C116D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764151373;
	bh=q69qLa0EQk/Rs3AoM7+l3bh4xecrUnZGS62j3CxnK4o=;
	h=To:Subject:From:Date:From;
	b=lf9sTRz4ppk6GpeCgwUD+BhUSNjxn/nSQswGiPqGOdz65TIaC4E8y5pVxjA0lvw1a
	 rRBi91f8Cw04CILTfFyvuivDfSja8gGQSQU3kKmDYk1PkRfpQN2g8BR14DP5Nzj9n9
	 8u1m9d7SB7LW2mEiCMxpHEja8h9BjJ+8xf3x9o69MuCz0GKavyVJH3RGO4z895ke/Q
	 MU9Zvx0piPA3fOOPbGv0WlRjAJTBZZ+KC4TJ1Irf0cSVFYD+p0DggiPUU78KMAY1xL
	 MJhdqy70QdiXOXOipBddevxpuFYg09+HT6Qo067IdeuQ+MLrQdzF3zJ8P4H3Ninlen
	 132/DQcLCb6SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94446D1039A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415137359.32362.12938047517557152321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52fa39341c38ac937221085d8db8c2f871a2c829172e026eaffd8f7aa6db3a4
Date: Wed, 26 Nov 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764151373
