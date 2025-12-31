Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F50126F0A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767155634; cv=none; b=ndSFCQwKRavCsbVMwuze+tnGis6JGT+F7xTUTJ0MN0I4t6C0SakAhCA5FtNdwTFJf2e7eLFG4s8HTmOXqdA/HheKZPwUSrmgmbgk2Vgtps9zGHDolwtYd5gY2pWbvJgw8JhWDrBL+5kNQeLtD3WZMkYWdH+TzHVzQUqCDTd3lW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767155634; c=relaxed/simple;
	bh=DC9qMEV0yBsbQ3TCCq+z8QJJgCtAjSjV1wey2rTf4HQ=;
	h=To:Subject:From:Message-Id:Date; b=Zlr3EFHNvev+azt24m4874Km293g64BCzm2F7S2sn6v+zXXDuwQHfPGbJjDYePfkDqQMfMEgNrj/cogZQFumKpJhEIpUToWwyHzqEsVJwRSzK6ZtIqdPrLOZNPDB6Q9iKhgSi1hTzgoq074vYT3sarJyVJnP6GgpnUUQ7zuEwA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaqcXBnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaqcXBnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767155633;
	bh=DC9qMEV0yBsbQ3TCCq+z8QJJgCtAjSjV1wey2rTf4HQ=;
	h=To:Subject:From:Date:From;
	b=YaqcXBnIe0mdWg2nIOWrcLVftLdepFB0dJrmu1ocJpDzB9+ZhJFjbO9JYrvuEGnkP
	 IidqpPAWbRh//wcre8eQNPcLY0T6EDChgLkQmqf+L4TbFdt2HgzsYbb+n97Ut2TM/3
	 WYhIL/xktd/vhFGzWPknCNbNsMHLkNRFyJZ8ItFdguMxwbp4FlVewbH/vVCOWQvDj7
	 RIlwQlTXcluYDbUFaD7g1adPxPZh/X8xxlY45Mkggjz68Mayn8MgAz6js2mHqfEvlW
	 UlwtF7t2MJt1Mb3slXAA+uhG9KURCsd4LIGqLc5C+kaqBtMPiuesVrwMG66cN7/rOb
	 L9rqlzE8HD0yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9040DEE49BD
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715563358.13687.1547464606464333224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca30084569dbc539ad36064751792cf3992f555c107f47a1919683a0813e8af8
Date: Wed, 31 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767155633
