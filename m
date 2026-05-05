Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243552EDD58
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778005054; cv=none; b=VbTZscPRusYrGVKd4pWpqDKCXKyl9AUAt/eFbKbZvM9HbXla3JWHCvO9nzlWD7CKrTeukmKoJ16AGBSFkiSJgQ+lRH/ykl7mINGEfM6wrk487QILiWDExpYZsCjjUR8DpVEaFVy7+Nhwvj2EvFJhqz5yA3OF4l5i4XMUTH+jvZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778005054; c=relaxed/simple;
	bh=RGhk0K5SHknnGB4kgGs2uvki35OuAjxVuvDqUe5bEVQ=;
	h=To:Subject:From:Message-Id:Date; b=DyWUPGxl97vnThaHrZJneQnuDq6zSeBJsCi5mO/nYEmuV7F+Tqckc8RwU3QRFnhVzR0/YJzjFq7aG8W/es3rkTCHdmi5i8uunY66hDMcmhV3jVyGNi7KszhhiHCqxl3bjekQ89QRxM9thCrXp09UIwMcvFw6sG7s+po3vIZjAjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOtCEkFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOtCEkFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D29C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778005053;
	bh=RGhk0K5SHknnGB4kgGs2uvki35OuAjxVuvDqUe5bEVQ=;
	h=To:Subject:From:Date:From;
	b=jOtCEkFRRsbCglXNR1sw/2RzVOJugZLNBrs85nxciRjprcZZZc82aRnn2ls646jw1
	 XOwNPQM6RLeoZ6UIa+miApy2Du5J1/mfmIieeGySfRx2rR8oyt5YgT7hKIU7wb83qj
	 JaQKdyoHPFqp5zdDZaK/Lq3Pu93L5yp7vut8qF+7hLLWk+ZMQ+CIq4iljIzcgAKjNx
	 +q3vUIqZQtG6UG/8PCCNewXmXqsCPldc41oNHIioqE7PDiUbCAdTYuDKm61GxWe4/Y
	 UzlyWmitumKYvK7glubdgQ35JETfiKjpM2vdlqJ81QWddFojXDyM+ORXwHI+Uwz4/r
	 3WYCSCi7AK5fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE39CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800505369.7305.2204898765028911950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143d74760a646ad44a8da8a9cdd53a5c28d669d9f967d5af80627913eb059d27
Date: Tue, 05 May 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778005053
