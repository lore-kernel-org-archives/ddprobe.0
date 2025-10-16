Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB58F339B41
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760621393; cv=none; b=AyNxi3v2oUjy1XZ9JycfiHqAMUKKR4IOuOxBB5Xltx8Gn53twe2oybQsJRrBwEvXMUJKaTTQGfZd1DREPx37e4msABWjQc+ODLCC4/NgOL6ryeC9Pm5OOrpIxfTtHWSAaYPwHnB2AFA0WFg8wmyM/iMcmFAed5T77Giv5YVPfmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760621393; c=relaxed/simple;
	bh=vapPmLk5DtVG/kVPvVLfUh1t4Jale7PvUz45mggpvQA=;
	h=To:Subject:From:Message-Id:Date; b=XOYs7BSXz2sIf7CIO4Nj59AGbnKUT3tS9sGS0hu4FML6z8WEPR2Srhuz8nzsKZzw6o9D49zdDHzImJcvW26FfsBY0FumO/Aac64R3KeKn24QBV1T7mWeUC2Pdkd073kZAuLkBHVdaw/ekvzKJB0FhyoY3RSMMd9NB1/bnV/M56w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIQ3A1lV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIQ3A1lV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF9AC4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760621393;
	bh=vapPmLk5DtVG/kVPvVLfUh1t4Jale7PvUz45mggpvQA=;
	h=To:Subject:From:Date:From;
	b=fIQ3A1lV/ps9+QTExtX1l/D4zqJzPUZuH0e5muQYwILAhI51pzMF7lnu8W5mzoLTm
	 aOc+Lple4MEiEK0dfBoThppmR5wiMc5kmy6ntqZCMVnwr2ix88VSoW14CtEUK9YfdP
	 0rSBKhNQrl2UlEMjoKdejxp43LERYcME/TpezGstP/zsWwdHX0X4xfLOYHvI6PQgYr
	 T5JkkrzacshyGa6sbXVAHWml/tVQn6UWHLZgOVjyaI5mUxQgbKUDnzg0L5xJVSYY0Q
	 ZDV+ftX2KEvl/7e2HHf0/PwFLj3z3iMO/OMLb0Etyw0LNtsuxZsNwJeIvd7AjkJlB6
	 wjljE38+A4UFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E3CCD195
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062139358.11042.15413413481153405989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1141308cced834f4e3e0f40790989549979e8296a94683c719419fedffdd7be9
Date: Thu, 16 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760621393
