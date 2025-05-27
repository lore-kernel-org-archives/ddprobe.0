Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43673101FF
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748318395; cv=none; b=striLETl8qV1Itosk8tcVGm+7Q5EmALDD8r6vbaqzzYyJQGCeU3bA7puNc49QfMO2J/whGzLL7yiHaPARTvNM+w0soedCRVyiVNxzgcr7CXIyCSWgzcW6fPpv9Vo18QrzC/TOpNZNQjXTnQqt4G4ZXncwSlUcEAtJgWOcFlF/mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748318395; c=relaxed/simple;
	bh=SCSNxZLuLhXoI7qpm4hjbd5fbwxFmBeDaQthpENYlz4=;
	h=To:Subject:From:Message-Id:Date; b=fdUGEk/Ffp/ujRPNnm/GgYVEiJ7teUrXJXj36AG3/h12mHMNjJNkBw7RGa/uPiURcjf4wHJuKx9POgp0fXvr3TqqQIPdvI8He5EvBrmgl7XbwdKhjWB699cOgUlXp9GoXeYHdGVvj5XosOQLJEhdWRtOCqgisu3y2VJQdaOei8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAGIRBmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAGIRBmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82BFC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748318393;
	bh=SCSNxZLuLhXoI7qpm4hjbd5fbwxFmBeDaQthpENYlz4=;
	h=To:Subject:From:Date:From;
	b=uAGIRBmFbi0MxiUBi/io8S1eWqZ6xpxuG7r7iUBV5BcJw18uHlHmU0NTt6YLgdlGv
	 UWQUE4Qmz4DNlB/tIpKW490hb8UagXkkhI2fKp834fTnCvHRqW1SRdBHxEOcY2CZCx
	 EJPHPOsOBRuRsPHleMpPGDGeSwXOFxDxshOiywfTaRoalZFMvD5djA8O3MrrJi1A5T
	 q76U650nE96K45I9tducq+mRQNKQCVWsAkyCCfOETzO1g1nTJ5O24M6evafao+VxbN
	 o849az963gmWW/8GWD5Crbp/3pCkS7iAuTLTicU1LJEJN/FIzlh+nFkIbyPVxyo7XT
	 l3P06lMIBjPeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F92C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831839357.28512.14538260005872039096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf74b72ae36d39f8aad05dd101b40e258508ea8c56820100b3e16cb021b0b8e
Date: Tue, 27 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748318393
