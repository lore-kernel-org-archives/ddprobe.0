Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C896C2EF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756544394; cv=none; b=Fo+qpudCe2FcdeelH2X8qYoMAgGM7ZtLh6rgNzvNONP83241bdK9HoBn1hzofXVmNR+tDtZ4p0zruc4hPvC+0RqNQrInO7fIU712+rIQSFN0BV3rZKfaFSudmZLFBBAcKgs91mDiv6MLAgce/aCkpzLrrPZFKK5H9e9DLsbnF4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756544394; c=relaxed/simple;
	bh=65TuoRaad2LjU4SfNr4JWm8/RSE1VLM4FXoU4ND6WFo=;
	h=To:Subject:From:Message-Id:Date; b=mC9RwdCaoG1LrJCIIOneYOBe+d0JPfhhiVorvFd4HXCdnnS479Otb+vxzWICJnJCyxm55XcBSBO8xpU7Sj70UUbTLvhs6edh3CKs+tru9lNM8iJMRHnxiOds3RWznIMhnk3VHYIgdVFZ5IvLiSclDUEEjryPH9oLhq2JiqR6Gsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhIgHQGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhIgHQGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FD1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756544393;
	bh=65TuoRaad2LjU4SfNr4JWm8/RSE1VLM4FXoU4ND6WFo=;
	h=To:Subject:From:Date:From;
	b=OhIgHQGY3prYvD7sv+Vski/gAQ4P2D3B9pv9d/s3q2gjgHtjhZC98eABasKc6QUF6
	 ZTMOuju7oX7h7qaAQnfUVKwEoXjBioi8dC6swDkS8cTLYE4yMzPf22SilxdqsMfj+v
	 jpXDF4syCiOupsHzwUAiLRVtsiY9ztOhe6sIEYpNN+BYIg/q5KZNDwDCW5dRkk3OVr
	 Ad8C+p4l7FPqWbLOFVSyyIG8omupZ7iEzRbjBKHV5YoyepbpMI3AW5TSrn9iC90m/4
	 P0usghIES4sxNEiHquNU65a3o6zyoLb24SsDQ9OT5Pxi4GshZc+KS5lNLEIdyQVGFf
	 nMrqI3jgeluWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242DCA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654439357.10297.12252884365613616641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce16df574236fea1bd3cca241f92fc5e4d7a77ab935cfb0d43aa822a1d5dab74
Date: Sat, 30 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756544393
