Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E00736F41C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776804454; cv=none; b=MY2NscU1xTkb0Apyp/6CSn133EC7psjtDRj+M31Nl3TxJyMNvYJohtPOoaOuHkdqdcYReF7nQG2Sd2RSk76sC59W5RO695GooZOGiXeykHLMDVZoa72ylv5LREwsslMoaIdU9LYskeeOSPTSQ1XJ3kPVom2RMUVu58aXsK86SY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776804454; c=relaxed/simple;
	bh=NP0PrbNTlENac1SLH/JANZksTsZgrGxOa2qo7g0xAE0=;
	h=To:Subject:From:Message-Id:Date; b=P+43gCehgJYNo55M/bSVcCglbEGWHb/hIrrh35lDwdQjwZesHIJTh5xf2Jt49TvGHh1XzlwWU2LuSU/EVoaK00LpQnaC8D3GeIBqN3pYaIw4EaRDGgwLEtq1gEb8mI+SePB+yMd4M7NyZI3wtviOYVsId56u4LNU8hP1ahFlgog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SexmYgm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SexmYgm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8453C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776804453;
	bh=NP0PrbNTlENac1SLH/JANZksTsZgrGxOa2qo7g0xAE0=;
	h=To:Subject:From:Date:From;
	b=SexmYgm5gjDMZUYY94If3gj+Rnpyb8LaUSX2G8KUZh/VDy9UVN/gjjPNrd6ACBUh8
	 n9zPFkiw4TpKbv0SxvmtJ9O5cp25KOTidolJeRNozNDIG5DKV+DI2MURh4cJIJmGZ5
	 bw/vfI2Yn4Nr4mrDYPN/z/sMlepZ7lBg1Psgdva7QIxaZlxqwgHfHoHWCTFL6no064
	 ZKeJEzyb67UHtqumhgYh+wiu3VZb0GZWME8O0yzFi/lsq6xQE2t+bglFSwEhCm0s9y
	 76QorrObC9/t3anKpiFg8DcVSTwp4ne68DHyLiIxVDeyZ+uU8a7lt/5Jgg5eDrQzFM
	 KS6kcUL8IV88g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EE9F94CB1
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680445368.22511.11849870164606537264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f38b895dd5052701241a7b4cfe5c3359cf1c1519a1d7cb4bffd66da7306b50e
Date: Tue, 21 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776804453
