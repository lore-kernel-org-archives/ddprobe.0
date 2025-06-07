Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BCE22DA10
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749259796; cv=none; b=WI/SUuGAZ+Ze6j11R7WmAg/jWHZaN08LkBVccH8psLakKOf4vphy9L4SoDB7XO3EEhR7OqFKDmd6sto9BbSreskBmIEkHdMVi2gcngpumZ+gYh879+SL1LxdD3MRoXsuhIBajxe+a0vm2plbagkvjWYUWFU5kMFLL+UAF34yV4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749259796; c=relaxed/simple;
	bh=SQxMesaq2fRakFeXFSlzTtveYR4vZYwu5OztK05NqWc=;
	h=To:Subject:From:Message-Id:Date; b=twOPkM0wQ2wOcLzdMzC1qGGUbz4Rf/BP+oNN3B0fvp+k/4H6X/wgWrnqFYNLC+FddHC2YVWZDQvwoKTcTjMpm0yctIBnaXBAOH3WKfY0C6e7iepOChVOGIKlVN8iX9U28FMCf42BcQQe1HBv2FL77oZvgeBikMUXotDsS5WYf/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXgi8yIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXgi8yIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6777C4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749259793;
	bh=SQxMesaq2fRakFeXFSlzTtveYR4vZYwu5OztK05NqWc=;
	h=To:Subject:From:Date:From;
	b=VXgi8yIRWPXkVkI+0mz5N6bsqmP1nFtLbBDyeCiUTf5wCG93E8dBah4e7elsK0RLF
	 EjcfAhaGHQ98sz9j5aGvAJLuPjHUot0Ty9cCDPLV7+PaVGB3oXL6YlEE6oQldUS0HJ
	 PATfiQy7mamAg+655Hj6MUkW3Exo4LqTxt5HkNHtVqibjqFKfiH3iBywBd43zdjxTN
	 37j5WTK2trXNDgafrxm2zZJmW7Kn9RHe2zRJ26jRR/bIoQkhLh/3gOLNmbR/3osDyp
	 iHbQP8ms0VtfZe3NxTZShRb8d3AIPo6+9PD6/5XuWgztkafRpidsJA1e2ksx0W5RAE
	 k0WzjnmKoLLPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FAC61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925979357.31300.1124044981867355742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0c903a361b1059d118e86f6d59ef570f3813fe78b879b4b1ed122a1665e9a4
Date: Sat, 07 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749259793
