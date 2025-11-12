Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254AF271451
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762920594; cv=none; b=Ul3holU0MtHGsxBrY3N4sh3JKgOGDE0100TSrebmgH+FPv/jYeaJt96vCiWhuDDxIAxgLeelDoh2zn8cc823ScT+OM3+YxNLatLE6rGhhg3o5Bk6s/wqWv9B2RzZ9q9fhZ56UJjXfD9s9efwrUAjS9+QOYEOI0lQpRhhr0bwLng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762920594; c=relaxed/simple;
	bh=dwrhdOTxDS7fG5324Mu0Uta/ogkz6NNnFoWL0m+51So=;
	h=To:Subject:From:Message-Id:Date; b=Frre89xjcR7htMIw0ZDpVAY12Lvv1g+iutmR0VaqCtnO5UBb+xtcBmgaRRrvPF0w6kGg4P6lVL+wTp3juZyBCc6eNEqhmRIcpCoiDSK3sy9h0NuXoWPuf/Qed2hfNtI3D9UhInIOLYkBnzenXbDfHgXOsM4/bPCZItkk3/rwrwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1KOcFMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1KOcFMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5E0C19421
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762920593;
	bh=dwrhdOTxDS7fG5324Mu0Uta/ogkz6NNnFoWL0m+51So=;
	h=To:Subject:From:Date:From;
	b=t1KOcFMMkw1/bcAZ454kN+huHSnFxKQgRr6YKnMJ9yRclNNMJ4dHSMNnQHBY7OM83
	 8CPqOpzICCt9CDlinuPzSy5QbCfvqXdamlCJqE0ao/4r349YqHlWoMZ6dC9uclIwR+
	 Uw8NnxEOzUSRU6RzITYX2HaAaB/1lggBAHl93H5hY1WKmoGG/J3IW6GYT9LgUy5mey
	 7rJzUrkVtCtIdW/23jdDubn/8jWfCY0YHSzSeeGo/eZVVIpItCDYHcb5J389ih8jka
	 F9oxyo5WQq0O7tOhfUDFNRZi3TRxfDhi1eMuJjeq6JTvNr0JzWT12dGmtLa8zAAgDf
	 q/QsViF65r1IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910ECCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292059358.5840.8256573418546439496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3dbcd0724d7e9190dc6a1d5a519f37a4a42850e966557e5fe741cb8a5dded90
Date: Wed, 12 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762920593
