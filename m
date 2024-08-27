Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B1A2EAE6
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724789154; cv=none; b=oCTh/Q5McEiZtoVwudtnjj/9Z5/Q5mlTT4XqOXIl2+/8F+ICAgyblql+JJioC0rAHwLCUMu/v3ZcBbIjpzLziZ33yqP/Q4j9c2aVl/p6dVf5yaHieGK1NTIph3R/26mg5YPHjVt8bI/IwPyrD49bDkkgzSJVCXfRkUz12/8Ld98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724789154; c=relaxed/simple;
	bh=b+2M5vYfviZSmBKCGVOZ6JOmYT2ilBe+IU6w5ax5PUQ=;
	h=To:Subject:From:Message-Id:Date; b=DifAMs3+1ekIdZIIw0eFnFkCTB0wDNASh9sd0XVINdt1psR0Fs5deAlJ346fxPhGKb+3ttgOtWYkyWW7YBqr5zwdX9iAgRPN+140nuyXHSSHe2rA/4d3JflvmebdN1DiY0/qzlqpsTd+8+Lui3GksqaVpI06/0wETAC7k/XkXe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laHMLpqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laHMLpqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6A9C567D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724789153;
	bh=b+2M5vYfviZSmBKCGVOZ6JOmYT2ilBe+IU6w5ax5PUQ=;
	h=To:Subject:From:Date:From;
	b=laHMLpqXVirjKRoTtiJtyT+Q7Apzdxjscipk3bQYODwgyCaT8i/4VyyOntOs+AT1x
	 anrkXOFbl+WF2JLwlyydHgYwbJwAq+x5WhHPrw2laiAG+pKdRZ+50utFOgKb3aOomo
	 j2yleLWKxdMBRzjLs7CFgHTEz9jM40derWU2fLONkzILa94nHuIG5hJvpQGu5X38Sj
	 sQvTxEAyl5i3xWZ9VXc/WsxXkNze1ehOnJFwU60XAD6Of5g/jYOiyI/wVnCa04A31n
	 oh7OGy9wmeJh6sqgUhxaoWDXFamEfrBxu6EUcwLhcMeBpPv+N6Vw7uKjcS2vMwNdnx
	 E+WlBkq3N98Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90043C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478915358.11957.8289645242267312188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e3c84ef9d417d114353acd9ed4c0ef98c33ecbedd6b0e57b9c511f04382009
Date: Tue, 27 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724789153
