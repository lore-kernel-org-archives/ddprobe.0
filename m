Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FE21BC43
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710615497; cv=none; b=FpNYFOOG67iH8F0BY400zoeyXwUzVVqEj5XnHdiT+vHlRVDEtNi7Bd3pt5MJx5o5Qn2PJxeWod0pBnqiNA5Z8ZNJ7imH9RrEp8KWCtyfnyHTi/TaBHxp2W8I9MYwKzAViRYxgOJqBa0AUhRMmfio/Rsoz/Xzb6/A3OYHdwW55mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710615497; c=relaxed/simple;
	bh=jk0cdcadEnwKb4xlztigm4JLroFZQ31bLL7anBrvFrg=;
	h=To:Subject:From:Message-Id:Date; b=FkUweTZaEIp4fpgl24HMEnz/rL2JMswSWImSNS0z9vu6BWfV1oL/EX8Hokfac1B40mr0N3hX0qERASdKIeFUMbUeomjJ8Mg4c7HUrEtk3gm2+AUG3OYAxBlfwXsvgVAGHHvafLfR+kJNMmtY+93FF/pbEYnnG+4a/UZomkd098s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXvWHKq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXvWHKq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F35C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710615496;
	bh=jk0cdcadEnwKb4xlztigm4JLroFZQ31bLL7anBrvFrg=;
	h=To:Subject:From:Date:From;
	b=eXvWHKq2kLk8f2q44hq2DwtprDhs1Sxd6QjQHQfQsJgF4Z04e4uX9f0c1DqoQOX4M
	 lxaRJY635CUyC3xiTJk8tMEQ505iA9nDwmJ9u184OwmlhxMhdROpU0Tpr4hk8oH5Be
	 waRizryO28UqAXd9g0wgFrCOkrFxaW6b1SD1+6YZZW9MSRehWGEtM7EBGpM+BAt04K
	 o17TZ5QWGQjUInEZt6EG04RJG/Rv95BP6vum1PObwjsZA3Ftd4qIJRisO0p6/fpctW
	 9T/0cCY4AQpItVyFP6J3wfVT6UnfiXszUuIVdCSGDfMURKqZf6tn/MSJlSfcZcEQ0c
	 +gxIoCYI6NPxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611B4C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171061549637.12999.8768633856606865543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4ec754cef8453c59e6d051c366b8dd730a4c86aa02871e3b1ce7867caf1c6b
Date: Sat, 16 Mar 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710615496
