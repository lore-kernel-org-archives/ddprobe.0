Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EC7CA6B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747488594; cv=none; b=ZUllVBR0f5lHRn8++Kq0OmlVPUyoF6jX2VcfW4bUayRAeLp4zoiX8/b9OZJXMYSmDKN8xZpSIZ8imEgvAaYK78nnHzLjudHJJ4MCnbdqOOtmL4xNrTLIoO474VR64sIT7E16zttu42zJg5dM7j17mc6B92CRQdc3VcSNOiTF05M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747488594; c=relaxed/simple;
	bh=djlpgcvQ+IxkMMyaBtHQAhkHECz+GjgHrpimc9qeVcI=;
	h=To:Subject:From:Message-Id:Date; b=jFgF1hDpGbwIrJZNOUhrK3/bH+Y4OHqr82Xu1C8R3jrUg76xJlnrf4hyqNluh2A+9r5qWxvW1kCtimEzPgLnd/0nqVagFTWJnTT0Aioy4ONruf3/DQ2FtSqy8ydoLrJlrqdA1dXkGAVxV2mN3Q06aIxzM+pHNQ0Al7+iIdUb5GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfTTuXsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfTTuXsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87D1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747488593;
	bh=djlpgcvQ+IxkMMyaBtHQAhkHECz+GjgHrpimc9qeVcI=;
	h=To:Subject:From:Date:From;
	b=QfTTuXskBsIMZ9Pen2p2v3J3kr0EDRdaVizj1+K1tnEnDPS3z1faiAGATQYJV5B3W
	 Go352EUJiOD26eYEgpe6fCkZOjwE2vJ+klk1eO2G0+NMghQhNZxJjTcF0RoE+2DaA1
	 Up4gR27e89w+a77CuCxSLZYrG9GuOuHNnbXaW0jw6kAO5thuiegDv95Z6pcmbk9Ldf
	 pJVwgtkAqLt6k3K49DW4VYQStSTTYsg+9Ob9q/l3YtAuX4ea/DC0I3qOKNN8F5IuNb
	 PNN3ZFqStsmUsOeuOwY9Gp+al+nENCftQ7JkYQMR7//KTA4jejj/xwhKm6JWlTW7c/
	 YqPeAlSgq7Ohg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92112C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748859357.3283.688792726614979012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d85043c9b493d3cd7ecb11224c06309e82c61f7af7ab2a4b70da21fe4e41f5
Date: Sat, 17 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747488593
