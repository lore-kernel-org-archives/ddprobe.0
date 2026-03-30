Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C0C32ED21
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774887294; cv=none; b=nUUg2dSJyrEyrzZcPeFA0qKa5K0+gvKYz5azZ1iowO/4RJ7ImRnjhdoktLt+ZYqxZMdha7KrktSgTpNOgqYBpDNT+ULTH0QFXZTLkPCG2TuJc/buKLuoaa3UhOQ2FYEYCdJh0/7oqHY3Y3scBSixahwi4dUunmkzqXsztylxxN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774887294; c=relaxed/simple;
	bh=GRi7CRDABsDs//a2I7NDvVGXwj26jtGKQnLOKh7F9hU=;
	h=To:Subject:From:Message-Id:Date; b=bvor9uqi4JMvJ9teYVFtRu5spXGjVubRrluTor2KVQjygIDySFiE9BKixLBXydOx3t9EjhkcXNxngFkhim6XNN0ScpKnQ82/v4Tm1oXZSDPnCZHBD28/LjyOF4xA7E46kQcpisa50Z7GmSQffgfjY95yJBMzBgjl0BJQHissw/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7DLZYKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7DLZYKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD166C19423
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774887293;
	bh=GRi7CRDABsDs//a2I7NDvVGXwj26jtGKQnLOKh7F9hU=;
	h=To:Subject:From:Date:From;
	b=R7DLZYKO4ZHaEzldz+pzUWBuN6sUIhAZgoOd8/ltsONx9GGuMfaKHKKXR1c/pQMGM
	 QTnzIkbJlt2KgRGWnRzcBW0IYZwNI+ZGW839Lgv0s4n8DXIitsCOiKSSNIRLizQ6sO
	 G9WvurmC4lzCwMB38hl8wKlBk0Qv0X8Yzh/MbdKz+GVXa5T+qFK7hY7mQXn2G7NrPP
	 NGgml1R1lMLrfLzv28M9Hf7ISBPh4nKwMdKsTLi4E3349I38CH47aF1tgBB3ICcgVM
	 OAOFBcWPpT9c56PVd/gZNTwZQHxyk3uu/c9xkHo78GXFeGxkxqURRBjfeWRDjCsBtZ
	 UQf+HfJiQ08gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F821061B12
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488729358.18720.8961869499735004753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b3573e042243a141fbaed4d20471a1ab21375ffbfa2f1dd8c32bc0c095dcb6
Date: Mon, 30 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774887293
