Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376FA256C6A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749587994; cv=none; b=WGoE1IT79dBjWfEzAmbUeY7X069WeQAzhULG1tm5oRUcYkO2nJgIMEm210G9noJVVh2R2e4w8+XTOlazlm9tieJLb6pGZCXMNgY17ADT67RKRU2SzZMOqOwfMZJIPs6S/g0NwKA3LJx4fkupqaxJCjPLTSX7Ov5zoa5RYHOJ5CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749587994; c=relaxed/simple;
	bh=Oum0JmMmREjJ2+ZZ20qy2YQeMAQaIbTuUXypStVAtuk=;
	h=To:Subject:From:Message-Id:Date; b=Ouh2JHmt8atI1YlX4LWERDwWaK2xCh1Bf1vrVx8YyPLoI1/ACkSzciW7yS3elWFG3zrdwTiX12LTZqM+fcRkxP4sAJZFh3agO1I1z10Cs41IWAKHv2T2dANPTLzKTwI5kGZuHBN0Y/Hw37PaUahAeenCjx5mZnvG4nRz6jVdK/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lK8zTZ+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lK8zTZ+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7199C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749587993;
	bh=Oum0JmMmREjJ2+ZZ20qy2YQeMAQaIbTuUXypStVAtuk=;
	h=To:Subject:From:Date:From;
	b=lK8zTZ+mNxrbkW+EPeydtBhzvfZglTtk4EgFMRd/shaIanGnbsNEezUZNxLRyXCt/
	 khdUe2twvNfK3ZJKF977cCbGTdhX2CSVYItgW+uYR0CgCmVxZbbuERgGgKul3aNKY7
	 uzTLfJvLrsYlOLubD6C1NEL1pqHjJHGgLK4YwMPr0oQsA0H708RuCQ7cA74N6QoWQN
	 KRwASPgXhwfpaReEALCaeIT4ItG+dDL/qhMmGlafpjDna57gTfjD5JPfYDegNLFCzY
	 WxLEKTtEyaV7Ni6+5cNEy01UteLTAW42fuNRlyGOK13xoc/LNjg3D/K94RalcPnlOs
	 FG6fG3+5HzVJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E1C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958799358.13734.2981355716948047809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f4b84aa51fa5984c93c5e1c20956ab21f0e49167617f1c18f698803cd1654a
Date: Tue, 10 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749587993
