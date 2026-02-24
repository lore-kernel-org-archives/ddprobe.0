Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F3C2C3757
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771913094; cv=none; b=Wkp+T0viEwmCJK9ifzZjmULxLk54FDrpccd5qemgutKBCnZmqShMWRY8+n4fAwILSEylxzPSkFKPoutwMQaucUsCqfiZmANae/iCkiDH+fnp2uJCusIkUo6tF1++wcLuVNp6YAHEYcgmx741E/YkKTsaDNjy1vdgRJ2WzDATuCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771913094; c=relaxed/simple;
	bh=t+lbqBPM5q+Z5yUP4GjijqFyR4pCvr/hhWBlDtj2mR8=;
	h=To:Subject:From:Message-Id:Date; b=C1MTvrZec8f0kCCfWn1TU8KFs8U/R0ptv4mPxrbA+4eD1lUN+du+PRrdYu+SLYjBmvOUTSModWQA2XEG3EijUq4m+mSJQhjonDGx4Sdq7LEXFdL2axYwHx3ZU9IXLG0VujJSeLZbVaCr/KG0txtRZaHdU8aWqDEVXLoAyIqQyQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5ymeCuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5ymeCuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5026C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771913093;
	bh=t+lbqBPM5q+Z5yUP4GjijqFyR4pCvr/hhWBlDtj2mR8=;
	h=To:Subject:From:Date:From;
	b=U5ymeCuE7YHBMS3OGDp9Lzn0IZIYaU4Nm6Y7VQvD7zZEn4ixyAuQxJ4SUDCKHKqP1
	 JIiV0RnPvwGbNZytXDzLF8eliNRUc/CYlntqqGFnEd0tFDMlV90S/zXIeDj9AO5oaT
	 suOSjgy4OrW6GMbz+cbIRsIto7VEyJwVr80NgxwzNvqw8riKI/0DfdLS6jE5e7jduk
	 hg8OEJG7PB/T2Ql+G+IMLV3kXPa7Xb7qVlRgq9u2jb21VDCpAOigCClHJdfFva5lcB
	 SIK4tJq6DfdlFx8Dc2NAO3mcpCrIaNTuUFYcu9zKvrXx+WLBBWyl3FRovc8kIZBYZ2
	 0/2ki1avqkHsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4A3EFB7F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191309361.23153.15784764333248889390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d0964e64a57033b3072f12d2beb56f3f7e86eaa906ba5b7ee886ac8a6b5c17
Date: Tue, 24 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771913093
