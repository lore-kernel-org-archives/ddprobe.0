Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D843002A7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761238794; cv=none; b=HBtUzfKwEzwl8TO5Nw2ruk9MQs1yD5QOWSfCf4SgT3IeU7K0RFtimoILYf/Zzv2Jyrsn7FuW1F9/YHhibaMJVNug9m+neMFdE9qnDjagKtp2hQ/peqygMN+iY7Rji24mAixxv29VV4l8f3qrRHbkcqAZ0rh5NC35fCjVSDGQbCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761238794; c=relaxed/simple;
	bh=GdgwwuHrL3n9p5AY9mynwDUPD5SQ36xZ6/TQGuFV+EE=;
	h=To:Subject:From:Message-Id:Date; b=LDeBYECel0AMzyj/U9b+Ueg/v5/HutedHhif5shPiEI6hjj+d4DNu/fylocaowLReHop5/0CVfWjnmTVjfwWd993nsGLE25RJJZK7biL35UtQTBWhxLpZ6VEbJMj1XBPJwoHd/6bbtFrzNeiqWe5rC72HrqhIdMISKHtJOjfYeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2B1QFut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2B1QFut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 064F5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761238794;
	bh=GdgwwuHrL3n9p5AY9mynwDUPD5SQ36xZ6/TQGuFV+EE=;
	h=To:Subject:From:Date:From;
	b=F2B1QFutgHJAP3BAoiEDgBqhbo+xsYFuuZ/NflqH2cXx0zk0+sj3btfSqpNL3cLZO
	 c/1HySxCImiyXuBL59bgc4k/YBwj7KCpDlY3f559GvHe0ILzy+mFafROza0M3dBFLN
	 Tny/1HNZgpsMSWAbCf7XYKXwyMHclTTi5bWsKk+VAJQq7AW1NvIuFRFDtiRsadXQtv
	 TF5Tnl/F+PlVE84VTGJu3JLeLgbcC48Lb2XqotBMlv0DQwzFGnucFdOp3T3prp9BM0
	 hnrd8y1xzyDQ0KUtgkynvedOlN9E3nLFMVNzju771efUM5JqRW4I1cL34IAMahSIK2
	 nmBuTAMovBbcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2630CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123879377.20592.17599557759717637993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76a1c6cf5dac9c21dbdc34d78147a1d76c940ed7c4c7313a7036bd9e37887e5
Date: Thu, 23 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761238793
