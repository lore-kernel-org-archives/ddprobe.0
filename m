Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA461E9B08
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752218994; cv=none; b=G4foyIF/VKd4xLUVa2wqrVbuvo553hVM14lbuFgA0MlvPnvRTB51RWn0BA5jjzOVOBp11zHChka5UtfYzv8u9D1PGWSmGqkqAT/2OE7jJvS5qI4YE0HFZFwwU0tWcvH6mldI0dJo77a9fW7V6YJ+x4Q40KyxuVrSCfrUWDKZnNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752218994; c=relaxed/simple;
	bh=0vuiUC/SYBALgGROjaxBD19/zoYl1t5iYgl3NSumFUo=;
	h=To:Subject:From:Message-Id:Date; b=QGlPIBI1eD2yxEF4ZGRQHvkBVY/M6cqHhIEwEIZtRkE+dgv/0jU0t8iA+bcls45wVxBItpi/gimMKb0ZvUSP5PqJtLXoIAjbqNejNy6/vlBcYzfXyBHLAELIcDkz+2s82hZs9bnf68XrFAVZB4nKXdDNzIfubcOEyLvfHAfh/vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUmPAkbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUmPAkbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3FEC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752218993;
	bh=0vuiUC/SYBALgGROjaxBD19/zoYl1t5iYgl3NSumFUo=;
	h=To:Subject:From:Date:From;
	b=mUmPAkbDpBQ5YOBtnmtMFaFY1KXV4UKiQAyf347SZsiLSfAfbrKw+ULL84mQn6H58
	 ByMD/Fp09OPPesZiUTSrJw+Tkq9Tzy65Zx+qR1FvTa8LfcY0TGi0umemvx9SKxAtKb
	 oOcHz/rScPPM0NW0Et33guu5JZgxEmkt5ufiXd4FqNNwl1OrF54fUJL23nByUuccz0
	 KTkCfHo6y4/INzsgusLLv4kHLGB7JphOZhd+fNUAbq1z9PEis+d41RrHDvUDunOQq3
	 Dh8+rD4OOrbmK5xP5iIDPNiokciup5e6t8NOR+iLkJVZkHSAsYCSV3rhLKPc6MZQpb
	 GreJgV7s3PwwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CAFC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221899358.20215.8046671864113503702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf28622c8df90e0e72c5125d43d540f8fcb0f43f70964ccf55dd6b36ba5d556
Date: Fri, 11 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752218993
