Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD6D27F017
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788136834; cv=none; b=GGI4qWqKDUqnjVdZk8et+tC37cPd/iMo9iwWNNxmS6EJSHDdwLcGHfYc1rdecY/+xQ/vUx+iACG/vOTVVaVmWrFwnbogjizTlxYF5IQZ8FkOn2NSAKSrKFamLdWtO63Hyc7OEjgGZJebriPexl0/Ocgsu5NDXJckepJ5CFv2ZmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788136834; c=relaxed/simple;
	bh=b2S1tLcJF1L4VK9INpPmweCiDdLhuVLWlv55GjJ/5ac=;
	h=To:Subject:From:Message-Id:Date; b=sUZknr7IRDjGiYzxgHxW6GWVn38NBqbqpBhLy9UoxbWV1UjCnDBWt2jOx6w05S0ThL2CfX34O/wfuKxnFh/5nSWdXI7+SpsJZDQfcPWq+GuczxKJ6EgF1x/j5Rmf2UADTAFLkvudxa5rxYKR8HoaXoup6XP/3ygWxPGy0MhKkI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeCeWPTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeCeWPTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E80C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788136833;
	bh=b2S1tLcJF1L4VK9INpPmweCiDdLhuVLWlv55GjJ/5ac=;
	h=To:Subject:From:Date:From;
	b=oeCeWPThtdgWnACOemDTbhtR7hjI8IAq5rdc2HUR3YycYt3ZeiEh4Z4jVCMBQkDZg
	 hPo1iZyc7SF2PdWkw8BjT7o8RdjMREj4b4TWFqlZY1EGG2zP8ZTNbhoIfsT5g4FzIh
	 TX6ZhLzECWCXEz6YydUPe2YpQSrZTaxgpM74e+yEHv+Kc/lo7HTowhmpAno3rseRlv
	 p1985Vj7aAJkgOsONY0lV3uXbB3XQ+10oSLROGK/VNTOF4SsZwD7Ypj4T08VN6k0Rq
	 VJ9V8vCPbNpGg9fWHAo72qzRpI0tHQYcVaWzvzPHpxAbhTQX0z/JXOSbL3oGbfF8wI
	 BkuppuYYYfvUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C45C61DE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813683368.18082.14793922401636685426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f02c5c00edc08e272e59237253f4e561850f4616bfc05d3da407ee9b765c4e9
Date: Mon, 31 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788136833
