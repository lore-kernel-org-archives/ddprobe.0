Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD4713D503
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778199455; cv=none; b=RJRHueCd794mk5SeXS99A2S/VVQjIqjXQ+7W9QoEe7BNOcfEjEnjM3QMSlCUqg7a2lPF7qujf0iJdfbQIghhND/bpgMumgrg8w184vJkd04uxpGy3KjRtPoWcASTS1yIJXDBzDkQUCGHwYB3gWRSB9bUpZRK3e6DhaTF9oeQUzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778199455; c=relaxed/simple;
	bh=tnejfSKi/9qLMiOYyTAOP8ExxqIqzurwQxUypjlGPpc=;
	h=To:Subject:From:Message-Id:Date; b=snY+D8T/51gwViFUdwvF9O598pVV/LvJ9/WLQjCQ+DY55Wta77d0T/3Z7BRuMysuNUNLeNyz6Ixlv0XgfesBm/PrgEV8qPSiRGzMPg1V/yiql9Tt7A8Ugic5fzX4jeWr9F6w74ht5VWSA9wYRw2EkasNxp8R9qFvl6tnCJ5hgAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTV96kku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTV96kku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0796C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778199454;
	bh=tnejfSKi/9qLMiOYyTAOP8ExxqIqzurwQxUypjlGPpc=;
	h=To:Subject:From:Date:From;
	b=FTV96kku5b/PiFSgoOD38ib2R1iq6hxQT/pgt0Rt35Wuhyzz36yhYLRb5VKrUNJqb
	 ilrlMnWgcq8mdXfzdU5Vqfb03TPmEj6eZmur6v6tiWrbFwFr39sRqTPfiAJXSod2cn
	 aZ2RNOmWRfWQ3kUVOIU5CawxN0D4Tuse9n5ffGNB+V3qNy7xANyqehwGY6mpJsWCHU
	 y3mZx9/VoN9W33EzCkVl5SDixHVMPdlm72auiAHsvYI6siyDGG9uP2toLCDj9gK8tU
	 HU2ZZsqmWkdiBEHtjKKCcBSuBdjhzrYXpgRgBrLQFENN30GuNhIKSQd+3VWlhyOZPW
	 OhiyzLs4QzV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FA4CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819945369.27175.17913948305781831107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420df247390ab89b9064eb6d348a8876c257d656e1d52119b4cfbed4692071d2
Date: Fri, 08 May 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778199453
