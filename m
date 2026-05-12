Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1BD386C3C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778626234; cv=none; b=a7+BPRGxVPjUmput2PPOvaFMydktbjtUzMVNQLsDsoXTiS40f2twn9sG7uD6IJTLVWN0oZPFgGGdMOJSC/QWrBlKGj7DR6Vr6HCuq8mdopcfm5lpvc04i+ARsvsWk8N1TcYqKBzj83aK8/Tl4aFPbVhk8J96d04CSQj8aC0HMls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778626234; c=relaxed/simple;
	bh=w1QHYdZUYnnIADRcujT8B9G8ZnxtPgMtfAz15bbwgSc=;
	h=To:Subject:From:Message-Id:Date; b=MnQN7yOMQMa2Di9W+CdsiDOMyCXhp2Xh3wixr5nNi1ES1CRzsRqXYGIOjdC4rru3YqqdU4t8l5CSTgqUvJUlDftIkD75Jd9zwPKWoBVw1fzsOKI5MhUVbOmdDqaiO3PKCttXzMKNWyLp+hBs/g9RAKp7l6I4FHrCQ9iXiyHNscs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5mDZjCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5mDZjCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEB7C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778626233;
	bh=w1QHYdZUYnnIADRcujT8B9G8ZnxtPgMtfAz15bbwgSc=;
	h=To:Subject:From:Date:From;
	b=e5mDZjCiOMuDiezQkALtlwm+7uD5BmazHbNsxa/zsCOt7ds4tJuY2sftSEuHRqpG/
	 dBrgmeskgwn2TrpIpwRObEl5KHulHA2Gajjg1HCOzQxCmj5h7DFQYYAa/MY9FoQbIa
	 W67K5CgL168b3p5OYwFdj1sTk/1wQ4v4WLDet3QFHrgv9Hi/x+J1pRoAXHVzodayX3
	 Jm5W/ilMZAvxh8TcW1mSNT9ailbadye6pp43EI/NmRLG1uBmEFYW29kLwkdFAMGyIP
	 iaB0wKQpibOhCZpJkO23X0eyJ113qejFb5GC/uhafOMS+pQlF1XBDvUd1hZuKBUAKR
	 EYR2X0y+5X+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC02CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862623370.28724.10723104370972904286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bab4e86edd6145253695a5d1fe9983eb40af4cc978dc028624af1ad579ff9ca
Date: Tue, 12 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778626233
