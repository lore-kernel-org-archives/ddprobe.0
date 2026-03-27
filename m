Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30032135C5
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774581294; cv=none; b=WN0/2nGqXBI0iZsXgKZPiXVZlQRO8ICD0DCVITp7U56xpj31op0VJWku0Kivvc2npt2892NfTuYg+4xZLKYzt6KPHouqnHH/Zx1b+ju1dzRiHUMZ4sSXOA2uQtsqem/rnY5LgQnaW7EOZY1vEHBRvnhBI0IawSIAL+fmYAXm0dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774581294; c=relaxed/simple;
	bh=OqZQZ8ctvFUhss5tjAjwunYqC2vyEQR07ceblerJYTE=;
	h=To:Subject:From:Message-Id:Date; b=TcgRrSm8VNSXrGp1PQHz5JPNEuTZBDQjXmISLKaosbLNkqnTITQJ8xMPq3wA4+KIkCeTrqGAIUC2MHl2YncawQwOxRhSG4+fEiDREjbDJiyvj79ldWD75fRsf1HognaK4ITtTsp6de1mBJs7VlygiZwfW8Efy21NtKRgX6S6mMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAaOz2k1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAaOz2k1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A221DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774581293;
	bh=OqZQZ8ctvFUhss5tjAjwunYqC2vyEQR07ceblerJYTE=;
	h=To:Subject:From:Date:From;
	b=bAaOz2k1M1KAL+NmIsbFzxjORwtqSGV7/zjaBUery9IY3aoN0/4WAAPjouUqMstwF
	 NerrFD7b72c6xVh08l/bGtuLvRCqdngBZlJ99aDL/yWBJK2P/I8Qrk72bmloXltkQ/
	 c+aSe1tOTL85qNutBBs3IdYusyzLN6eYH362v6woU9dZFfRZ6477/9ycK0mcdjsftf
	 jQJ74Hjd4Sdqo0Vebqi5bh3sCWMq4Ky5PJpgi17KKv4gvNSfmD71OcOvAnPavphf3d
	 gqZvTTY6enrI15J0kvf5dX8hd22TemM6dJQ5RjY01i7bk0YE67Zl/umHsgQzpAwHrE
	 M8/rDUWCdNrNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BFD10BA422
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458129358.13709.9786160507762288307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f8cc9ec5d8dc0f65662f26ce362df61bcdffddcddb29c6c9370cf6c439872f
Date: Fri, 27 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774581293
