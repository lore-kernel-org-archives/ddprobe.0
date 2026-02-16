Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AB73016F1
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771239294; cv=none; b=afX3+Jqeg/2BOrGzI68d0K2bAnFEGeV8l9l8irEreI4C4C3cG+eLFlbzJVA6PQKqFyQtQ4M1CX5mxi0K6nBUeIlh/OgAtBlC4mB9inhOk3Miob8AMO3EnamjmFn4x2ivDGcxh5NXkUre2PEhzwLFoQnSrfkIS8xhw6ypKuN2kC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771239294; c=relaxed/simple;
	bh=Iwp3Uza4Nnh/bYysN9vzNNjhaaemwY6M9tEEsPc0rr0=;
	h=To:Subject:From:Message-Id:Date; b=emdsLPvu1lYV0cJvFhPY9xTBQaEP1WdXPG/2WczCrVZh9ob8Lu0ARv5lQfBg7mpwTejnjtOj2jv5ykvEYiTDSpkEzOcY0cPTHCOym7/7fKPVwuZIuHN6+zeMEKq+QMOgkH32/4QCl+xQr52AASVUTYN+Ffk6Ifh75j9O0Vb+0mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ux7vF0Tm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ux7vF0Tm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDA0C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771239293;
	bh=Iwp3Uza4Nnh/bYysN9vzNNjhaaemwY6M9tEEsPc0rr0=;
	h=To:Subject:From:Date:From;
	b=ux7vF0TmM5wJeNju4Y87nxHUgmiAG8wPiDeLgjq6WfWbrs8hznxMtr+jaqow6HbIb
	 umoA9QjUZX8Lj+mnd6X/OGEr9jaJ/1ScjZtT6XO5rWZItVEkMeSvU1+qi6g3bGBN1F
	 Pz1doTmlRUM9vGVcZQK6ogAFVrt0RlVkNcrwCJf/TK95Sba9G/k7X3jYuv0PUZi/6J
	 hLpxySnPw8HMr5H0YMtfWZK1H92lKNPWxcEHLMozXGg6IalnpUIcfq8x5xQ3Ii4mhS
	 dpuE6aJQlIPpnC0Q7XqK4zO5k0CW75cueao1EDORjTGsuws6LtLct9xfM+7Q9O+M2t
	 Dym/+RQ4/PBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0C1E7BD8C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123929361.25753.8144080575539955576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452fa5a47a9f779f5cd898ce2719bf6dc35d38e47cc19510029ec35e53556d03
Date: Mon, 16 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771239293
