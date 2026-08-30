Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A57272630
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788067234; cv=none; b=KktxBH4RGqvZjYJ1uV3K8bakX+Ydz9Bry1Y1tNomDdMj/+1JhD5TfzctZUrJzfElGiJ/U6WuhQ/Vh9yyb4+510fEsVomYsqvpnKovduMXu/WK2vWa9VJaKJxA0RnyhvAcx/FWzQk4lWnuQqKAgyUvNfIiZ1WzjVVB0k/qFALYIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788067234; c=relaxed/simple;
	bh=7EzsflDsvUhGYyxRSDKcUFel65ixQOenfQf5I72/U70=;
	h=To:Subject:From:Message-Id:Date; b=iWSGZvhoWgt1YKX2wkUw0qR6m422HL81qoolFzn2T6joHIW8BzsRozIIKcDVWQFo8lXCnTFvW8cVPv6p+mC54FQMZO9C5DoMuTGuxblMlwnAXOn0enS6BQqCC9TO0w1SD7pry1+WlcK3WyneQVUv9g5nC4iKqJx70l/4mQfwDr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M96WFkn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M96WFkn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B9AC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788067233;
	bh=7EzsflDsvUhGYyxRSDKcUFel65ixQOenfQf5I72/U70=;
	h=To:Subject:From:Date:From;
	b=M96WFkn7S7LNKN1ydlWdqNg3uJkH1VojrG2363558//Jy19rXYalQSOIKmA7ovBrC
	 0GWHTLrxqGDq9XPuSWhVVDX9YAp53gAfWvVUI9+MqS6IJdnUWF7piiJbK5m/n8BOCu
	 A19BDUbUt0JCf/KglH08b5LxtDvyi0qXpX6WPtA62E2X6249FLq7NQP2ztPZ3aaluY
	 khAwM8LNVrEYK5dH6r2rw3aoc8wbeICTcGCAwJWy70oCsDA+HUg9FE3TFDGQ+gEGPe
	 qlZhjbixus4E40cbCq+dAp2z0IcvTeZW2awAmE0CYm210xjQgsHuvLQeON4/Ws/Bh2
	 Y5FO0LPchuZeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD79C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806723368.1912.3823855203205699966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db08ec85c9effdd5e9e1aab9d5b0afb92a0d6dcf5dd9f54c8f98bfa8f078d8fe
Date: Sun, 30 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788067233
