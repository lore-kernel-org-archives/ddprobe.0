Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1F36CDBA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719314603; cv=none; b=AP0u42v3mHNLZIIihh5syf3PVYV3PG+7+yyTXd9UxzG20Fjc31S3fQpVRsh7uU1MnJTxN3SPm05mJlrYTgK3C4YgWrz3DaMsLVtISHAT9hcBAJ+rNo8V55oaOcWn/E129v902ORH3uJlVe2ZVwjeiLjgYtevr038Ve0CYMN4mwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719314603; c=relaxed/simple;
	bh=Zg71yCxgD1+AtQt78tPL5Xv5TRWj73NWjlOwxMPACvk=;
	h=To:Subject:From:Message-Id:Date; b=dKWGd3sBKMQEnBzJ3XltCHnhKmOjaThi2RBDUFgL7Bw4nobPXKypNVea0s86ifiaC7emDLxOGt9uCbwd2beLDyzM0bVHRskYy2NQAZS8FKBCI8W1Rl8S4sxxG4CVqOlEnPVDDBBkx18KCxs31SKA94J3h3P4pW6wHKdFg6KN6t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggdEkcAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggdEkcAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D500DC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719314602;
	bh=Zg71yCxgD1+AtQt78tPL5Xv5TRWj73NWjlOwxMPACvk=;
	h=To:Subject:From:Date:From;
	b=ggdEkcALWFp4Yi+d8JmRHkUM+MWmKtK4Hf8l3WCUaiROV4I+Y7hcJyAqG13vYLphB
	 INvg0RSCbVxJDcxQfT7rY9GhhaDvbPPwPqhZeKWlZi8tQ0iwvA6TgOp0vOBqCKfKzh
	 cZlL9tcSosw6C8SM48Yhj8ezXmoIvkhiMu169y1heJK3duASOYQtQ5+JxJfz6AlTa/
	 KKg5ISZHfyHopytGLmL74Q9co15PBd6WWe1wKyfmK1onDdlV3odjSEoKnFMvkjjsPN
	 22lbhqaTd5QNSI4+uDG1EDoYxinY/+RjxM98m+S42D2Ypy9nYWkoWeK6wcsoGqfr5q
	 47X8dNLNqnoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C222DC30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931460278.2690.729133918777070016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bbd8c3a53d07a8fd0cbc2451e4711ebbed084d040aace6908b3e71d0aa6c57b
Date: Tue, 25 Jun 2024 11:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719314602
