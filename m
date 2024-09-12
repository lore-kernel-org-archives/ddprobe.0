Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26368257B
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726101954; cv=none; b=nKB6IKL/dtDACfttQI5aMQJtXV1LuYcAFa7ynZFis1tIW+HYe8Oj5G11dvaApfmzpVFZTYsjUitmbYx/h/yqOx2CUwxgGbJqxcvHboMpncjzsNdXr/XORQ22TDFfl6rbTE3AEq+w9QCeuj8xrMivzlYqw7+e1eFy7aDQUzbTGW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726101954; c=relaxed/simple;
	bh=aS5Gzlcabscg8+9qkDeLqHz7DnQ42KZ8WVXcwt6zjE4=;
	h=To:Subject:From:Message-Id:Date; b=YGofVbUPcbwzs45hQiPqjvn9up2TnzccIOgobkId9MoVkSruuFhk+47ndyQorCCYFKSKaDcIksaL5kNgfRpFwVsQnK7jOQoLIYhVtSr/IiTqA16yqIcwYsZMm7hJU909Maqj/5wZM/BQR91vrV/XXo3BmGSBXM+wS70W+Tf4OUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8KWl+zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8KWl+zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7114C4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726101953;
	bh=aS5Gzlcabscg8+9qkDeLqHz7DnQ42KZ8WVXcwt6zjE4=;
	h=To:Subject:From:Date:From;
	b=r8KWl+zy1PvltkZAkDRqFTW4QffnxX/Y6A92v4jwxZkEGdW5tvGtwlf/2TKp5dG4r
	 +43uPSoDsPvzeOj4HYE+RaLYMBIHPQmKY+K/BhQC9MmBRXJofnm783/1x88pd7XIYx
	 4//J43UWlLagkgRZqHgKQ4eFZBYJsoY1RzXO2jDROwyrd3XXRoseyj3FkCH+1iwFub
	 PkRRlhSMULSeSUkQt71/8HmQ01VJZB/VRFFVBKvD2kFYsDp8giG+dN9C9QJQQBpAqm
	 ZPhv5KT7Klbrw/Lz7eNMornEBPXzF15KrwyLMWvHMg8FqtkwtoiBDdum/T9Uoqn2Gz
	 uAoXT2dvAfpCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97737EE57F6
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172610195359.14753.8561688533184300425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ad18cf6c4c3ca8a86a531a2a43f2052f3b61b3bf1b0e532829fd76ff0e797d
Date: Thu, 12 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726101953
