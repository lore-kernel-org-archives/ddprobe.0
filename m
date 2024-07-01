Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D183D62
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719797663; cv=none; b=oeIsRj96b7BlAowt2jZDpeTJus4hh/50LKlRIPbsoOwHUAtpfcOJyQNWecw5xE6sHN4/6IRMIAJxLPzXuT4UmVdbbS/M7m4J/0u5fNHTFZd59LTsEsVe+wxAcYMeiFHzh2KEf/HPbHhjQF+LLoyrKXSaR67nMAFKAPNayz+pAXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719797663; c=relaxed/simple;
	bh=a+vq04yvuUJsvMc1vy5CyFf7AbfWAuaIrk5fmE1lnPM=;
	h=To:Subject:From:Message-Id:Date; b=m08TVSmYEV+TqMZ6BMAcQG5J1QodZbOCWpb0pcea1pAo2UivQp1yysYXsaJABbXlx5eG6iKieHX+x6pOPSLxzZDZU9HpYDyvdbp57L3TZIxtAqxCKQfOEI8DeniP/qAUkh0qf6c5/FZyur/OiihuC+4ThWHhz8c3xeSwcqoEpXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiTUM+FQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiTUM+FQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26B6C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719797662;
	bh=a+vq04yvuUJsvMc1vy5CyFf7AbfWAuaIrk5fmE1lnPM=;
	h=To:Subject:From:Date:From;
	b=JiTUM+FQ4YmBg9be4j7ymFi7f/qGtSGQGjm2FrVOd93TuzUY0l4xCSd2Gh0uXCvU3
	 NHCXsYou2EQQoltg5eeyrnWjWR+UePM9i5NeEun1JifcpEhgaMUrP+w2i8k/OcePa8
	 pPlt3yh2Rl357KE0qJYi4oRyzdd5FA5bilD9UA6V7R6iHlIRjSPKl35rPtsUCUCgNr
	 ZalDuPSTzlZTzBip+CXBjtIQSd2b/N34sYrxAs8MxQchMDKZO6G12rMrP/X1YgaORs
	 iaW3AEvaaXLfHJTSj1uv8/5B06CpXD4DB793+/qwZd12RtkTnABe+DAWKzwoTvltZ2
	 4bMv+xVAg4x6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE970C27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979766277.7734.15301851226793386132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3274d42f5f15df162ee8dace06f60d89b0ef594d7fe49e1ad0a763cb502ca5fd
Date: Mon, 01 Jul 2024 01:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719797662
