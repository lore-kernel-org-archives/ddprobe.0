Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C05A3D813D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779175834; cv=none; b=ga83shAZl/wFzzwdCXqjAuzX8b8ykcV0+3UEUYVBJlwdXqXupnl1IkdEoEhXk0WjEeRxUR5Q9Xt06zD+5FqxMGRptgu1PJ3ko+pYe5WmJjv8DPTJZC1rsyfI3c9Ii0JRCmcigAS98hze/btyZvm4bNCKRxHc+ZwqlytiaP3VLVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779175834; c=relaxed/simple;
	bh=9YxJ0tl9KR7sCNLmXCrLpyEtIzH9WET5iF4SnP1cKSk=;
	h=To:Subject:From:Message-Id:Date; b=KzSC/tn7YEM03LrhcdwZJkNVag/h+95Xh1VbIlVWhVEudMKKE/wvsdtB+soG1dwH16OmMfXvHkrJaa/CLsHGV8/d5P76k+Wp78f8fJtpWWXswywEYxEde/5cINGqSYFa/hG7vdycrcqnPAtHn2MVuhHpyL+NOcSsLBI+De4p/SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifJ2Rbwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifJ2Rbwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0E3C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779175833;
	bh=9YxJ0tl9KR7sCNLmXCrLpyEtIzH9WET5iF4SnP1cKSk=;
	h=To:Subject:From:Date:From;
	b=ifJ2Rbwxft3TDxqwu+5gufpciBqtClzHPaAFgMFbD0m0V2idupt7XStpmbg04zVm/
	 9dXjFDX1MJFMCEmuiPc5bwju0pX+gBVMySyPOnz33WUcXeIGHtg3MJaW6IjffIefHQ
	 NFFob3KQJBTzjtuAI7/C/NsGXwWfJxwymZFWw9tvNp8xGaNEPA4wNl1FnRIbQrfwiH
	 Q0d1bRj5tPdEFwjORHdoGc2ewmBQ/h0FZqG/U/6U7cbRJjOUDJPJyIDUcAUQG9BZBI
	 l2niiJZFSsWvg8gCBSnb/B6o59eN9wYZ3wOnFR/JBX4KUKov8RRyGdHuubyCjyNQv3
	 jENv28cebtgyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE39CCD4F57
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917583369.18635.9654381543682822397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942ce3a5604d904d67d8a7724aaacebd68e61416e21a4d195027b7828004f2a5
Date: Tue, 19 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779175833
