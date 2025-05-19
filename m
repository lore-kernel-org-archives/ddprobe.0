Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D3C2777F9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747660194; cv=none; b=KUaCOmdKYj5lh8EBN87Ghks4gA4id0Di4c3WRGyVq+3S/xfwwGLRkKF4cA4jKbr1qjJTyoVjsbkW5nPdwnt/Wl62ctJuLTkW3d7xKTJAqAPEhll4MR87xApeR8icYyC/TEBfmZzn1FxU5qV5UYljfr0oDaez1et9L8snvlvwbDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747660194; c=relaxed/simple;
	bh=uLoG64IquQATBA/CNdI4hfoJiK1tviG6ZuaHkrTJMhI=;
	h=To:Subject:From:Message-Id:Date; b=n3d1U9FGJrEWDha6aplamBqNSaqqTphs24xN3tFm+rRIKa5kXmeiFKtOlgn5m2muJ6WNUA3Vjg7NT+FTSXcGrc53QZD+BJ6bNXXc+PvLKSNaMbjZW2/M/fOVlF4VK0h8BJeEwKI4HcDkv3HP6/J392LkZnAu4gnjnBFlvin0AiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGq6Br/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGq6Br/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0918C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747660193;
	bh=uLoG64IquQATBA/CNdI4hfoJiK1tviG6ZuaHkrTJMhI=;
	h=To:Subject:From:Date:From;
	b=ZGq6Br/a2WIzU4p6ytrV83cnFmcPxXQbnr30PDwJTweeyljkiqHP6s7tCT0zPj5K1
	 b1x3ar+x8I8JhpKHH2aTlHpcO16rboNh9PZQ+/3lpOzvCjpp5sresEZUR9f2S6C8if
	 zZXh1DuplQ8qCc632IyySQWn5ZVa+PkUkoZKqPsoukZKHf3g5rxwx37ESkMsDjePdP
	 /UIp5j6YrnN7F6x+4h1IT8iqIDdTd0OX4ksrCfrbQrBzi62yQgYcEf+5Bibkm3wNgO
	 OzkdrfTAhpOcPTVVnBKluY771TOvVMzDcagjkQsqrxLA5XLZyFr9EFK8gOaGz8fHZb
	 TRgXkP8hRYJyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5FC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766019358.1355.4937671575226300157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb41901f16042b775ae3ba95f555b76cf8db1b3097b7b0a2f95bda1d701d3a0
Date: Mon, 19 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747660193
