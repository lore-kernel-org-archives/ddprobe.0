Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB662C17AB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745929795; cv=none; b=H74ZQkLr6rJGcgRV4ZvpDxW+6ck4I4IC7flZgTNGXJW2GGpkUvDENM7exqCFcmNIP82nSzKwvkHZs6eMJwOKBJtHiWQ/g/du5SiW02RIc+zfifXr2/rnq53/TmYy5RPA6+0sLAej79/QI3mfebnKrVFtOwuwmow9AdnYjPpTDOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745929795; c=relaxed/simple;
	bh=HjYAw2UH2V8TCWN5jRlANDk4In57oH590bPjNYcuqs0=;
	h=To:Subject:From:Message-Id:Date; b=hg8/GySH23FwuiX2XJK7AZz4Q14ZUYosMgO2lvqxbdBNZyeF38Z8BNDWufX+ystvmg4/4ikkARBJ59jkWFhHtuJeZfz8vQOAfwXMc14bEqRJdqL8mNHPMwg+N/bIV/dWMmlBM9DG9rtst7rdsmnixmFXKNA8QkbOK5ILBxJjV04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvjTOdYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvjTOdYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49CEC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745929793;
	bh=HjYAw2UH2V8TCWN5jRlANDk4In57oH590bPjNYcuqs0=;
	h=To:Subject:From:Date:From;
	b=fvjTOdYXMO59yzkq+lpbeaERadzYHcOV+BBPMLeGADE/hiLAYH0x3IHqG64/HTy4R
	 4q3mxl0bKocBK/qqzmxvFQmwA+p2+OpgEn+SAswicxPjorpMGkiNXzxsr+HsyoRb3U
	 s4Gr0SGb4qRm2dIQoclLf0jyic6fwlEfzSO/tWKgwEs9nXk+iXp8qpoODiiwZpUMTT
	 nVMakyycBws8jQnezpS6eV3prAGODU0r6aLSLQwro0ZNX0jdN3Gq2j5jrlOwzECiLV
	 KKdQzbGTD5OpJSxyGIwbRzquyc5LMxilZ3J05GQlHted+Fsx/1W7/fBgwAWFoCKaLJ
	 HBA8E/aU5xg+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A023AC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592979364.10822.2319104663124291942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9058c8eb0e40a06c619380d8e1f4d593bc76d7b609336c0fbbcfb841d20cfb7
Date: Tue, 29 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745929793
