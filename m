Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F7F39C01E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781439994; cv=none; b=VVuhCIR6ax6guvyiRzsParYwMgTUV2edeGV7btShL6NCcdH9EL7l2ATw/IPL7c2ochP+PwY3FmMNDxFoRkQxiaDRdD9j23/rxDznsmLIQibei2ew+NeDpoBFYAnWP5woM8gJXt+sggudA4SJkJdbPcbk0kA70g3Xtx5OG/zsgME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781439994; c=relaxed/simple;
	bh=eK4PLthQwQySDp6fysBtYgSlwGOhU5YuWKnMdpzEvYI=;
	h=To:Subject:From:Message-Id:Date; b=CQ75FOMuCNu50vHgV1jJAqIVe1uxBq0lf76+0lo1N2VRLPbEggVtzp+hg4J/Hh/0ZKBQp9GbTezpS8rq7MRE7W4k0Rnrldermlmqs2QcmlYiqMYhejDN4AB/7CTECr2qd3FWtZYE5NIASIHVb/ifboh66oLmXT5pUxsxHoafdQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxDrh2tO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxDrh2tO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE945C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781439994;
	bh=eK4PLthQwQySDp6fysBtYgSlwGOhU5YuWKnMdpzEvYI=;
	h=To:Subject:From:Date:From;
	b=MxDrh2tOVsT1kto970AtaksfFIcA5G55uWYDD+Jk5OuVtEaNOGEpnaJy872O4dtkd
	 IIW9wMk+Zq1gNu9HoefvLxgpAR3sb65E3lGdl87+oaBSK7iYzH4PjxbrbNWrtiqgGb
	 N+xKXOjrK7XTGbkODwWeizbyp7JOzy4frDLZ5trtETo7Goq8DiVeFuSf9T1+yt7gMs
	 3TN9MgQ2+nnRhIG045ZV+5h1b/uKHJOqQYtCLiA5bWenH0Uwr98aukyC0lYcrkQ1GM
	 zB1c8l5hwLqK3Iwqgjx0LwHC/haaMQWUqojlUvU1D7K0d7XYINE4gm4fymaQw+XP9R
	 O1U+3mlqxv2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C519CCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143999378.11790.18152284200750681002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00fb5c6725aec76efc39e4c37b53745b9d277d63e0a5e7bc5bb6f64455263d83
Date: Sun, 14 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781439993
