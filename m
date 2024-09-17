Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301FA188A16
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726599954; cv=none; b=nHOAkDRbvnWcUfYzjIv6f/kjgAfx2oTrbAxjV2gfGA4ZDUIbLg2cWtXCfo3XKnBSft5zeuQ69a0sILqRSY0HiXvkWiHE4+t623WLQN1UBnHKzUqtqJSlAAwZOPonpue+1mHjbN1nwclJfSU1v6Tt2iokm10P4SrMBeQiNAZIDek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726599954; c=relaxed/simple;
	bh=EaruvEHwk5eZo4l+eRsZbpPFrTGDBH/Tut29w1gph1I=;
	h=To:Subject:From:Message-Id:Date; b=HcQGZ04+ddy8d6YVR+tQnpJgfGxIRl45eFO2wQzC6bKQJPRcWTbOqMWoWNCFcXGpG3ZNp6pOwiSndFVHhXSlyAv5EIMMa3v28QadCHXyzRGgADEKQyOvhAWxRbEVBnXm58cEnWcgSXrxpPNkL6dkS0/Zb4MZ+jhEK/nX4aw2kP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmI94fte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmI94fte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B1FC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726599953;
	bh=EaruvEHwk5eZo4l+eRsZbpPFrTGDBH/Tut29w1gph1I=;
	h=To:Subject:From:Date:From;
	b=TmI94fteOL9pOxmITj9QllfmbvcSKcKCp4xOK5oAbhE1O0pqBaJHyDxn0jDlqx8TS
	 /RZIy8DzS8zsjvH3jEKb7v76IERjrXohi0oSBbhqc92BN8CaEzCVJzy3QEL7HeOvta
	 RHPG5VYO9axkdUmCvItsMQvK8VDjFh382kv0swaUP/mEu6WXirqXfveJXEnu9VtL3i
	 UaeWM96EOZxkdRtBS9mCwPdKzWvXt0g55XBloTXBKIGJwMzXcYdVNz87l3F71ywpf7
	 3Dlt0TJC5Vdab93HjxueBI9VV9/94xHXmYbm9SbmqifPZEQwxfPJMzZ9MgMVl4hAb1
	 XypbYWwfFcYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07D4CAC596
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659995362.21033.10486458672844636691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a22f8bfa738c50ef87d9e8ab52fea6ba7fe9a3cedad0d59fdf24d3fb870613d
Date: Tue, 17 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726599953
