Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4062E370D69
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786558834; cv=none; b=k1M4+VWjMCUQ9YIrgI29rNdfpkLmrXQiAlC9A2c2RnaGJ5XhTVl25LcVdLmwazG795s8NjXjkZY8t0HtT3yXUKCH+M0vgl/yTXJ7t1XN0HDWWDW6ASx3vlHP9/6Ou4HRQKwxrN2XUbEueIoWd6DtadnykbgVQv4/h8CufRoe2hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786558834; c=relaxed/simple;
	bh=sOZilvunQYEa2/TG8/FSKO7j3IvmWLcFYqluLsyBFpM=;
	h=To:Subject:From:Message-Id:Date; b=PzjLB8ZtoCTmtDiCB4jmD9IM2ngVT023g8nMBMgusN39ZGkbNr9vpcy9YNyhXRB6PFCCK6FCyPHeVXYpvhyMPuyPp23QR39NbTnRHOwVPAl/RIiC5xvos8MaIkj3WrTc0bKaAxlSdCiZ5OUaoAWTtsSIK51RwEfWNj80QcrPVbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IX1/SGwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IX1/SGwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF147C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786558833;
	bh=sOZilvunQYEa2/TG8/FSKO7j3IvmWLcFYqluLsyBFpM=;
	h=To:Subject:From:Date:From;
	b=IX1/SGwQQsjMIpMUUlKkwGBUTGtrc5q+gEgCazha7luTME3+7vXiBjCG/GvXDSbwN
	 I4JXwyAHmZLqE1BzzlH8pvEjXoeI5+ZshW2ye/NWCE1Kg4dX/Myof+3ZpFgG1It6UZ
	 70ESTZ1kqDaun9CmdCaMXbVJE6VcG6sVgIe4ThOp28ix5Z98YnQEFCBX/mDQisVY7L
	 ODcDR8QcZ+oB3Y/nTKb41OQnOuJZ5d0R6L76dTewlenMaibOPr2EjbZyHaJtudsODs
	 C9RjswYjNaGKqG2c3KlTiUxUzwHP/e4KEhaUrliIxtUPvv6Fi2QEAFEcfIq5VmrLPG
	 SVFwqkkeuvrLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA511C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655883368.32097.10489439536897970665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5382835bef465b7ab1131fdc76f81fc8babc0b39548b66eedae378751418938f
Date: Wed, 12 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786558833
