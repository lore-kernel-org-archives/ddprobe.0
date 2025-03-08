Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEC42EAE4
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 21:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741471134; cv=none; b=P4vzXolm7PUVxuclTCuSTCBdwa+E3KXIBVxpC0tgi7Q9LCMHGkv3VcZAlKWxAqiY1jCxnFrE5Tk4jD7vdRkt66ouXcBGMoke01reEzz5lINcw9UPIhJnBv9cVUbmA4ceFbRzf1xwOow1E1RWvTMw5oKy5wgTw0SooLDDqIjkawU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741471134; c=relaxed/simple;
	bh=IzNr4lPBddWHwcRi2041WSnGsk8LJY1PqOrn2vh8gNU=;
	h=To:Subject:From:Message-Id:Date; b=uztHNYUGYXvI9JHqM98RbMlxBMaV7BFi1qw0ClWLSV3x0wrbePIG2XL6v7IsW7D5W7xp9JGq9vE8cBaTrg44ZhM83nNaJij17HgpCXWUpLZbuad+K2kJe4b0hq6LLIvqBHO3bjtpZ3kwjEnJELZNhahQRC5/L4HyKmLaHR7YiMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h60ggTZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h60ggTZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7539C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741471133;
	bh=IzNr4lPBddWHwcRi2041WSnGsk8LJY1PqOrn2vh8gNU=;
	h=To:Subject:From:Date:From;
	b=h60ggTZDJ2z1Rsbb8QuWlJ+FPmc5+2OsOlR+rdDwWf7TCt04gb+lA9r6CCfCOSoSQ
	 X9AoiHB/QLdTPsuzoSTAjt8SQGJzahCJtNIh+UlXjigBeLg2uw92YsL+bvbkF4OH2d
	 9ERt1pwSzFyFEdMArjmauph1Aq1AcFFQIqahZw4s9aRkNUzH0lSjUOSHtlDl7bM9A8
	 6csalKMFFplbVocHKFb7+PTXufEbk4RyJMOtjd54V45r4ZP50DqleeZ8XuETb9XmJi
	 0nOpv/qtytk1LkSnztVmFSi9pyRj4BSYFqtW+4+zsw/JLDbOyCqa7oHGNJLPR3Y1Dk
	 AdgWNJqbZULLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DF8C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174147113359.13470.12733753117699899590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e87e127c81c6d9267a6fbeb97760af7b5398667b77a90792ac529178a6682e
Date: Sat, 08 Mar 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741471133
