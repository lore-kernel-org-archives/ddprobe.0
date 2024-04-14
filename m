Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C4713958F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713120563; cv=none; b=aJzGvcag1LJrqh1wjXXlGtN/VJuzKRNhvooo03kRBbnL1bVl0IZ9iQ39xu3hwtO2RbZZGBT5nWPd718xNDXpf1ocXiRKZvLF5ZhnATIjZ89T5GvuICDNXuKl4SMpy4y+7GHcYs2MTGjPAYQwLTtNf39oHtq1iGSdoUdUfsUgS+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713120563; c=relaxed/simple;
	bh=mfuqacGUwz/j0Ld3k25GGicd1zN1LQ5BpGoLA6179m4=;
	h=To:Subject:From:Message-Id:Date; b=OGvVfKMt04njLw5qJHlMwQnlY4EjcSEinYVETevN6uN1haQEJykcDHKta8WktJ3WQKvLeEvYzb8F9n1CcXuaHBdoWdOR+jBIQ0vzcsxpS5DwsyT6lWLnSpkLVvKQPEjFT0Evz/l2ccoHFrXKVfvYGw1LrNlXA6WZtsG1Aad4wpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IicDgGtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IicDgGtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C764CC32783
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713120562;
	bh=mfuqacGUwz/j0Ld3k25GGicd1zN1LQ5BpGoLA6179m4=;
	h=To:Subject:From:Date:From;
	b=IicDgGtSZVMORWxQ62p3C63ot14ryd+swrYKJrZhOAmmGjB9ZE5L65espVHjE/uzT
	 S+ydZlXAS2Ls8TebCGz29arUkfKdwFysd2s3+goagbKJN9pfEPaAGP8pKUguhxvgFW
	 fE+FvscnZ9IPOeoaL8IYIJROx8MJscpdDVWFXTuieqtbUMVAf3/zC0j77fBNVynkDm
	 Ub1nBZXJqVMP+/PEl0cKE2z6KlY7rHT+2hsYuNXYUWxBaSX6ihEQR+L24bdXeaGum8
	 1Te5A0ge+XR6CidhAf1qg9I380Kk6lLPrc6tHf43xrYFlKiBh6wSfikdcCSSy0VDbp
	 95aYuVxlMsaaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA355C04FF8
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171312056275.24747.12246204194418988869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6d01096d6db27997b966fffe5ea5aef7f6792c551519cbdcedd93579f77d45
Date: Sun, 14 Apr 2024 18:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713120562
