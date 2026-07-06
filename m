Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AD8433BD9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783354714; cv=none; b=IU7a9QZAt0HXOoqAZ09Ayift8Och8OcCgZqAGIlBRnVP8KFvAbq3b6XXqnVQs0DkQOFJmNcVMM8knCKa1ZrldR/4PKzAykE82ICbzO7MgaKW7DF83yZ2gZz+5+Xov6RJeg7bRxC1OFZFSg39l62IBvzlocHTUtWrOgsn+dbGIaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783354714; c=relaxed/simple;
	bh=5YlyIfA9CARPWcWzp+cmKcIhawyjl1if5SVkbnZsb/o=;
	h=To:Subject:From:Message-Id:Date; b=FtQnccljV/ImPLHYmxqxg3KgU34Gm+RkNUAzsLRrZ3a8RIhDFDeI9nyZQ6JiogYXlJtz3FMr8EQN5YGaEW8BBxQWNDBheOOf64gABJUS1lqsfbCmFLcpoSZCL0F98paI5GU1n2B8ZSUOZw9zkfOJuMqJMSojHu68/wJ8F3GV4eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYs0WBD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYs0WBD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9769C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783354713;
	bh=5YlyIfA9CARPWcWzp+cmKcIhawyjl1if5SVkbnZsb/o=;
	h=To:Subject:From:Date:From;
	b=pYs0WBD5A+UtvPwoPJJzaVUpBnTOtL4U/oHunLV07mCQ2EeMjMTxzm9Zb9lAxIngi
	 hDnweo4LUmBTPQvvlO/rIfkyolrhSV96Fg0aN7Y4kD2ZZS9UNgg3o8CCVSqcXODbLy
	 b6/dVdDe9rCR5I4pozea7YBhHK/q7lEvBd9STMM10YDRCz1lf+HwKMRQest342mj0+
	 pDCdoYUkxGfWKu60KDhrQEuzMyjPeCnPxT0uN9MAvBeCHlsr7ghp6RJTEejvCWSfdR
	 vHCsC2mW9cROue7yQ+Yjlw/iYi1+13gEXT0oadEQNjinQXIS/r4MmrtGseTIM87796
	 QJQ5KmlySViMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94C1C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335471368.10475.18419101779403310344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b2c6b4d700bbc910551148a6b1f0ad4d511ac8db768839b551904732c7d1ce
Date: Mon, 06 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783354713
