Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBD0944F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767513234; cv=none; b=eOFRlosDCkAw9908tGIQdD/x0HlskWZ4t5zQ6nKV3rUNf7S9lPoSjXL/ir6eEDv9nm+ZDERxrgXeVZX0J8ekFazYQgOwNJx7vxgIGGjGHIKoRVM/ZO/b+o40y6fg3ns0kdDJz2ITIEsgVBc+OkUdPbbxmCav01QSzaKIKPTnGo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767513234; c=relaxed/simple;
	bh=EsysbI4MrwfTgQHAcQDzrTkTwOl6JU5W98wko6s8cVA=;
	h=To:Subject:From:Message-Id:Date; b=ZgaLLPObEe/PnWFLGsnFF/RL2B/UaDoWdEsImRtebmfP6UqL8hzSp2fPOpUfWijhd+qFIbEjEN3LL6aOAN9J+X/b0RXyxv83qRi7BCjZir6lnS9aC0o07g6XdGiEKeO7nyhrOyeWCYJOMqjT2me0IIdFbQsh5ypd0a96FWQ4sUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2avizzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2avizzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05EBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767513233;
	bh=EsysbI4MrwfTgQHAcQDzrTkTwOl6JU5W98wko6s8cVA=;
	h=To:Subject:From:Date:From;
	b=c2avizzvT5GXMBAepzBFEjPwcuHt66lir4v3wgTmRDeDnPRGQRAvGargS6bRA1eHw
	 86BPAmRLmpmhlTbxKwebR1fsz71Q0eR2JbKcLUwmeaLxqwbcknNInq3mx3FjR69lzn
	 c6wkxPN/+2DkXaHQSCeCUa/LRpYiO0I9jYNoled5qMW3BQ1PQMrHLEgQii2EKtMeYg
	 nodfbjQKe4Nt5j07uYyqp4kX8biGP8qXmiKtUqbDnF6LgrSFj1VPN/c0qNJVUmvvZq
	 9Oi/T9bZyC/15ZQcU/nTBUvTuwrAWfYOGND978kd3xkckusDQsIdngCXidrj50xPX4
	 RE/vT74hl5UiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03BC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751323357.26908.1009651882559371822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3052c3f9b4916f1cabca49d96301d09e44744e42609c0dbf9fbea52685b35f40
Date: Sun, 04 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767513233
