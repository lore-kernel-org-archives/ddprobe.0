Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6602701B7
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745581794; cv=none; b=o89XmM74PXuPMg4lGxQ1O5HPbT19/Fs5YV8luGPsuacw52ktOKKD05tjZ+bOz7SH83J36AbYbfk+p71Th4TmCimR2v87jj4yxVjVw0yGB/vVBotGFxSv2mx5RyXa1kEEtkEinX5XLUwDVzJmGQprfVKhljefT5C91JjB/CCiQbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745581794; c=relaxed/simple;
	bh=WGv3oLmRxZeqk8jqca+c/xdL+EE4lsjB50SvfKuF0Sg=;
	h=To:Subject:From:Message-Id:Date; b=Bk3rVcc1SactS9F1KfIoK1npQldrvhltjn+Evmju6yU3KzEl/MIrzeU5pnw10iW2jO4ujtceNn91/iU8Z+da08zMgILy3fmWoMuz+xMcaWJ2r8HKW82PBz1/0l0y+inAl7QQSzNA7qigS0UdqrJ4qfr+ewdppYSCBpYFM5Q31kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/jvnX31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/jvnX31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A2FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745581793;
	bh=WGv3oLmRxZeqk8jqca+c/xdL+EE4lsjB50SvfKuF0Sg=;
	h=To:Subject:From:Date:From;
	b=h/jvnX31Hhrl2L1v///at4PnkInELojCXxb8oLkhfXn9Lge21OEudOcBi9DGOuZpK
	 0iMWbOR1c0OUjdq6c98MrwMJIicoN79WhddaF5tR/GfKyQYMMzzriU5JtB3y76t35o
	 ONy0HPjDHV6XAoigxw5L8O3k7EtZs4QlNIpPCPce7doFtL8ekPQbDlDFjj2Yet3BQd
	 ae41BhII0gEmBnnhi/Jg+C3ykOef0eZpbl/jDrIRYZ+5k/Jk29e+8JzpkY8JLMHKin
	 mU1/bS7OpaHhnMtbNBU3ISpVMpLwlxtwqks2PZJ4AU+IbKyUzBhrGVeTfX208+ulSX
	 6C0903ylgmn1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B6C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558179357.22088.5183947264723637628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be09c2655af94b375f7b9b2da7e2d609594c28d0251bfa9baf270f14e6d6b34
Date: Fri, 25 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745581793
