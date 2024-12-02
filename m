Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461831FDE15
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733150754; cv=none; b=T7Zi+AnBmEMytFkf1WG6ZbGooo3gjYM2UJPLoZGmdiDnipCMFc7AjojchxOszJU9uOj6NkZAAVqSZpp8ec+/i645V+gu1XeBJd3vc3e2ifvECYJ7/4kwb4xtuFsDbLKhjXJ0G2NX6ikSSGA5hpr1ANV3m4Kgg5J202aQ7+jfzP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733150754; c=relaxed/simple;
	bh=VKZdyDnBYSVTyHVkjMANYFGTk6OSjlwIV2+sN7WepZ4=;
	h=To:Subject:From:Message-Id:Date; b=IK1PKoxKFZF2OCaSeJvUnZRVtf99GgkM4QIF364WWbd+ZCEK+Kp3zjXk+JoKphIux9+uyN0sJXTYPN+mdzzL7EUzh/eyHo9hMBsaXzEsT9rVkfaPvAKTOrW9Dk8yfVL85kj4Ai49j50NPoWlcm0xDNmzUzAK5Y/ZEWZ+fXKVaHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5JCsUpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5JCsUpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA4BC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733150753;
	bh=VKZdyDnBYSVTyHVkjMANYFGTk6OSjlwIV2+sN7WepZ4=;
	h=To:Subject:From:Date:From;
	b=n5JCsUpLLBPqqOKAyzW0rwf3XWPY0/BByNniUYOgzwvQu/yKvhkLObh8tE+3TCeb/
	 g51cbAC4XFc7ug8I2kZr9Td5vQZzE665AbA/6TmzQX7w0J+Y1Ys6kFVgRCrpvrc8sw
	 IcNZGUzSNE7VF9qqryItgxh51iyoGN4x81TLTo80+parbYKjmaxKzZ+kyGQaOvWl58
	 uXVPpITK3Z2gXJOmfiHzEvU6C4/Iaoa3cptTdcHkOhkz0etszG+ce5hoQwM1wgFb0n
	 AGdp2xEfHR3jcxLCH0SwV6l9pk6KfiiZfGbujOp95Ls6H3nwutNmJ/8xEDQQGplBOd
	 U/l+1UM3I2hJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E64D78326
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173315075361.12467.18200584123953031349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e003d4efbced53bcf5938be93cf056636ea57a29f791a00659764ecdafaae9
Date: Mon, 02 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733150753
