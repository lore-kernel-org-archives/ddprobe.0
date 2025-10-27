Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4082C1891AB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761528594; cv=none; b=OxF2lIJlgBMqkCYIqxEbHh0rPXpLlbWhKK6m+7dlHdIdUy1w4vmU7S29cIHixbf+pigXqhw+j9xiI6MS3fKIEqjkeF2FqAzAn6epFSI6Z9jDzn5dpKBTTW1/dngiMiC+vesluoV15CjSUo6B/jCMB3o61yvB80UoAjEYYEOU25w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761528594; c=relaxed/simple;
	bh=8b7TsroL3MyL797RG+sv6ok7emcp4n9ux+JBXypRcX4=;
	h=To:Subject:From:Message-Id:Date; b=eOaWvFsqXa+yli3lMjjBo0qTnXx9vuXdZRIUYaADwUb6rdyLKar+V8yLr1QnhuPX4KQtGDw4D5k1t/ue3urB4ij9F9ftAp7YFouofmDR9VTnLB5h9Phe6VpSI4mpqnTNlqnX65uetIcyt7Yji1gqqKfPnrZVjZvCFeFPgj8XmDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVJ0OoEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVJ0OoEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7889C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761528593;
	bh=8b7TsroL3MyL797RG+sv6ok7emcp4n9ux+JBXypRcX4=;
	h=To:Subject:From:Date:From;
	b=qVJ0OoEgogw2Zue0d/TU+SJNrxzElI6dArg4SgN78zEuGa1J/YnFW6QhsWhMJsW/Q
	 j22Ic80hoLNNoLxsbApx+V0/szQas0dY5nyJ1NAs0m1NpuKyk4OR/aktgTw6XyYYgb
	 SkHRHBrp1rjrFfuoV18rE2pTKhpkfE575SAeMI0PHIQMBJXiyAHwb70f49TQdTnXnN
	 J2tQE4AdTChxG4TKZo2ggCcJNmFSGIQA58evHb1Y5DNgUHkKWvA73Zyba6Gt1oZ8PB
	 ncQE9tF3q2GkPNdWnMKq+LuZfhzBotBtXGU/ATkk6PBHneiqoTBPfiltuARs1eB+Op
	 ILsWhx+f89lwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FCFCCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152859357.5720.18062160043039369937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f1c2fb1a16f23b293c72959ba485a52137bbb25bf8302d347e7434f9fed2fa
Date: Mon, 27 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761528593
