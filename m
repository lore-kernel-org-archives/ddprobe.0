Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B172505A5
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748345394; cv=none; b=JmVOev4+pQre7IDszz2b+qkLckuykEv5e65gVE6dQGttqfVWtwn1OB/YDyhGhTMyJgx7P8IQmRlY5xC5OHMkWWbiITpSk90RyJ9mziiRThsfLTmqov4/gqp7aHJRUNX8Zlf/jF7Ax7VYr/fW3cRV+4xAaTEFOYbeF8ZgkZ664yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748345394; c=relaxed/simple;
	bh=XQS8RKjcOgxLrkhkS8cKhwdj4A/0f3EhnuYI5zqCjo0=;
	h=To:Subject:From:Message-Id:Date; b=dtFnnv5dG+cfI/IJEABaUabYImFDtCmCBHa8dIHmdLunu2a5YXWSzJmKmXIfrtcm6xjaLZNhwnf8aB+q6R+fOvEyPUyhpSUzfzQtZvc/e/WkreEEnfEX/+7zi6QRJ0Gi7dwdRiVinWq+whHfuV9YmufycwOry8NOmIHJo8hTzTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbYVTbjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbYVTbjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A030DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748345393;
	bh=XQS8RKjcOgxLrkhkS8cKhwdj4A/0f3EhnuYI5zqCjo0=;
	h=To:Subject:From:Date:From;
	b=ZbYVTbjGgYdk4+hePGTtX4QZJAevSjobklB2cQuNeY9/BVwI3Nnd47xMxqe6FLqSB
	 2Hv1ZMRcfpzu0buQS+d/SHPLPaPfD2rOjMbMbVjJUZke5nG6Zwgkq2i9T//Zw4fKVo
	 Yt4hlRe6ke+Cx+JANyDRJ4RtrBqbqAFNnkHD84Tc1VIoO1h82IM56iFszmP4TvgXv4
	 PDHuRBSGkKDGwpffUqixBPdkokaWyP+WsQidAUpXCAxDFyv5lz3HX6Q6yhV+qJwlFM
	 CrP23vyRNsczlKRDtTpuC+nxy++kS0CGR0/ksCCduq9Mk9AnkUvI7G2GzWGqePe+dc
	 77EQBUMsGTMrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90719C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834539358.15736.9611755991039496302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7b0a1e91179320ea459cef104bc384ea3decfd2f78fdd561cf31ce1dab5b33
Date: Tue, 27 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748345393
