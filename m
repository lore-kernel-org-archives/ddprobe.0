Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3DF5028C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737479754; cv=none; b=FbTlzKvDNTwig9RtavHHmRZR+UiUMq4/3XnmKQhWP+lMev/QGa1OyUF0avesZ+tnEM+pcVfxB1HEwgf3DroDPRxT/+zXp2BfBbLlbkpNuKXO+rAq4j4Mtklt8hdt8IY3SCSt4WBU3+1qjg/fg9Feuef1L0I0H3jD8r9i6ui5zz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737479754; c=relaxed/simple;
	bh=XxKDLhK47WUYyXpNILCSS8Jhk5PPV/Dqi9PIrhWphd4=;
	h=To:Subject:From:Message-Id:Date; b=IX59zTPV6lO577Rx2Npx8YFEH4ZvYIPsrbTHVSlxuHP81RUjsCz96p06yAVFqAlknn0Q5ahiF7AcX/3OKHSUKputmBJNYjCc5z+dmE6rcOrNPA7ExQqhcwESCaTdEkXjFIk+btfdwHem/K0/hvIc4fLXMJrJBgQAHkS4zNVUxog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOjrpMrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOjrpMrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B5DC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737479753;
	bh=XxKDLhK47WUYyXpNILCSS8Jhk5PPV/Dqi9PIrhWphd4=;
	h=To:Subject:From:Date:From;
	b=mOjrpMrsQJnELxwLcg6DYZuVVQ/i5lkP+tgfHZlwloG0nL9AvbE1zBrWF/q+XoRkg
	 9lABy9PGkg185qMz4IGlXLu3oyFqL28Nf1+E79ynyOIw1IgWXV/5v995fQPdDw8GKD
	 82jq43AfVvMe+pRvIRbo9gCpdoPrhLyTSvfr/29njFlJ5gDfJaDU/voOZ2r0ArCb/F
	 di2JNREhh3DErLzTRI5qFbl9qlsGa2TJ5bBzKxyksZssUAE9E2vGz7ZfmU38Rxb+15
	 LeQeKHGUQfEUw1RhfeEhUN8FeFK+eXtgjFmQFFXYJiozaKTkT56qxSai+I71/32Gte
	 s8vXIMSEH7tRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D491C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173747975363.7642.4337847220633885236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f64225f831b3849be764be25ddab71b07878437d98360b7c36730c57373215
Date: Tue, 21 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737479753
