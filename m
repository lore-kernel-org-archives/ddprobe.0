Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0892253EF
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766632434; cv=none; b=pjJlx2QMNxYO4AwlKr7Z/qbeXdtKjHPSPaA8x5wkQWOWW6zBVBwzQLSogQTKES/AhHI0n2wTQ3YplOkY2KYEeqzNVaHYyPA39sRQ0DYK4X1xb7px/7qc7jHu+s5EI6TMHqfeilojEOML1yZia5PwHpQ7/+3l3yPWy4FH8RAnxq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766632434; c=relaxed/simple;
	bh=24nTc8CgTBllaHyX7OMDWxdfzHTrkaXhmYm5/qfvv34=;
	h=To:Subject:From:Message-Id:Date; b=Nto8oyrlf2pW312P5UWCBA3tUf+WMTn1sfjSKhv3LPgIt295pHrhz5QkR5vtXlOURGChpE44ttXu5d9B5rMEV3fL/LzZt78/mqhqhBGNc96vm9iNFltpqDkKeB1LefIw+vuor9sqb50cPWT8t8ehAj76j3ojh5Y6n3Di4VeE29U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bo0K5Qjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bo0K5Qjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7267C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766632433;
	bh=24nTc8CgTBllaHyX7OMDWxdfzHTrkaXhmYm5/qfvv34=;
	h=To:Subject:From:Date:From;
	b=Bo0K5QjhokDN2k3sbE0WEbBwVy8luZ1WWCY6rqTgSn32jvZGI7gErkbeGA0tuKH8y
	 AFazcq55B61n1kbREs6OT5DWmHec9Wr/fcXYVvG7e9rAKnGbdJLM82KmHZ8dVDJnmv
	 DG7n7QTwlVSYvcDH/IYDP+3CASvpRF2m7LIK2C0aZnyNoZ2Z4azc1NoBglptLXIgai
	 jWsKzq8Ca22qmZNd4Rv5TdkXVZMyVjrxnifBY8S9AwORutzo6xiMKgyDvfIx5KNPV1
	 QttZgwmnfO7OKXly6ppibrPuaVUVEYnXslCX/z3RR77O5VVKBq9Z3200D7cy8NgW2p
	 0kO1N0UJ+n1rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B0CE784BB
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663243359.1250.5948577156842822907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca03ee9d368addd7ace89078a837688dfb4de8ea57d543978ec668848ae8c5af
Date: Thu, 25 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766632433
