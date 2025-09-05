Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAF5524F
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757111994; cv=none; b=MXeDNE/aMLfiABXAH2yINd5AaP/QkembuyB1Nd8lY8uP6nQK7HbwJKfHwnN/ZbxZPDoKWXVliFhKF9ZvS+rdggrsO6eVNKoi6qujiqX1J6dhkxDORlVLdGCz/oUsqHRrE0DERAHLImGMjdq7uMC4iw2sIDrrbrr6BDNE9ziNHqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757111994; c=relaxed/simple;
	bh=u5t1qhpuXAxfoJlcpVAJIJR7jrHo1UInJo5LQaHkpmI=;
	h=To:Subject:From:Message-Id:Date; b=KocbFy+sXfjXdHoBBUxYJx1YY1FH692lNkJcGad5E6mOs8DTkXuMLjVvx3on2l4NxgKHrFwWZOeTQ2k98ABNWEZeWqwT7388SWF8cDMGOSjFw9JmR6Hw+VrXfhe8rQ9juojp9cYMaJRVnzy7XHvWNHUbSqvvrU67QuU0R/lDaSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHswcChW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHswcChW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D14C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757111993;
	bh=u5t1qhpuXAxfoJlcpVAJIJR7jrHo1UInJo5LQaHkpmI=;
	h=To:Subject:From:Date:From;
	b=aHswcChWVKaQthiq3MZBcv2Gt9su+EO1zK0kJh9x4sHiIKErCalhJaT8gUsMXDQyR
	 /X2cbVESe3Hiee8C0Fiw5oj/NqlhV0CUMklaLOaVbdHteqKchy/awwBpMUDRsvTmNv
	 HW2Racq0+qgp1Qp3AzEy27aQA64etc2gRpSRmglhqEG8T41E2FF6x2GODOSFqgRE46
	 /PNT3mic/3erWZZ09eoqf52sonAUTb/XvCGhwITpoMbrtYmEPsLYRVWXdMzAiZdeIg
	 iCVavvkErCOuPS+KONppBBUiQm0Y8mEAUMgtDLsptVlp1VeumLeQulRqRtePhOiF23
	 awvSS46dvh/Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE86CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711199357.25745.1854391419063084209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c9d3dabdd4983f0a5a0971d14d0c09190aadcbd01e271e3d9be627194a389c
Date: Fri, 05 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757111993
