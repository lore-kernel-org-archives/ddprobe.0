Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE6534AB18
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760707194; cv=none; b=qa+dW8F+Fi3cFsWmFkOgwTSWfpoDe1E9Xnjq0Nwzs9mAGjoKOVAO5Ee6I5bIk9jzst5p9AfgBcsCkEC41dOq0176/OrYNrAvWOBy9feB4hqUTfdKwoBitQuIe85L2Qa4N0fEKqeTMkb4C8A2guic1syCk61Pce7ymDrEO+h+zhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760707194; c=relaxed/simple;
	bh=4B8HAyQN88S308M5WykGeL+Zc8XjoxsbsXzX2tzbi+g=;
	h=To:Subject:From:Message-Id:Date; b=Opmf33wKbAGeHFOgU/CNfLqxjd3ErM4MrEjAitQ38oCXcoS4QcflbIIyxViHN3EF4IeLyIKheCRyegZFAYrBDd8XoDhm/GAf55/Qj6EE+Qi6QKhihS1/HdtwJ4W3BE75Ut6y10lxZCKds+6ameWRCQ93we92V9uYDFNdbtssHzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DchEHbrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DchEHbrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C29C4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760707193;
	bh=4B8HAyQN88S308M5WykGeL+Zc8XjoxsbsXzX2tzbi+g=;
	h=To:Subject:From:Date:From;
	b=DchEHbrk+hiQGdJsYJexjTAtNIJmcs3IeDrxhhxM/T8ZcuiHpDPNifiX0cKd1m2DP
	 sXfHUhi46Ph4t06LsUd8iJQ2Hx9tEkTe8s3No5HawCLV7NfgP7Fu4Vkt7/xRC/orAh
	 iZRUnSOxxQs/LmIoxx15IG5Opju3/ps8231obTs/Y80UOBiFInxT2LBqMN2zv16rVT
	 jZnx1XwFErqW5MUIfW6wm5d3z7oSyLSyAccMUJF5RK86/HZRAl630qWY0UxesLqvQe
	 +rCD+l0GrXhhhsD9pPKWxdrRt7wEn5qMyb+RFJPhDCk6hxJxk0cI3nUZEViof8VIhm
	 OdG0nad76iivQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924FCCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070719359.23033.16900342948028930407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271349bc721103b5f095e7222540aa24442350d9e30a4140ef23acd224772104
Date: Fri, 17 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760707193
