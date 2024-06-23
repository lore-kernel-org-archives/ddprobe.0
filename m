Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455E61822CE
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 16:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719159143; cv=none; b=JhTvxI9GU1ziGGNmzELS76gjMHrBWyc++ug1mwsngo66FiULkzvYOhJA/b8dq6WkJLxCNFKf/a7k/30S2WbglHtPVXWKgITCeqmcaepr/kqmulLEQ6/cOt9JjmvWVeUwLu+O4xIb00ssIK/V5UuwXxb/LkO1JYQRP6C1g2OlC8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719159143; c=relaxed/simple;
	bh=Fz0gPZLzHsN88Z/zTymuQFmteajl24jhGYKbXyfjhCs=;
	h=To:Subject:From:Message-Id:Date; b=TXnhliQDo1AQr9tBRRmFL8RDPPSKEl8h0a1wD3aVQFTmm1XRxyBUrP2wM60Ne9OQOOHMSmdAYw556H6ACi1CwE2h2mm+iFWK/rwwZVca9xY28xHTBDDdYv0ZNudVEogPPzrrR1qwiumpiPYAPLQkOskROZYcKSsN2vnr8a3nY4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHZgAfRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHZgAfRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D394DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719159142;
	bh=Fz0gPZLzHsN88Z/zTymuQFmteajl24jhGYKbXyfjhCs=;
	h=To:Subject:From:Date:From;
	b=AHZgAfRNnoobjQKc+8YlkLHWNJSR7xocsjSNSgpr6CcqBTvC+Jb3sz8YRtQeGkUUO
	 9rk0kfdDm2I0Tx+VR9m4LsjxD0+/HkIyS91mJ7OfdicG6Kt5Z0rdD3QfxfDCN/4MsD
	 wx/DQtHwZp1fIGgMvzHZV6S8ONeUMfXrpBpkjiUdzaFn4Ov9K25d9xFDCa4HLsXPdZ
	 1dHZzGfOYjlmu68rr/2qIxybcmes70olCMFBSiR30U8R2lo7ONd9wHL6UYGby/h/id
	 tIJ8UMOrhTrBBAfQKNY72vftWGmYt323t1SYacw4LlBTD42jGBQIlxLaNZJ7Cbje6e
	 h0zZrXMK+CdAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3B2C2BBCA
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915914277.1189.5452553051930158190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d773d77e5be84e5a1bfabad9925804b83896b83606aceadf52164c6fbb7ad83
Date: Sun, 23 Jun 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719159142
