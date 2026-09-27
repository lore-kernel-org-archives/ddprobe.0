Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3902AF00
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790471434; cv=none; b=HAr09QUfL9/Q8XOjBa1Lglbx4bZm0kqnU83xSpswhQ/xQxadc08Z19yPVhXPtgAG+XDEDpIO2uCvzS1rkWabroQeRHnczDeyK8b/kwy4NF+RgQOUKqa3copgb2+0AABpgSWLrnWYE0CB8ISwEiFyPwz1gugZvqYhHgeyfEIor2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790471434; c=relaxed/simple;
	bh=9iRGWN1x4paS1VLIYjSrvl5apjfnWJ/PPW/cUTkCOAY=;
	h=To:Subject:From:Message-Id:Date; b=E/mxPIUfsrXzKJInodAkF3LjDiaNAXW2b/AgviewvsgZU425jaCeFpGRhawThyKyQ/N9gIqJykhctdAeadEQND/Ovvl4C0I9c4OZMwQGnnBXshOWFoogpD/bXi9luYfuPWtNgthDUOfH8n+ybOWkX8FCVFUx4NmtsRAUnE+wutY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQkbyu2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQkbyu2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5751C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790471433;
	bh=9iRGWN1x4paS1VLIYjSrvl5apjfnWJ/PPW/cUTkCOAY=;
	h=To:Subject:From:Date:From;
	b=tQkbyu2akfs71BD1ElydYe8P1BGdBr207B2B9tVlqNQ0/ZjXMhiCtRJbpcmS3TvYW
	 FEvs4luDHh9Q+3GujhxlfsORU78LNzin0Yabmtrnf6BXoSnen13uXNvdW98h2bXkNF
	 fTMYCX18QQuAhDQOmhBvuthyFyDVsAiT5lZhY+LjLYcae6mpLBSmy+HGfLBC8Abnaa
	 i1jHrUav0Ebuy1wPU9ljCsztoXcLay+idJaTYRW85JT9iDliUuzdy0kJ9msC5GD1KW
	 yoFz4KkkWZRVpqBPG3NHFTAiK10p9ZSCcFbV9BUza96uejAauQZO0XGKhLEntpUQGI
	 k3gT9Shi0d6nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09FCC9832A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047143370.5203.3150193600523600616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d944d3040b1422b7f6dbd926125115ceb115c0bcd515b8df8e1fa63c42dbfbf
Date: Sun, 27 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790471433
