Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116A820B810
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774922694; cv=none; b=Rv9eOG6GKaDg/iK9+UgKukFaZC2sKSTqrvyLmkKd4nt7YIYZFQEQZIeNsCAgeYQZcZteAzHkxMegTxBVeWYHcI9NCmmFAmEYdtKhxtvTWoYfzRiTiNNwOfwwqCGL+EN62GCKvBSnp9pUOJaxrNWeMYXlszhfAe5lO97NJroVnDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774922694; c=relaxed/simple;
	bh=rT6ihyK5whHPClPFAwn+uV8GkWZ/okAINC0AR1F4TbQ=;
	h=To:Subject:From:Message-Id:Date; b=SmBzGUEDteQZ5Ssnh+G33PMkDnhSg2bST1KykFXV2lZecfmfZMyCbpVEm2PWqTyR2RBgSm6vHG7ChHiW05tcfWM8FtzsJcieN16J9raNyPyZb/+5DDc0GE914/bDuZP+2CPT0WZvx3hePi3/fFBI59OnRvThslkRjTPBDZZoVLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1NCD2CH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1NCD2CH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96D6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774922693;
	bh=rT6ihyK5whHPClPFAwn+uV8GkWZ/okAINC0AR1F4TbQ=;
	h=To:Subject:From:Date:From;
	b=W1NCD2CHsqSqyoh8tC6GuFJcb6H0mceV0ANd82cxNP9OXUeIkiFNhzl8iwcD6ormy
	 ShVnoAvknoN/bFcECs9z+ifqTkwKGPKLZ3Bdolm3EWXzKhB9ZTMPEcxfdFbVYRLa1o
	 gcImNt/EbfqkaKPazwRs58nkbHvZQs/faWPK96TiKlktPSP3/cCgRvu0GiYuxHJPu5
	 YC9kWxCa/orD2KNngv1PU2yB+7qBEUIfzaI7RIjzV37UqfbJEsjYawLyiUIVvztYvR
	 joCuxW4a84LbeDBGf1bOVkjOnqdBpbxHGJZuN1xAXj/rF3Ub+TuBQCVLIt1QceQ7sf
	 Y4oYS3arUkvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F691061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492269359.29812.13342308938540635064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6a4bc406208be469e0195f9489a818e5bcd25ad6b883603775f629f1d74d40
Date: Tue, 31 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774922693
