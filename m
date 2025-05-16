Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A091A31
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747418394; cv=none; b=HX8gzF2+SU2AP98j/zPJtpZNocltJji0h6DmuStV4K5vhBP6yxyNNvZd1vF6dn+mxsBfkmQQbQtobv68c5ZImBsms7nON1Oe2/qHk7+nRWFDOiseYjwhF1ypvLouz4sa4LEwaEo4t04WHYlGXj9jY0Y4u6CCrrALcdu2YJSYUuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747418394; c=relaxed/simple;
	bh=MbY7alhD/rCwZzKuYGsZqvvAA3h+7IS8A420CH+NUbc=;
	h=To:Subject:From:Message-Id:Date; b=cCKH35xlaDXrA3MpeohfqHR5EygdcTsaEaQ6eIfUTID0QqUobNOoyX/uF4/AqPm4zAxciVRRym0yzYlB5sXLUBwnKswLbJq+mQK95Eom2o7qxkl+k0knS6ZDKjSHgFGFGUdfRAJDLgj+a7fo4pGUXF7RYhM3+xwUTeasfAep4Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnuDWeTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnuDWeTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73CCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747418393;
	bh=MbY7alhD/rCwZzKuYGsZqvvAA3h+7IS8A420CH+NUbc=;
	h=To:Subject:From:Date:From;
	b=bnuDWeTsNZp4wXU6tBRUpRTE8xg1AYoMQ1sjVFGYxC9yansBnSYmrkXPtXGrrR7tu
	 ssna5LyLmYcnclTq4SPrPLwag8DURg8KmfqYV0ecKxQjQ7bmbScCLJRHkFpgp6BqRC
	 joD1Eszwh8z08b6I6tq0CpIu77knVHz7ODYLsFsqqQWqTNwkfFoAjcnXa91b7Lt2pj
	 D9o8Uza0fWE0RVE4Uosn/YHDMgBFfvSiBYeAnHs2hae9bcF83JKfo6/xUpIRBNoiLL
	 Dg8EnqUsZkQ4kWzDkYKMlQQ+p4ezhijOZlywedIAjpuRs9LQ9iuN3odPkC1CiefDtx
	 HobX4IT3Jp0YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9422EC54754
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741839359.29729.13804411578021940283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7effc28239404727a8ba5a48ab34be30780057826a5fd53fbe3a6b6ba83e4f
Date: Fri, 16 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747418393
