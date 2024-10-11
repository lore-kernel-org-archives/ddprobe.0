Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155392141C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728654954; cv=none; b=lx3GIt/q1A1vtH2w2lo4SgewEdzNMA5JQ5aXqEzyZDoPilIFFsNFglUuyE7wMWIctCX1x70+dGSdgpZ2MzIi3+Xm5dYhMSYkJy/nMZgmpzcpp3uYMU5/+KvkL6t3kzJHyCO2jgUfCzooip4jKBQ63RvKCB5AeJCu+KH3W2JsjiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728654954; c=relaxed/simple;
	bh=QmqDJiIZGdFwnnSPEIzZEbE+OhX5JLJwKMXEC8xDt24=;
	h=To:Subject:From:Message-Id:Date; b=WWo6RKL1MIGt915Z5znYzDOUL3+NRzSATNz9knny9LTFovjFHh2MQc3ZNRDQZIsPLbeagJk4RBbFhsENoD5PkQ3mPdV9JsuNtl6FA2guYgvt9GEY4jE/kP0a1RqHhXcWX0zYKqrIkxAdlaIEd4nFWZ50epBB0bxF2UR5aTaoCIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQ5Qbjox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQ5Qbjox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B98C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728654953;
	bh=QmqDJiIZGdFwnnSPEIzZEbE+OhX5JLJwKMXEC8xDt24=;
	h=To:Subject:From:Date:From;
	b=oQ5QbjoxxsVD3NvXfdE6YEmPU+5rIJ02TG+hn2unPRX1Xv13qxsBA7NR2VZwb6VFS
	 Dnw+pS03Lc+pOmgKJLWCoVp+NQkigXZjZkO6l385HRADQH2JKRPEk5UDB6Pr5YjT5f
	 tp2xFz5hXYt0ZvU24NjgHeDNnpcHa6esTBC0vUb3ZRotlTxc3weB8i3UFm8RC7me3W
	 ol7f+Y71necwfi71wvw6hO6utp+f6W2fBa6mkOePvl6AfcacOf7vJ+Y6QsiW9BQ+V6
	 E3NhXiq0imn5Drf54JkRXmueqv1XeDySVLIYs6R9U3iM4tmaLTKsAbq07hAehwGoTx
	 giw3RCXHfHu9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9410DD0D791
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172865495359.26846.8447974412383795480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd3510cd464d3744f4355be48adfbd510c528d7d13b5b1449e8750569a3e45f
Date: Fri, 11 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728654953
