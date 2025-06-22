Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD271E485
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750616994; cv=none; b=JurgE6YrOle3891774KFKeNU0DbJmfCZ0pe+xTdlIYzYUdUE/p24PRFvd9GzG8Ton22gfKJjfpZF2NlgfOJT9nGqFl60D8tC31jil/Fj//KwkeOt+5bfIfno0szCObAISKA1CmdYEdql8Q8VoDsTd7bbsr4eL5VVPzphxTxoW04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750616994; c=relaxed/simple;
	bh=tZrFVslyueq4jaADlFU6a9YRxd8EHzDzqBTlzCBVL5Y=;
	h=To:Subject:From:Message-Id:Date; b=gLamU3yXVtvrw6ySvLyzP3Mkxfq6+2o9Wmc7PHM4jpRlOJybXxyCSv6ozpYRTMGZek9+H+EabKNhLqyPm16rC7AdNfgzCxHdKwxjKExrwKItgzC3Q5zG+ahxeRpe29UA/c4FguOeNXJ/szBFSGIQhBeclwSWjf0TzWWpJY6wopU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0xRhXA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0xRhXA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750616993;
	bh=tZrFVslyueq4jaADlFU6a9YRxd8EHzDzqBTlzCBVL5Y=;
	h=To:Subject:From:Date:From;
	b=Q0xRhXA/9xEZNMSdX0N5+kpeRUVkEgJwAwvKGQ5KpJRvOM0up8PaAvPglDUE7yHcW
	 RmF3CKfhJn5JUfsgj7OPlJqqRp/lxLVEGtZSki5cmygmeiOgT1+G4tPzi9uyqSYVCu
	 7uRxfNOliNwmiIJfrdgWWZ7TuLyVXzsu8mJ9V9Nlc3mzutzqxSHG89BBAY+YlmAk2w
	 goCg9q6p0kFoXWPRu+W1EaRwHnWxu3iOrzK+yaGRHeSJf+x4SduFBpY0Zvdj8dtg5/
	 4gTzi8tz86gOt04wYyj0TcATSmKcxiaLILO7hGRyubqbS1qV45oLX31kqq42rWb8HE
	 1Vw1uDqmiRfqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E94C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061699358.3915.18067689746078280693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fe6f8eb8c900efb75be571342ed86e24ed66923537d145117d8ac0dbb560a7
Date: Sun, 22 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750616993
