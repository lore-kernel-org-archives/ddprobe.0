Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CC71AAB1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708069697; cv=none; b=MmSu9tu1nUYs48HxIy2+Od7T72A4AVfn2zsMOs7wYm8l5Ur1LOyNALCZXO6/9tZs1cwiZUAnZAytU63Mp0EJb/PuspC4kCKVEGs2Ywxhh+7JsqLokTBSPWuoqVySdvW8gUflMEmDQQ1DoBBJBKaQz3Nju/KV7bs7HFhifnh6FvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708069697; c=relaxed/simple;
	bh=MStP7AaUpnB5CP7WI/+tTdbqYiw7mn94oVXI5KK3+9Y=;
	h=To:Subject:From:Message-Id:Date; b=Yu9MWuPM58EJB+Xy2IEwSFyS9AGcexqOmVmAq67Jl/i9Ay4BH4TGyfp4MzHYMdn/162hRQeFpZen1+8Dd21e8jtG9D8nNKo/FbGe9544hj+3Qlk6BB5Pw9MQ+xYcbFZ5uTfnqdnBBL8ExlQNlgd+ftPkKjcuPe54pyRqlcbRUgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNaN80Y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNaN80Y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B18DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708069696;
	bh=MStP7AaUpnB5CP7WI/+tTdbqYiw7mn94oVXI5KK3+9Y=;
	h=To:Subject:From:Date:From;
	b=kNaN80Y+GbKPLsNI3K/GvCUQfiDudi5KqdCdtNsELG605w2sB8yZGLQBpYgHF171M
	 UCofe96AM6qgJHR1oWRDaGUgTzEUHmghhCZqTzalD95T7SOrErPkQMYJmWnvmmX3Rg
	 +ShpVUmDZLIl0OvNDdOK/1lXKofFrtC4E6Z39IF0gcgN/kGbVVks9YhwSSBprqS0vc
	 Azsn3YIuHBaBs04vEQvHFGjHNMTgu01+mNrJ1x1J/c7u4ov0MwIV5IqpA9OFLhCTmA
	 URSglzic+bAf4yDfzEwzu2NkihuljQU0O3ZZREsKWi3BK/H1dBgThuQAB7wkfyWHNz
	 KEoL0OJEnxQcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D722C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170806969637.29949.15231024192087212865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb26a56e4d2b4689b4746763e224858f617d770da018ac5b1790d6230a8101f
Date: Fri, 16 Feb 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708069696
