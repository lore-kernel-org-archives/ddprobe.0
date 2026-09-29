Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F383D9025
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790694637; cv=none; b=WsqLhWu2Xchc/JFnes6tKBrVzb1gYdgUqU8LuYsNHGeGuyucmhrAjcqz6plHqEOrhGahOpya5tBS3Z8W+EY8apFvItRJ4/cqBds7SkPqKq1U8k8t21w8ZRI6o68RYVuMGo4AwgReeCJ9dwRo51i3NmwEYCCDHl0+8kLl+6psIt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790694637; c=relaxed/simple;
	bh=mv6zu11BPng20SuIYgMeswAWNGh+ey2rRLgJ3RLauhQ=;
	h=To:Subject:From:Message-Id:Date; b=ibDkqsEIsSgN/8UE8GYgXIMuPVNzGMc3yduU8axq3LBq1d8ggxkD5ci8z7hlJ7Mh1o2AHGHQkCApNOpuibiVP71vPHe3FoJwAXCdR6BQvIcBSp8sKNL/XexVSm6Q7pj6oq7o0cMs/0jWqkK2hWkexXKPOi7AaBh+M1ic09ac5DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gf5BYvEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gf5BYvEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9474C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790694633;
	bh=mv6zu11BPng20SuIYgMeswAWNGh+ey2rRLgJ3RLauhQ=;
	h=To:Subject:From:Date:From;
	b=gf5BYvEnKGycOzgGCdbcs6gsBSuOKVpe3D0ROJBjbzA47FV0K0hTBo+KBxCAZWfYg
	 GrjC9IdbGzwXO/X7poKyn3Qkkuj/l0UeCZfKI0eSfSQH3yy83JAE60nqSfdJ0096nS
	 UB4P0eAH4aNQt4Uyz0HNKPhOLjay2HdW3WjDkMV8ORKkGaaTLDEWksURAYxnJE925u
	 ACBFbNGPagma6CsUIxZ535BP0XEzHvnYVD5TtBpF5G/ajn8S2T4kLNpQEDXwelrOYN
	 9IQ7Kyan5biiTMHxzIITDEURJJ4jvjxPM0Avyp3G+gtDFUU3WJIXebpYEoha42Wir2
	 CHTugDOjrkOpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951BCA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069463368.27876.73298478425846079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b791ba23f7ec91304130799af7a721eb301b7d12f71bc44f817eb2d410b83cfd
Date: Tue, 29 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790694633
