Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2093195F5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765768974; cv=none; b=AwsNPRBjgQyxhhscKkVyQ2yo9AU9A7joUFUaZoCQ3R9WtU4d6l4RlRAl2L5T9IKMINfRKgMeTkpA3hf+vjRZYuPj6v9nbGhf2+3wBgqx3cZe0CVjuc+waOTcqLWBXbLebjvtrF1zjCRSrXKUXEhjsIUgbm8xm2yvCdnKx2i8Ivc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765768974; c=relaxed/simple;
	bh=+Qm2enhLIFeBzO3xPnx1kAapv9NELaxohC7VC4jZ3t4=;
	h=To:Subject:From:Message-Id:Date; b=mTIg/9PFw9ig8zsb6IPkkPtGs6I6ziDgfDX0bzaEpBmEGEdHExJXOh6C3E5kJy/Xb/Z65pwif7pie8jA63GkBz04mEJElBdR1r36uaAK7Q7Hh/ZnLXYQg6XuH+nM40XE9lAs04iyhWLhWVimaf62G9896/Vlkl2POALXXfjRaiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4zBphtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4zBphtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2750C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765768973;
	bh=+Qm2enhLIFeBzO3xPnx1kAapv9NELaxohC7VC4jZ3t4=;
	h=To:Subject:From:Date:From;
	b=P4zBphtx9eUQFJgAP/rYtNkOWS2VBxKvzOXDDCcjEE9X/ti0DuNTvrfPXLCxiNU5e
	 RphIw4Ao0NFANaJ7B5IHzWwDj9uEO4ZHIBh0/bchONoZ0KC88oLH1XGFj+94fK/gLb
	 Jf66gCqVvAYPAdx4/z2Pi/fsRdxlN5xPMOLgYSZq0yDuXR7AgUyc3Oa+BIKfLWmblE
	 v8upo11PMplV0hKemStF00hkqhYsU7sFk5XfM1DY0QQLuiA7LoOjVH7I7bk0HQHy1u
	 oSbKkwIEVZ7HY0rExWfNxhX8CAV7rxNCJRdYYLsSonPkV6GHSFAtPlIvWQ3zzP57ZC
	 oALgMv24mjZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FBD41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576897358.304.381262948991400305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e18c95e67b43e01a2c6566f74cac3a0c73e649470217f40851298966600340e
Date: Mon, 15 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765768973
