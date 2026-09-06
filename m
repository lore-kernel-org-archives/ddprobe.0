Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F15A32ED40
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788738634; cv=none; b=mgJRLS5paogFBWHU0vqr569T+PcOvypJ2MbatJNVCEddaUZUhQi7Vd2wj1SJsYzgzUhLkJNKiQl9Hm6Ca5poPY2yn+CWsl6todw/VsMsn8VytMg7Ol3YgNkpuqi0fEG0yVl4zBc75sNsp/MzWxQfd0fzDrC9vfT6Ab2rZA552sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788738634; c=relaxed/simple;
	bh=MoixS6LyeENcvIXgN5uWj4AT+BP2fdEuADJP9vVF0tg=;
	h=To:Subject:From:Message-Id:Date; b=oI0Ae092YGXd+Y83oD8pgcCmSQNqLi9SVUW82PxD/QJu1psVsVdweSCvgbofhmCgUSau3NvpdvdDTJO/hFDC2n+rzxSoeBaubMsSDViTF0LNf+JX8GJaapurPyc4ov31Diz4pd8OvBsj0s4p3NyooMC+6hL3hb+XfoyTsEQvOCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpQf9Dob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpQf9Dob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA99BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788738633;
	bh=MoixS6LyeENcvIXgN5uWj4AT+BP2fdEuADJP9vVF0tg=;
	h=To:Subject:From:Date:From;
	b=FpQf9DobT92LtDCSbzA5pALvLHbBCRdKnzg11cBsrHz8mHXsw9nL7GXBmOdUYThPq
	 3q9MdRDBA4IqC0+Fl9lWWtSyLegv6eA5DKV3CNrZOGlVNU6dpm1U2x/gZPTVgNQ3Wk
	 gzuwwEEbWxOEDpZj5uOM5QHwvnQtmPSxG2AiJb5tkxZUtCA2cY1l3RnLOznPo5Jnt4
	 0384cQJ+4JmWp4fKjj2zj8IyoA5CYSg1GufM67KGpbsX8KPI/sY1IqYAnWQLOQnvgV
	 yRcwC5ctv+zU5UNrx/5JfzRF9Bfv4Ffml0C2esxUmns8wHASdUptVCE0c6Brgl+JH5
	 28HaNQKcKlGEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BE6C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873863370.5188.14529555301888929356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f3c95fed14667ab202375d99a28b4a6bfe226ad88661c7397dbd32a77d3116
Date: Sun, 06 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788738633
