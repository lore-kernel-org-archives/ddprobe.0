Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377033E3DA6
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780946074; cv=none; b=CtjcVLqcrv5NG+YN8sLvapzw9DBhkiABHV1cuoodWO66LfvQ19fX7ngEL6cuQluGM3rtaI+V03HdVZQctKMgSUGYVmShaaC2iTGvPsF+ipjFGPkdp1nzOhXLmVhyYCslWGVixBAVem/2nC3G0I4gbZCzCU2SpvnmtEAglg+DgH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780946074; c=relaxed/simple;
	bh=l0RoRSs6reF2Z89XKvBBwv00z9ON3uHRvsLHE1Q5dNQ=;
	h=To:Subject:From:Message-Id:Date; b=sxYixLqZNqILmJxPe881S7wwVKgzftIedP4tAXgxVea95o23eoAPPQ0NxgDcTQUY2q498Q5sECMKrOgABLDA40KELqsP2GYBxWQhrrw6PG5t0a4ClaxNJhVSXDEI5j7g+Fv7XiBNyTufd+3Biryk4vRfko+Z1c5aUswMilFpnek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgoo+3Vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgoo+3Vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA59EC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780946073;
	bh=l0RoRSs6reF2Z89XKvBBwv00z9ON3uHRvsLHE1Q5dNQ=;
	h=To:Subject:From:Date:From;
	b=bgoo+3Vyb0mj70Cr/OpP7o+jvQctP4hE2c3tTmEs+E8l5yyVViTM2M9lEmSobdkOt
	 TWhBe3GDz/d6Cgjg7zckl6v1tf7/Rrea2R0VcllhJ/rVPzHw5uhKQN1F4TYSao2F0q
	 i7S2/q3lysBDFsAqRXKaUCZAyaSfcI27E9wKdcFl616jo+5h3xUEjBHXpxy8lF+K8q
	 Ki/rS4z7e9EhZEm+SrF9COmmPINOBaPiM3SJYnvI/OzIJ9wuh2t1TVLdb8W8+Jf8V6
	 WsQYGCC2sE1J12xazvzGKXi2AnZ1MWpRymzEMu7DkI9uWsPhsY0HbB6LCc7FWnYrKe
	 Q2VGDOZ3ZRtJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06F3CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094607371.26187.15474014079036728275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32adb48e1b93ba2a708d152ceeab2b10243ea3d8895c108439fc392a246bd7ba
Date: Mon, 08 Jun 2026 19:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780946073
