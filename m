Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8623446426
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718829563; cv=none; b=MimQgYek680oPR+JukI5dkj5WP20goCLmbpf6rWBQznYumd5LZrJDSbmujuLWVST/mrThRnzm1GLz+1LKgJTNg90AMg9KLkBZ0XPBRNlCIx4JJcVvHuoxYXfcFUD6f26eIBojENP6lTkUz4zr+sf7pDsmtdvGGcHbs5leuoGJp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718829563; c=relaxed/simple;
	bh=Pscrcme3TxkdaHZ64A6+2elHgCja4/5cLmtxJBUr+2I=;
	h=To:Subject:From:Message-Id:Date; b=Cf72iiSbmgLs5cIp8AtHAJi+bvYb9OXh96TFLIclO7PHhgRv1wIAyLaqyXMSgi/rxdcsiSBo7K569eTcd9moVqHow4JrFbpAIr1JLh7eJLubq0QQFKFe2bLZzHRczEva1bn7mWsEs6R+FkFLqsF9FfqQcWrpS7DnQJfV0vQT34E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbXQWJsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbXQWJsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF6CC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718829562;
	bh=Pscrcme3TxkdaHZ64A6+2elHgCja4/5cLmtxJBUr+2I=;
	h=To:Subject:From:Date:From;
	b=JbXQWJsFa5jTaXc3HMtEZ+rFnBdXqPQQZKusS3V8F6+qIrjenFesUSLImY68t7gAz
	 zsFJcl1eJ4PYII+42MOQB5b57tiujUbGu159OvhBb8tyirjT3Uez480qfQv77Fbqzn
	 gxJoAtDQN2cJTA+IfhSukb43bnkUMz7W/XqQOsbosvES+mqwoHT4Q327ZuDYJR8S8i
	 UnNszn8Ovy9n8fjZrBkOkRR65GMBwKc7W5A6dDxzQ129HOzEZy4q62iG4gyuVBFaIP
	 v6hKuQiMqdx7+AbpPWUa9N8ott/fISXwvDieWBgZXPNDOjJiYRCIvfqZBNbiwbW37a
	 B3P7DL4lC8rTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F1CC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882956277.497.5592810263197916784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1832bd2bb5ccc5ec7bad55a7a5adec6c936b97688668320ebd6ff8616daa6e21
Date: Wed, 19 Jun 2024 20:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718829562
