Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB3830B502
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781373994; cv=none; b=S4CzUoKWNrJRza1lTTXFv19g6gQZ8wjwJg3WoTwRRexCHDYR18tgNt/PPp3FymyNGVF9TINsO/9fLdWcTTpFHvCSlmLU4BzwjpRGAEYUlimBAUMowxOOX17HNQK/IVBpBmF4pcKfte7qX5pptsPsVv1Uw8DX8t5/90RIfQ5ROdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781373994; c=relaxed/simple;
	bh=4F1kONwXRZWhcipdP/fH3oPJl+PiDSq0es5mHed8k70=;
	h=To:Subject:From:Message-Id:Date; b=A0EoilHck8nMB7wPVa+au2OWmjkVTG0ScfFOmW7oE1KcZ2T7GH+2VT6KkjXGzxIF2p8uCILfSH9RTaxatWblUxpruR9b0frTx2YWIu2508xjoRjj5CW4d/56dScOlIpleOEvOKTxSmqxaCFh8vTIQdHNo9HODOakWpkvCceZKww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5v3hlde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5v3hlde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0481C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781373993;
	bh=4F1kONwXRZWhcipdP/fH3oPJl+PiDSq0es5mHed8k70=;
	h=To:Subject:From:Date:From;
	b=B5v3hldepym3ZDRLyp1bEUC74h2MEBAvGTHrMuQDiLnS0kMcXDWds7dwf5VSE/Pa/
	 926pV6W2YnzUFVWMIDe2pTzUokKgijf4RS3uBHHKZRUIFi3fXfH738szVlf1/kC1Ks
	 rEtnfzU5gu1200sXOvaIa/jCICeov5gR1QoRr3+rTzSkYZDpV+l9t7ktjH9Bef6kof
	 7A1i5YWOG7yeEGbeqOReh2kzU2eUi6/hImssicjHfW9WBXpOupnU+ysMRWcvbXxWep
	 evO3Ojcy9KQ2zGWirbFqWXJVhHD6FqhwBZInZwhW0thGUs+p18jzD2UtNkQC5c1hFw
	 gTZeoOP52H6hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6ECCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137399369.2343.5766787900369514551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484259aa6399aa35d1857eb7674a40d18548060cac3e3885297bd085a058be24
Date: Sat, 13 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781373993
