Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120E32750ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771079094; cv=none; b=SLGyoFdJytMeCjnnTmD9yz04WDpYmTKio1BwP87CLu/3Tly4wYz6dHpbQMGWJ4FncT/cCXMMpwTLYG5w7PnhVSX7IRvV1P7smvs2kA0JNLAL7xU7NrLivTU0lyFCHLPT/TtuqMhp6mOEUHF9AQb2Zi4Sh2Us5+4iDwCFa4Lz88w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771079094; c=relaxed/simple;
	bh=plMmN5Q7BwrSqSv5I9JVwW1cQsJ8HM1a8l26O7GGP4o=;
	h=To:Subject:From:Message-Id:Date; b=mU2D/DrDLHJLjgZpFTnCy+J75GgKwpsx2gbvauZJ4ryp2Gg+0RPtOgeqSE0o3Tw81584xucaDAaPS7SPe8sk+n7FA2nIlSd5Om/vVE9rJ6QTwEy19MU01nmmquqAidnt6VxVcawd9YAyADZD8Uw7VNbdFXldfTs+g2pReuMdn3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlBGUUUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlBGUUUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDE4C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771079093;
	bh=plMmN5Q7BwrSqSv5I9JVwW1cQsJ8HM1a8l26O7GGP4o=;
	h=To:Subject:From:Date:From;
	b=KlBGUUUKwpgR7VZq/y8LtTAYpb0V5p3NbYTX4mzJw0i+CMYdN5YlDCiub4uzpZesJ
	 Tyu7qT4ONBQvSmod74nyG6M1ZsM7Yibm93HlTxYOsRpP2dXDDLccFjbC4jyYi/XIHC
	 Ym9dnjUwrMSxxD9zvpZEdkF5iu1CkrtQuBFAI8C9n4M5wJrbl4/3OO9eTUGVDLuAZX
	 Q47R0yFUmBOa3XX5Lor1nITm16oEumJpir1u3iQ5JZw2z/JfoEJfd/xmKKO93Fs6VA
	 30+Kou3Icjoq3ODt+ezdKRpXqRwQi8nqVSKqsU9JxKxfE4QAe3yziyW9d0xB873D/+
	 QQ9zJE1FxULHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95586EDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107909359.12325.5080102261118629001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9085719860550157b2c4fa42d6d5fa69f04cbad6ad8f9affe7d9f043b8469546
Date: Sat, 14 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771079093
