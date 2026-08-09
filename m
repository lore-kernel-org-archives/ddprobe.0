Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D114502F
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786299034; cv=none; b=IE+s5w8Ap0QHyTCKVqN5eFofLEg4mSGPuXgm9mIw+LO0Q3uNz2/Ze/Epv7KTETObdCuNka7Ti1kkVYHGiJvOzTIeb1tolcNrseAFGAoiLq3DkzznQzgz8SWFHj2JUaCHnpzpgWHZx8vYoyPobnG8Mn2eGjqss6ROG37yA6hh/Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786299034; c=relaxed/simple;
	bh=YnPfV7LQCV1o6u0mv9YNdJcIWTkRNNoJIa0X8h8l9QA=;
	h=To:Subject:From:Message-Id:Date; b=ZsitJINCncwy/ezLSVvXEgKSbxwzSL197iwdmk/H6g3sN41aO9DQdaY1jSNjwDF98VhPOyHZHtC+nPCtonBygV8I8ob5kysmyFU+FFrKG/pKhDDzGl6vCNQvIDeitC69f3hqKx+rOyeQBpINJ8F/tIJWP5gCqF/PGWpQrvSRXXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o30onCF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o30onCF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF87CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786299033;
	bh=YnPfV7LQCV1o6u0mv9YNdJcIWTkRNNoJIa0X8h8l9QA=;
	h=To:Subject:From:Date:From;
	b=o30onCF59LrtmMZ9jrB42utrl8WHhhk8w41mjGTcm9sUPkK2/miwBeBraWUMnlFRo
	 SfFbqkqQDpRXxqn1JyNuNjSIBG9lJxwYWIfctZVapDG1JpWWSeRqAWteo04J7ywpJg
	 2eBQi/89NtSJey4HPuovnV/ycyUAMtcmGtqIr7o376hrHTmlDGk2RI9WM7SWnUbtNY
	 txszi3i+PyZhM4QrryuglrjIaKhMAtPSf5BnIwauDrwFEVNBnyIlK4FhpSbFnTdKSx
	 KjdAm3sbYElV6MmDCwZwVuLkiYU478IbFU3UHTKjxCdpSfVHUd1KgdTwS9FVzlReuR
	 hTwl4W8whEc7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98AEC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629903368.11268.14002966575132605051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1196ff09f39f269f0367a2533f692f50046736c63f03e0b2f4199a634868112d
Date: Sun, 09 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786299033
