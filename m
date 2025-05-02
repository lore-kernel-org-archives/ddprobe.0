Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4D72550CD
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746205195; cv=none; b=ixpIMyhiu5tjsXjumg9cQ0mytWL8r3A6vRmbWlbxMIeGEL3oztp6hp61JLdRPkj1zu19Z6FNk7peOdrmsE+9qzM+I8afdRYAju2Rz97tJe7KLBWCQx9Y2zQHZeiFtt0QRAdQyKwlGvBYjJDis4WI/ssj9sEihdVPdUc65Yd7kOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746205195; c=relaxed/simple;
	bh=+fQ3mggZ5Mp/Fso4JfjPEnjj36xBJrWxHjRSrNQapME=;
	h=To:Subject:From:Message-Id:Date; b=icd40M40cFo44a8davUTqpapdoNLZbJvt2sKXsELqmTJMvXPAHOl24F+UJLHrEJ2lzrLGccifBGlg5ozBtq7G5Yk8bPdcGhBnr79lTkgMzks+EGweqTd700eycU/MI9kCvbiq7E+SJEsqAJf/ms1SvkRtfePAhxRcxMMnh6dIjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmUxAVUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmUxAVUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFCFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746205193;
	bh=+fQ3mggZ5Mp/Fso4JfjPEnjj36xBJrWxHjRSrNQapME=;
	h=To:Subject:From:Date:From;
	b=dmUxAVUn6nA9ZeKWvvzBSmkpMrz1sRoxZP6983y1oMfK3nebSx/aJoArXksaeepFC
	 InfkAxoginpliJt0/qdrPaWvW29w8TlfMZ24fsyGnwun1hIXDP0VvBTyzK9EHaWp4C
	 GjttT+tXi63eIJbV/iQCLM5FeSb2TVgIqVHaNfo5mydBNyyd+4P2BMcXcCVyNj7y8S
	 ZG3iJMioYFkt44zmcoiAbpd+bwtDkJFUbPGEB28szFpyryVTufFOkfKrhYHm5TOj3r
	 RIBFUGclyNZqT5fa3z8RvgR6P/JZ05lPFtaLhEpQCW7nMmXgD0HXRK0YIoV71kYQFa
	 Bhr4RK4RzlLCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90081C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620519358.25885.2863082959748185781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34731024939145f3300470428384a03e5f3f8efa38663a0cc7598ac2328c3d7a
Date: Fri, 02 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746205193
