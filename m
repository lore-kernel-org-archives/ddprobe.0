Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321E120CCED
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746616794; cv=none; b=jKM1wt82onM2Nw7AmSTh6wdzt8qpy+LGwOcwq8a9s3Hda1azZ3AohUhUs79jwBuxM0jxc46iXQLnUpA+Y+IGmeX3rWsZ8F81F+mFCc7leQupU9UxBQZxf7TFDRyggtU9qSdRsPK/jmHjfqFy640RVC+88w45ioL5CMOtiLv/tpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746616794; c=relaxed/simple;
	bh=R9fWjkNxa716NmimUwWY6VN+W2bwRkNHGeS7ESR6xhA=;
	h=To:Subject:From:Message-Id:Date; b=ECHW0+gCopo9J/KtBj76Lwn1HOC4nJgFeIJbuakK0k0R7pk2fYI8gLq9LMljp9z445+MRrkv1oLacz2feKdChXZP3C5KmUEvRi9hYNjyUivMLb9A9crSdqnd8Wbw+vAPD6gpvu4ebk+cn7bqM0O+G+kC3m/IZAvxm9/qb0DOFZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWeQGDn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWeQGDn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E037C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746616793;
	bh=R9fWjkNxa716NmimUwWY6VN+W2bwRkNHGeS7ESR6xhA=;
	h=To:Subject:From:Date:From;
	b=TWeQGDn0edj1KZkp8spFB/uNNyp1OkHMEUABBbK7rLaDnxvITqrR1MdKHSWI6CcAB
	 H63RtqwJta4cqhmUDpiQV4lF+1/KnlSi3QN3ss60dQSvn3CbeUCPyuN/+i44LhP2q4
	 ggRVIxScDVwlNJFJotXyQdxPd0s3Ye2s2vtbyuJM/0Hu3XFLJnegNRBLE9oe99hX8V
	 jfwBZYjiFsAGUmrXWteRcbG1JjYNP53UcdhqHUeVzJZ1Yxy7kYsCKLawx1cT5kJ0+1
	 B3eivRtyheaIdDwq+Q1nwRmi16emsPQbefzctPSjKfvgJk38zbmsfTsNbR9SsdARRr
	 GI/5ymPWdyuiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E593C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661679357.16935.10761392126336212838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f617f52f4c769b0e61351da9eff55e6c8518ca4557f2d759b00610f0b291b3e
Date: Wed, 07 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746616793
