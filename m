Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33153383
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727658354; cv=none; b=ejvJNiIh/NOmsoJpBv2mPpbWCymqafiNkISkpDvghSNeBIiv1Y6FhKSfI9qdWEXYf+ZORydTi/LCTbjOFHthek/sCTlytY1d7NjZXhyJI6BlqAA8ZpLX62ZQJr+B+JbkxZOZwOak9m0xvPnK9OVtFA8+LItZ4MAYeamjBvMy3Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727658354; c=relaxed/simple;
	bh=DE6DWQvvLyJXiiVIBN0lVo+wkQ1v+l3A/VcRMKrIeHo=;
	h=To:Subject:From:Message-Id:Date; b=uGAV2GVbJdvYc8voJtUK9BLSZagJsT39yMfMB07A7Ti5ccrdbKcF1HnmUQecfm0fun95+pIZpXsDAD57ORWEoQ+JQ+rxqn32o6MW1aUd3UjQR0x6MEJL3e4/XOMe1cKGvnDgjGCz/bJ6mHMWbu+tI7rPqpwBpCk/jaFOpZ7MGpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgi++Twk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgi++Twk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5B1C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727658353;
	bh=DE6DWQvvLyJXiiVIBN0lVo+wkQ1v+l3A/VcRMKrIeHo=;
	h=To:Subject:From:Date:From;
	b=kgi++Twkz6F8Gq4ZvWz7diMLG9dH33Elj7a7D5QEHKCKS65yxEPduxfu8IMscKWSv
	 Ipzyh44gVcWmTI7rLvhHVRYsXYQCiJkDCPEPQG9zNeavItqV0fR444lMYKL3Fa31f6
	 f92PWsOBhfnS3+/urGpDCdi40q7mEJ6Rd9DsFbmpi57WhrxU+s0V/Gr37WXFjuwYti
	 dsQA3mJhSqIJe5PgnK2QcV1qBGGnlo3cH+/gn8N7QpZwQfsF/fd0NAH+KjvsyPE7eN
	 MzWmoB+cbJVLDdDN8tsIXFsGu0c5h2ClY6yjZWK/kTKPyySgKDhjxAsKdynOsI+tEZ
	 pKnWHDAX48Qaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97306CF6498
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172765835358.13556.3880279209150778673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568a47c2ad21522eb1ef65b518730e014cc8e8e17e950d08690589453fb84d91
Date: Mon, 30 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727658353
