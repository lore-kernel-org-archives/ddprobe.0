Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305721B372C
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722528954; cv=none; b=PT/tzcj1TSvFzEAP42DSNYVcmloyXG0I0akJM7CnsoxHNM2/0365xoIX9SzUN9ShBMa733/VzOJ2rmXz64uETQZ+/l+pwKiNZJj6ilK3wtGMAneYI3rFE9wz4o12QteJXB5vEnncMcTizs89FuAnas8BOoF9oz3ftGfLKfhn0kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722528954; c=relaxed/simple;
	bh=0qU0DuHw+ms/A8/9LjLQl3qohsAV2SEt/T39cI7NUxQ=;
	h=To:Subject:From:Message-Id:Date; b=oH3PgU/0rqV8jwFTX+6WdgkVlAuHoOU1HBELeHt+epCkEqCA8uCxyWGTGxclCswnJQvK2TcOQvLVA8qu9qrLeotuTwQj2Hlfr8cDqSBci+jZXJk4FVjSmeDA2XXTbAHyJtFJ2e/e9eKZVEMfxWIQHkd9UPh9MAE6NmN3VctTRu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx2pRrvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx2pRrvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ED4C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722528953;
	bh=0qU0DuHw+ms/A8/9LjLQl3qohsAV2SEt/T39cI7NUxQ=;
	h=To:Subject:From:Date:From;
	b=nx2pRrvNfloFKJpnj30Lap9uWOLl0FmKbW2kLcISri8jnkXHYCjk3er6VxOxrvUif
	 pDdMdht5EDnNhZMHWa5Eddew/8KcDdyVJt5e7AOlHL0MXHGqbbI0DUXKZk7x/UNBgy
	 +YNLdm6ndCtVOwo6aKwTW0ojWWwu0xww4tydjFgvqko8PjA0X+ppR9YvACaMVZWjCg
	 QW3RQ+lFVLH7UaOWoO+7UDuHAgYwmaG3trLAqNJJE4F8qpfdSTCeN4SS3k3mZ/LoHn
	 pdg02aoPXhjS/Z8iJYSxz1fam8ULNL1k9/j+zCoOJaTTA83N5SRd2pFdj0nDgK+Tz3
	 C5WZwyhaoxEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A041C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172252895362.24285.9180136460486381852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f893d8e3c19517037edff246524328ac925667f511c6e341654e2e6c49b983d6
Date: Thu, 01 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722528953
