Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385BA163
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737957354; cv=none; b=UIPLyLqAnYhHexEXLwUEe/lYAty/ImO5/+tC9OTmTMeh1oD71DZCJCyKV3cpVBKJOkQbdkczxRbQDdJ+i3Rc2dYeMLIKeGEB3b1bjJN+FkC7BOGzv+PIlD9FI4U6VqNURQQ29rjdoXumzqYoTx9NTeLI3ZAy54NPB6u6SffmFGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737957354; c=relaxed/simple;
	bh=2l6gRs0XfWeolAeSVXyemMFaJvFxMB7yZZpOe9tfAKM=;
	h=To:Subject:From:Message-Id:Date; b=nueyHllZ/+DeKiTQiWNAnPaHZOdAaMtzf1Z1HqnAOLIJCJ4KJ2xCKUMZnVlq1IUolcXPi6NZMxcsjM5t7s7dqYu54GFuecadLnUTsm3FGBgc5sA4dqV9w+z5zfRijo6IWPNivoGf1qmC7Pj5NdcADQW0ozWvjLNIQE1YA+r48Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4HXywxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4HXywxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418EC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737957353;
	bh=2l6gRs0XfWeolAeSVXyemMFaJvFxMB7yZZpOe9tfAKM=;
	h=To:Subject:From:Date:From;
	b=D4HXywxWetI56Y/31P/LPrMuRTKpHKau7eanC9fM/HeYrFKrqE5ffBNUoe6Bbtjy2
	 oB4iUkurfU6NFinrxOZHzlshAowK6q/r7atFxTzjzDRr+48tt4j7mkoCdHFHWXjF4v
	 3CkLwsXdSQ9pNoFEgFtZVhFhJEVlMNXK6onc9G2/452eQVa68tD5d/WdQgAfzq6XX5
	 TzmkVlCK1ZsuInkyvC1iwPeifeeekUgzTl3Fh8IVroq5K4HEfu5uALaxrl2xZjabGk
	 zgbhLByd81X3vTdhqx0h6Wh9az9uoRPXn69FNq/E3oOLwmLZnvwac2W0T0D2trBgTQ
	 J+AqLAPJnd0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A34C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795735358.29538.9281241898877005505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4b7ed95ceb5759e1167c1a0fd8f4df666cab0bcaa32b64c4f15d749135fa1f
Date: Mon, 27 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737957353
