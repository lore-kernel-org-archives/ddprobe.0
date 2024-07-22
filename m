Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B28DD512
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721658954; cv=none; b=JXTB4jrZjrUeyPwpFgJw/81GrDQ7fVLE3+MnrVJLJ8dsyAOlDj5emMMzdMSaZSh63hPc4Nvyu23nY1e/wf/qo5cY/Q46P63jxY+Z4B0KeHstF6MP4io4Z7sM5U+y/+N1EEe3ri9S7jZ82xdIE0tK3SQHWfCWijK92GMmCfVBzwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721658954; c=relaxed/simple;
	bh=rm1oMSyWmn/3Z+/6FzH5k0pHbQF6gVMGXacL8dp0l9o=;
	h=To:Subject:From:Message-Id:Date; b=HW7XPjE/VAdkdiYEAaFsTznCi/7Bgmwkg4kT0X2/DbfVPBQgxOTjrOvwebCedlmCVtljCfvyCRMp6650YhSSznzjgWXSpJuc3kS+DMDvJNRNprxlfqth5nWJOsD9wxdGeZH564e0fFlTihq4aU3DqKLo87dTinj22hooGKf6mR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7QWFDcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7QWFDcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7629C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721658953;
	bh=rm1oMSyWmn/3Z+/6FzH5k0pHbQF6gVMGXacL8dp0l9o=;
	h=To:Subject:From:Date:From;
	b=W7QWFDcLHCFUGfZPIXG2k0aNZErxtKZFvqryb9TssWQaspVw7+QV7hZjChHs6Ueri
	 24Xeo3RQ/xC6+IQHzwNxEF7bi9Mu2wewzCkyc4TPXyXCFacN/jKPd02OuKixC69Npq
	 aaSV2APcnAewvy2zJaCtMetIquLzEeMKZHiVARPHiV3EK+ONdze7EUBkEhKO5KwV49
	 vZOi/n0bAWnWykbdHTI9U5alPljDLOliGGHsU8cP8N7Uzk2e3yHuy8H1VZQunxfNVR
	 2NnlxiNyjbENSewOnimOsdoDmhDDzWX6l/1s+FRVUi287YymCwT5KB4M1t/khTwqW9
	 +M0oYdSyLoiwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F21DC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172165895363.17417.3500975281461579552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7f64999cf76815a441f471a5352b428a3e195520da91ea987b27b5a1f55dde
Date: Mon, 22 Jul 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721658953
