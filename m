Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423D83B1B4
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784486914; cv=none; b=E1CLIvC2albQq5XLteeZ5YleXP68djMsSwm91/GTt6bEbyRHRsG2s3NxpI4WFcLEv2vFc6uYdzRFZjfBDwbyQ62SJ2dfLJqBIIPCF1N4A2067ieoJJXL1RMvl7EUbY/CKVLzo36gnE5pZsPcK8IBKhZI3JWMcyhBNdnHqLJWPfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784486914; c=relaxed/simple;
	bh=VT/MNtdTKcFNPyLCoYxHI2YLtFvpK7sdStp519l7V5M=;
	h=To:Subject:From:Message-Id:Date; b=GA+qmQ1YLgmNyu/aa95tAD7y+hlRbRd47HEXlWwhdZ+W4AAHZ8UbmiadwVzUynkxAXOVnQaZDlMbWQxlqLY5onPozltKzAyW+EEbf3kfvy6l3Qmhr0YSQaWtiln0xerGsUpEqqodAp5b4NLktTrLk7XP8Au4c34jzj4BnNz2omM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbu+brbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbu+brbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C988AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784486913;
	bh=VT/MNtdTKcFNPyLCoYxHI2YLtFvpK7sdStp519l7V5M=;
	h=To:Subject:From:Date:From;
	b=rbu+brbTPra/3eNJBSXjNgAOZ0uZoLRGMDwaSJdZbGcxyy8aR626Ab5xqU+ApQXI8
	 3oGTYrfaPW5d6SQnozuzrxlGJlxYC7zJVAs6qDtU1uJAvOkDXM/oBLSqQh0Ax5bmvr
	 nqLvcb4rYyifmJpb1b1XcrYmez55qg1ciM9H3KhihNlFYmqh1RR3dscZjKrPS/23G/
	 ZB94TajN974gMkVg3VTVXPxbVraCySxCHrNQdzF4bhC/2FiS8toN19TVaLdAk64cup
	 3fFLD/AqzpO9exzoVHlmq71Q1MTsCYUr3MZy1l+dkJY5/ktidD7gciD7CzKeiRPnPF
	 arTvvcPXs0jZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CD2C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448691368.8492.5042423839088607724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d68c163078bb0cea4e83e78d260c005bf853de86f6c48fd5c7a22376e91e4b
Date: Sun, 19 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784486913
