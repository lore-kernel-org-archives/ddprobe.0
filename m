Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BA139EF33
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788331837; cv=none; b=NdRHkhFRA88K6IHOJB3TTGZ2rLtAE0TJ8M3MujckgOBwqv7UVaAcKKu8i5r0sSOlxqbVTC6aPsphBNPnXxEHP6YKq1xJTljmWsVmCb8nTzKHp1O0TY/+cyBQ+B7QdpTiNKBHx/gQ1ojNF+7D3uPovZvO8nIVXekt5v2pZGsQvWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788331837; c=relaxed/simple;
	bh=TKfZuthXZB5xZt82dBe3jMcM/bJ789r+Aj5DDDshj+M=;
	h=To:Subject:From:Message-Id:Date; b=mmOdXsHf84h6Hy2ODsfKrPBnuywBCtyyH9AzMuXLNkVJxgjiO1vZMQWue1b4554FCXuHWoGw999nmlxHZHo3NKFtoKYUrE1C4ak+A1DTQFbrM+/IK0k07HsTMNGlHbOGFXtfc63l82hJMAGAneWphw5XIEZxzvxmc6ew8S4i3Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/MItTLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/MItTLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4858C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788331833;
	bh=TKfZuthXZB5xZt82dBe3jMcM/bJ789r+Aj5DDDshj+M=;
	h=To:Subject:From:Date:From;
	b=p/MItTLtGFo0Sie55faFB/DmJCjjlYKaIJx0+sglSgjhxuEvAabnXxAJzjkmTMXys
	 b1PhMgwLww+K6KYHLV45xkKcjmqaG8V/bbzIAQ9PSKzC4hzpgqwpZXUrC4H8STPpD7
	 lPee4xtSyWexCwoHkpkRzhHAfYciKZVt61RDFsFnQDOM9ingKWDKImSqf8T1mgZ0rR
	 LHNJsPYLIjaJirhJZhoOP92yMYTMf0v0MzjHAlocQ0IZ2n6hQC7sGD7hhKFV4o3/qL
	 6uckQw7Vppgv6UjlVw3BSeaLjmDBKxpSj6aPahp5Vh3ZcFnriwL0tgYsCMyAgTqN4I
	 r1Cg4cZTFKpLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B0C61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833183368.25036.12703971353378488690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628ad49b7e34c38ff8a67e4f45482060321af8b4e22f12b2ce2aca7e2bce6cc3
Date: Wed, 02 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788331833
