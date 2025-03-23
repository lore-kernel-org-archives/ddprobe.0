Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB921CD1E1
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742690394; cv=none; b=SMrgsKhaLBgHEwpjpjr3PDZKC0v4/sHZPGYZtB4C2WNTFaLf2SKDFygtYhyX4Qa2GoijSrIDGWkBxjNn8O2ZmCBaZCkoM2g1dCBnKHqGS/GrQb/TSPjNX6ILjiVrMXyc5TZqGSuMjpT4heSzaAJF94AxncV3wv2v+woDjUorWmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742690394; c=relaxed/simple;
	bh=Q980qCSB7RTA1EO0kCB2yZn67jRoLvFMTWXVHYa6TLw=;
	h=To:Subject:From:Message-Id:Date; b=NvOIORdToMr32id27iCtaStKHFIt4AfdaO0U+NIdrIFgz1y3jIjKPsG+Wej16QXupBCjkMrUSRLLQOY9PH1FpiuwE0RL3WfvobL27ai3FkfEBYDQ4Bi8L9vlmk4iNBx9rHRee6qKkIbs13icc4Mom1rNghxLOw+noJmvxGv/ero=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHczkCka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHczkCka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDB2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742690393;
	bh=Q980qCSB7RTA1EO0kCB2yZn67jRoLvFMTWXVHYa6TLw=;
	h=To:Subject:From:Date:From;
	b=FHczkCkad9vHFLYcd0pmsDcmW4ds9rjGxxLwOZJw6P6yDXFDg/MTEhnPV8VuJnrTW
	 WdMn/fjY29gdPucnEmJB19qLxiV74Srhtx9SooNaPqSXS6W8lyi1PTlg+uEkE8z8Zq
	 29vbmICsLgj7fYdzcA1UDenlTkwTvBqnDR/1CrCU/E5VQm9d7oyALjJRwHZzQu/Kqb
	 Hzhg8nIfIc8Sx+/dn0pgNwe9Wx+PgPZ+/Hg3dmapoTo49CtuC7MZfGQv8DPzZCMv8Q
	 M8F9X3T1Fe0oIVoHONoOqc9CkzKVLeGE0v8miw9sV3B0PXpJtWsb3YRB+XoMnPmEYj
	 ROghKSKtMeKuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE2AC35FFC
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174269039359.12648.5698598624533444144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deab7cef119fc69b1a39110dff0e9562065f70ae0c6ca599aa7bba37d073a299
Date: Sun, 23 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742690393
