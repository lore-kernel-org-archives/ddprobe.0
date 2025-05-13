Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB6E202C4E
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747124394; cv=none; b=nohfva3anoITugoeFfkqa+JSKGRSMQj7mGqtDPLKVt3HTyRlVrTASeSv2sOP5JBsaOLaQ9OwT0bDm8+uI1OjPXO0nvQT0pzO+fIflXuJPITP6+RyxcwI1+YBSoR7wBQPxFoEwgSsS78hTRBFXvp6eO0FaMN40lUdyngXTYXBTTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747124394; c=relaxed/simple;
	bh=E83DeCBLVyUvEDkDUxYsUEUlD1dlr5HMsPkEtVftnDc=;
	h=To:Subject:From:Message-Id:Date; b=D3CurBwKnN1EPddbgtUyqCH6QwmYFzFkeX/6o9hGK7M2mPBwE6O0IBIzU59+b8w66FdJYEmJlzl0JMByiInYfwoSFqz75RmKTvqQg4VhJOpe+Bfh7wTwU6HVbVMeEgAYAyyxaWxlfmTa/OB0fQ5/rmBnxijlesu21GJO2T1IKE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+tIJoik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+tIJoik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0589C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747124393;
	bh=E83DeCBLVyUvEDkDUxYsUEUlD1dlr5HMsPkEtVftnDc=;
	h=To:Subject:From:Date:From;
	b=q+tIJoikSJFcY2XECvAWrZZt9JffE/8gMpeg22aO4CGbNAw12qlSPVfw5Bm9AA/fP
	 mMIEyeUNKQ9R+ZWLwayJQaWwhbhbsq6yxhN6p3hlWjW4TLHUWYOvmyDofIfhbYnocc
	 33RN6rKFkHjcib7OEphiFl7oOzvrGP6/IPCxMASfuLVgotTpDLAa+giOUEbJJE2Ns8
	 tSA0bWNy7Hys8a7b9xZKG3NmKgpj1Wvs6juDedaskhaKeS/+Sh691/7U9gUJpLNXMg
	 hu8HjZDn3M+A0qzEKE7/4HQ4Rh5vWnkM/4xUsPJm0IPD3xWM/yczQIVugeM2PRLx2/
	 m3hn2HtpPPIPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A1C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712439359.32082.11610201757282748414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3d074a986a585e0b2a5877f81728f3eaf99e8242dbed9214165139b999672b
Date: Tue, 13 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747124393
