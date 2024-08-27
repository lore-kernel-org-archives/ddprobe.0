Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F1B2F37
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724723754; cv=none; b=bovPycalJaDvMPQ/0JEx0LF3Iioe+9A6cDv92ptHH1I+4u11qJKlb3EKsw6Ad/ufAK6n/pAMFvhQjn23rkpbUcbNcPUV5/j5TvKNFl29Z0SHxQd+IHFVXaFaihsdukQVeQrJqEsk+wc+DaG6seVCyvgbIH+QEQ5KoZGZxJqNPIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724723754; c=relaxed/simple;
	bh=QPAwJ9KH6tXdvrE3KpKBlEbFrJ/Me2F33x5/FLNLr80=;
	h=To:Subject:From:Message-Id:Date; b=J4T2jXnSTVbc8QAEjLVanKUnSG0aqlpMQ+Mgs2Zbn9PxZjcP8UR0i3LlESDWIzqfSb7k95PevGarlg/PvF+fZ5hSVKe3x/8y9jzJHE7o+IKomEQDkzf33TPmM8HZoa9OtV/tYSuadCXIXAy8znLSimQHvIvzNfpHFxwZX/KpBqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCV+zo/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCV+zo/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49E1C8B7AF
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724723753;
	bh=QPAwJ9KH6tXdvrE3KpKBlEbFrJ/Me2F33x5/FLNLr80=;
	h=To:Subject:From:Date:From;
	b=fCV+zo/aHyhm9OcZ8PWnhgQm33VO2EvETTFF2xHGY4PHiqacFsDzWXwI5eNI+6Q20
	 RJ82ZeCedX/pNoWtxz8NrJSkWYdGG8WoFcU2JAwhNAQF7pxxB87Wc50ejig7DBz8GK
	 +wIk6/r1dbhYnTmS1DWS8E5cA1XE5ntv5CnuqAwfMU/Hvz5pwgSQYxCtxRH613F7IY
	 P+hEcCxgRivfg5vBdFqVtYxeyoWabaVd7h4PTW4TXZs3YXHT2d9LtF4qoMjFKTEBsz
	 Rc0vTztCT/yoR3wKR6j1QGsbjwfq6bU/P24F/f/aWQ6h7PDnZaek2Vd0a/XZOYld1C
	 d7F6uUHyDCbVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FFFC5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472375358.11461.14809367340235480979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d131f23b9244b328dae01cb51b1e9f372e8240659c827a1f338948a974741edc
Date: Tue, 27 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724723753
