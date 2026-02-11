Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496B123A564
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770829494; cv=none; b=sfcAMpXR6aSAuXM5zR3fJ5S7lNlopK3eYnkDfYNigtf9ZPABoYawrNdJ8cxJP9fR6odJaCkzcpUlakc5+DWjsgRe71FfFsTVdG4gWqV0jc0y9s71fmR+r9DmwL5rtog7ku2EIp8KAPebkkEDRINot4jtqkKz+6O/Bk6UDOqrMtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770829494; c=relaxed/simple;
	bh=xwbhx+icvkvlWj74/HIigujlaNvsO96G5E3FUMdPQKs=;
	h=To:Subject:From:Message-Id:Date; b=uB3BVi15ItFWrkeRmNLg6+Bf23Bf1Xrm0nB/qIxkispP0GgiCid2Sykkty1BRPARAhU2v9sZCVQtUeV0S3yjG2OZs4P7ae4FF9u9oe1UWUUywRBv7LGH1WB01q+gEB+doAXzLMvAQdyWhgx2kqVp8FiEWw+lXN+Q0GysnSFCEvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXdsJAwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXdsJAwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF0CC19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770829493;
	bh=xwbhx+icvkvlWj74/HIigujlaNvsO96G5E3FUMdPQKs=;
	h=To:Subject:From:Date:From;
	b=KXdsJAwF4kT9dHTCYo0LprkdU8NdhAkWLJ+z1U032od9HSfHF8LPEXQnDXaNjbjKz
	 HOvIAjwreh4fWgFGzgLo4hb2KqPtjXC8CE69pvNHj6NOoBR0DL86BwgdaVYOX83T42
	 yQ4DJbjCe8QBDZd5J6u6Hbk0lqvKEjh4S3jGR5nFpKKkqlHoP8YxEjZXiPOPtGEp01
	 Us10v+FJ5ME/chaLKq1QIT/sEr2uy0XjfPKYE/i0HJUBIAQikL/fRGTwD2rc6occMg
	 wYHaUngJ7giURglYVBlmpm19TDBkWyz5sdrT6BbRGdGhHvPRLcPoY5HiRwIk0j78hd
	 HL/53Xbg1Ohww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B25ECD6CA
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082949371.31024.4388126191888779657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1efdba7ce71aff8407f05d90df5a16d05a47db611a1114827876a9dbc686936b
Date: Wed, 11 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770829493
