Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9113DEFF3
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780335874; cv=none; b=tU3tWyu2NateEgqprmqPcWjBGJI4eeVLQTdUpmi5eBc1SIxKlajp2dteJloR5DMqNf0gs/DdwFE2xfegDfwMeEnLkAN64WjWF37ibwBK2ZDbDP29W45ri0TCDT3jA3vYxTkAY5R3ujr2OkB6om5R1C8Hgsh6Ls70jWzX2l92/po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780335874; c=relaxed/simple;
	bh=A3kqhtyQPbKoKFpF3LkBfRQySFXSk4nGRbNEs/+NZJI=;
	h=To:Subject:From:Message-Id:Date; b=dNaYiWtWHnKw4vKOQpgTD0LmdunOOsqXB7OnYvZVF+B7DloJ/9WJhctNn7RRfC8UPOl1r5VzGKxC7FvfB8N5aE75Eb4kwJpCuUG6ZNWwoBuRHJy6ST2VxFwVk8wByJ1MXeGr6rpcyuoknyrVIc44fSSInIOe3cXeFskwENWtCnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvVznDPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvVznDPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78B0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780335873;
	bh=A3kqhtyQPbKoKFpF3LkBfRQySFXSk4nGRbNEs/+NZJI=;
	h=To:Subject:From:Date:From;
	b=jvVznDPI04fqrTB+P3JeIyBb/GiiBWlvTD8BFZCbqL7PumDKznLVrYfIDE31uGKap
	 F/4J5pkfn0YgQHJwYJGbJMIYPGXvC5yWfwv/VSuENsrxu34Af6FjNm5krXaT3eo7UI
	 0BRA3cnKlR0iuSNysrWGSovsIcildHo7+b8VQ+A3ig6lLmGfSZ0XX4JgYTc3sSfinw
	 1oW41DQCDDcceNW5Ge98lTZaOB7/MDxhOIWpnXwjUMWRDQ5BytwZv8ron4PmpAAJmk
	 PtQ/fEGtmqrX9hdhgfe72q68ImVtwCVHhrrHe627jL09WMHqOxMhD47oD5kU7dVYjF
	 4Myt00QIpbKHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63C7CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033587372.32050.12352503517231212409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d0eb4c899cbfe797a49a134820101731e9c78e49eab223612025a891c002cf
Date: Mon, 01 Jun 2026 17:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780335873
