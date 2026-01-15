Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F197C2DA75A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768518834; cv=none; b=Dz5afUGW5BGvPQIhQIDgazTQ5X3u8YtLyUJrnG7yt/F1CjOuqT1A4hzqNZ1RjIiVW5NfScOm2JHNnJY2Qbs903tQtbbwVcROi184j3RdPdSWdxRvY9Vjeao/KyungaOrqFSMAyUFW9M8JNw+45TFd+88VbkBDKEGnEvOeJUxCRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768518834; c=relaxed/simple;
	bh=cY51TlDVPvanqC2eomJzA2k+1vDtw/kSenAwLc9zhrw=;
	h=To:Subject:From:Message-Id:Date; b=TpTEXz6BCGzJe6aRDYDJZ+knQCcE5vrPZYJoQPgupPpmobFp8ahf/ko3KY5CujEHLQaroXmKThADO6XZuatdvLJx9MC3pJ1SJkzGITjeOOeyE6/Df4ZN8XS7+TJn1zHYLnmkASli0rxaWz+Xl/jnS1MoW5xtXnVtdvx/HCJ6Ilg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izvaPSRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izvaPSRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDF8C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768518833;
	bh=cY51TlDVPvanqC2eomJzA2k+1vDtw/kSenAwLc9zhrw=;
	h=To:Subject:From:Date:From;
	b=izvaPSRFHtZGe0vDehnPAolhwEwhApHfVZxw5CHSry/8GD+7UwnDpdKK7Ff5NZhe4
	 e1DBSQYSkWxxnuspOpPd6yg+/tFWeMQS9XbWE8D/Pzv3LfXyFtRUIgMcF6XwWNKjeN
	 Go+hq7M40prgr5qKvQcUkOKrTAtS0VnqwALqfAig1U81ld7tHe5GNK7zP8EdWhMNQH
	 mSBhtbFWZNZV81bXJrkkePwoIeOuaWHZ0wdAOlX+oMLDygbfX2wjV0p/gxPB/zNF72
	 OhoDt//Jhr/oHMEPF+wPmsg7TqTE3/9TLMGZUzP4z9pkKDlHlLZzKN98lIBpS47bN8
	 lANijdZrn7RkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB08D46634
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851883357.25637.8714026990176995373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ea74257fc95201556c7f17ddcb6d601012ed25ef0986690aa78db91e217a88
Date: Thu, 15 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768518833
