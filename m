Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C06F2C1A2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745168394; cv=none; b=rOti5vPThMyb+Ah8SHMIsComxU3LKP+Gtib4XdtlhTUWkRNv2ZjuAWckvQaUzhETpKAQY21b6TE/Q1c4uBx4gO74xOPt5Xjf6aqycprFr5lpPOqnNzI99fXPEK9QY4Km8fyumemJuOgpy9OZuxUDS64ieVVnRYdvKPfH3dlX8hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745168394; c=relaxed/simple;
	bh=MEp8BDQ6yF+1TKeUzkIL8FSCIbdLJA34eGfk8/5YyvQ=;
	h=To:Subject:From:Message-Id:Date; b=r55BaduSwNYCNqNmm9OnQaiw00lv1R+fUE9qDJwor2/5EPjVRRUjSUqJROoiSeQN75zzYuyRruUOJOZz1D8uqu9XchoqBdHZbsgjxvv4AIe0jj0Az/75fa3Occc5vUaDcFf0KKL9865gqUJpKvFT2NKvxWvd3FEu2ykzFWktc6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAPGdFsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAPGdFsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD2FC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745168393;
	bh=MEp8BDQ6yF+1TKeUzkIL8FSCIbdLJA34eGfk8/5YyvQ=;
	h=To:Subject:From:Date:From;
	b=BAPGdFskuQMvtdcEFEK3uF6prldSmDhSC6WIdONPvdNVrrZJYLEkQzC01eFslfVdc
	 qVn75IbOueb4lx9RXlqiceq+k1+02YaAwzS55AO/0jOw7CN9gCa4sveTNAJx1AzIZl
	 J8fzHtg++Q6tFOhv7/rglD3oQC9MY/puPmE99pLEscecjZ76LYX1qNSItq9UQ+ZsK2
	 TDKQaeVbOh8GFUMEKNeh/wI6sx4K4uO83DX4u3LhXKycVphaJKvEVzaLppV0qv8Yps
	 Y899l31+eKKIT4Dro5F+oTU+VQvjb5xlv7OE4sLMrQTGPkv7q9UdSKpyRaiem2kEE1
	 R6RKoej/yrsIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976A3C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516839359.3337.14165776972114122196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063652fbe9f8fd051a3db8a3e97d816d93e0412257260f48b3af349606cb16c8
Date: Sun, 20 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745168393
