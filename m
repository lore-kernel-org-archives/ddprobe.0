Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2826F1DB13A
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751140194; cv=none; b=D26miHNgeaKEqb9yi11fkHwbxw6CqhYjvKj4/jvKjsE1y216t1Vhjl/Wg7SqPaIjKmWV4nGiDx5NbPrPzS7RBo3wIsRHb41Wl732Y3Ju7IG9RG1uhaOtkziQdPz1k0priMGk2/zrbRJc/7MGNdFk/YtlxwEzgmpHWViZ251Q75g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751140194; c=relaxed/simple;
	bh=oyMzLrskpgmA+F5X9HnwRs6OKYDyuf72zCmDSS9hnLw=;
	h=To:Subject:From:Message-Id:Date; b=EGg12yB1oY9BNYrnDQ+hhXK1qGjoYJlzLjxpbFqvxmn044V60wSyjRtDAoRE7RUHE/LgLH4nKgiUnxkANYF+YL3Nky4+EyqjnYrdLWMXC0EN6mikiDRldV0MHnYKlQmAaL3KiJxCXqk25S1KK7200nJKHpthwkugZTW6MbbxLUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zkho14MQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zkho14MQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDD0C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751140193;
	bh=oyMzLrskpgmA+F5X9HnwRs6OKYDyuf72zCmDSS9hnLw=;
	h=To:Subject:From:Date:From;
	b=Zkho14MQRusD36aZzSI2fK9rIywXJEQaYdP98M0E2xY5KVMCaFwsXAYPo1C+D8XKE
	 G/5osUu4QAgl15nStMV229ixPn/rMKThKh1Xi07N1jm3ST483dns9kBM2CXzHjFMPl
	 i7gTGiJLSgOLg5Mqafvg4t2QtCeIMJ4ms9mBukOcchyO9XinF3FGbpBandE94cwuU6
	 JJQFKqchwYojvxa5dcsI+HB36OLGnkAawIQE2MUOF24uu380lIKP6pSeVqy1cXSgVc
	 /jhd0t0GbQcsqckh48I/Tn7Quj9Eyo+QwH4eVvkjdYPepsmahJxoirpuo7zKJvYU6u
	 k9hGBizpgLzMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5FFC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114019357.4080.8926828616525913358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb44ae68d4ef77ccdb76f481c084bb2bf7a357c2b2933b58e89c852f69231b7b
Date: Sat, 28 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751140193
