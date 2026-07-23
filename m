Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1F9E3F3260
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784848234; cv=none; b=ZWtr+48o/nDMYbAtDSQL7+fM+RPUxgzhmJYcECtTg7+QOpY11alN9J2ikgw7phw+qBa/+klMfhuErOcP//vEPldynDskzg95iiOxk961BA+qhbh6t2dfuoYgW91QA/W8Pyk1vjF3uwGgsASvgIJJjlhc73nP4ok0076GKsmxtv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784848234; c=relaxed/simple;
	bh=NKO2m0F/mO2LTZr638h4HkE6qngSTMxkUPo9MVQE4Po=;
	h=To:Subject:From:Message-Id:Date; b=bbkxmwyqk8XzbPn/u8KbZZDgiKiqUNtKLKJAMEVPwc0B5DaLVoAyK2QfOdorWVDcSZAceigQqjjU/JbSZfV8SlP9bNPCuald/dBdWXyEKhwS8N+t7O034t5zK39B6Geno1XS2l+g1QabKXaY9IEw0S2Mx/Gtb+IhqXl1BRddw1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GG0z8zm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG0z8zm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1B6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784848233;
	bh=NKO2m0F/mO2LTZr638h4HkE6qngSTMxkUPo9MVQE4Po=;
	h=To:Subject:From:Date:From;
	b=GG0z8zm0lzAxoKuuBXzJjsAOMugGIW974bZAtRAneCLus/n1KiHsh/VRET3XtAMfv
	 WXfaHakcnloXiBoPi5+myf6coYZNMbmRgcqnHkVqSEuee0VQnEPX5wSgyUL+QiZObQ
	 MNWee8YfMnyCwTWIb9Qg4ZOR5UVMxxA3DE47h8jq4ZOakl3SExDUyLla6Po8mf8h6H
	 3IyuoP4IcrxaTVwDY11E2NdPh0C8sWK+QN02iDVsBndJHq4bt0GTIYaR3m2fawAFXl
	 gu2cjsTE3AGuQGmsKJxqAuZ/+XxDS3QQbKt4kb/QAB4Rm6bcwNchzQRUFbWBPj5KCH
	 og5wTcYtx9oYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A817CC531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484823368.28854.5771833160319004825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac9f693653b99740114a773723210c719047450c837e2d60fd28f8c390df583
Date: Thu, 23 Jul 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784848233
