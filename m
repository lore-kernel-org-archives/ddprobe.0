Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2C6190686
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723492554; cv=none; b=GkCKlFupAPweWfvvojeyaOzGL0mpd+/Um6zEy4nAsy8Rb4M6RA6kdeCPz7fXqU8YkISgYzYzFnZ25tX9nifm7jj2DEQQuhgh2Mns5zYixd+IeOFRtofQ3XOzpfTsQAvDSkLQwi58Zq/dZAAT670acS1e7t9nnWCYyYM2X8CPuvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723492554; c=relaxed/simple;
	bh=yWH2K6Gol6P3z2J1Ax8fGnsM+bI9KE/SkRaepCkzYUg=;
	h=To:Subject:From:Message-Id:Date; b=RBAqWen8O1upqi5opb8i8Si6cQNo54Xz9qhsuRHjxkWnKZW45fs+Si3KAKWdRnTsOqdzDmQbz3igrH5nR3MsX1uf01auzh3aC1ua3jdrxcq3gyrc8C9SH+r66kGIMSo0yfvT3C5hSENjoiQx7h/Kt9ClWJB+CeyiASM4AsiOkmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqP3Mdhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqP3Mdhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1549C4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723492553;
	bh=yWH2K6Gol6P3z2J1Ax8fGnsM+bI9KE/SkRaepCkzYUg=;
	h=To:Subject:From:Date:From;
	b=HqP3Mdhyf6PJaupKfLhfRs/tMrFFxmt9e2mMB2WLZ/IVAXmp0gy4x/lTebgsUnLML
	 74le6aqyfOnhuppk3HTKUnRinu0KIPmRDCNdepbhy3uG/fcSrnAoslDffUVE5oAgwT
	 wn6LdAngEgM2zAFm1u+b3TULXSEwVQWSylt30jWWszBnQIbzlX6gEvyMkh9ZuFhGvx
	 oRjtSO/Eq5VHZmCzleLE9mY7dxxZDAU7OSEIgJxWFSYvELVNBYDnYszlLJ1NToKpcm
	 M75KOO3H83TJZbtpyuSAZdMQF6swaoRVd2mXxscFiB/9eWXxmEiVNqx7wClpW8oO2F
	 UmGSRQ1KWNTbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09A5C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172349255364.20595.7371097848758125232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a48addbf8dab821980e89f9d4f3b7576cab6acfbcadc69d38d3894b7ebc4f95
Date: Mon, 12 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723492553
