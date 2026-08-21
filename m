Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B032356748
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787280034; cv=none; b=STjPIoHc3I5XIoEgSEkw7KVTsMu0UJGO/Hdz9sfk2kJKfMYDHmd0TVRMmW8AxLJi03xyafiZCCvwR61WgiJlng8E7tI8fJ9FcpjAQ5Xuj1ceWlhTxEjmqn2KEgt//JbBZej4H1asVXEIy5cBx8+qYRfffNEKENcDfi0RAabLM9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787280034; c=relaxed/simple;
	bh=RyR2U/AC4VUb8u3Dz5akpp+2kuYbZ5wh53Y01llawMc=;
	h=To:Subject:From:Message-Id:Date; b=ZF0nkhB5kaFY5wHGi0RGEjjupQVjl8WCPU6UuQOw3lnEhkAs/ILn5Qe8QvNEjyeU54/HKR5GoSpAbjpbaEbAfci45lIMrsNDI8Tcdv81N6W1l0Se1g60ycoAcThiQyFUzBMwQE5iEE0N/zqWaDzUwNB5vsc9XWaPKDwwZCy4Zr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1l053Zp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1l053Zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33F2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787280033;
	bh=RyR2U/AC4VUb8u3Dz5akpp+2kuYbZ5wh53Y01llawMc=;
	h=To:Subject:From:Date:From;
	b=a1l053Zp/USdi0o1MiOdiLYWQzYO5nEZWKXoEI5WtkFsXj6Ete5dlFWfxL7KSCQ+j
	 S/aDfkmn/e4blISudRnmgwoWfJ42ocpCMN8lWjTJnqrtiSPovZ9K8c44lxNKea9nPX
	 DwzuzrWlOpj7myzVM+0mCNgYbv5hQwKnPrmhgRR+6GwAGC0bi07ucZK0bRCZV8KzJm
	 Reg/d0UNA8y2UeNXB/hb081YYQdcwvdLHf49b4JkaeuUXT8C93SdQkmHUXIDVQ2uzz
	 y2T5ydwG/mdDY+ip03JfWuZVZcgfNaiqquZek16qyt/U5rtYEz25cDIfJJfNuVxbJ3
	 h9U8H5ERMscyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB081C5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728003375.22751.14087194370289252764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc6ac7385358b8b91dfe21a01fb7083caca0612b0ea2dfcdfca6f93b6f9d14e
Date: Fri, 21 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787280033
