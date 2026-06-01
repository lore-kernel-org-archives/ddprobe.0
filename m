Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C46139E9D5
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780312474; cv=none; b=stphue2RNm6Wlf94FfdxOl5jnUayHAydfusYFUzhE7FejN5vul3S1xiQmG2/whLKGGUvWzr0tVnNjPYqaSt5shQwmUYp6Hr2AhF1bXQonhhDc0b8U0vkmGj1O0j44R01aFp6tfDRexU9aWTdkYEU3msapUVNra20TfBjFqzyUww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780312474; c=relaxed/simple;
	bh=L18rOfGx1XGplO3Pi8+Z73utSQB8bpdvJBbsUxLPAZM=;
	h=To:Subject:From:Message-Id:Date; b=HtqFrjgVprmYh1POfK4GcfTNci9HQcKRsDvTlWWbpwe33hXv+xyP066LQhfIyMLOCoE24aK3fDeEjpsfLt9DIqVIH829K9/A43XEpox1DMht9Yqxi/KWpmbxeBsiSpqaPtBKuzuKG7vO9YugC0TMNT3sKIlI/OR8AIcWM3LOYU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohHUFJN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohHUFJN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93B3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780312473;
	bh=L18rOfGx1XGplO3Pi8+Z73utSQB8bpdvJBbsUxLPAZM=;
	h=To:Subject:From:Date:From;
	b=ohHUFJN3SskDXKv0gf9BveDNXmDxyqt5r/ytGk6+NgkGyjuB2A7rSXpNHEsYap//x
	 2ljWIw3xoPz7cPsdUqhk+e6CKBgyAZDygJ9+1fdelcoAUna+k7urTi00INPPsj7PTU
	 Dokfa7GfYGu6bfmRzZdHAqB0eCOq9sM5bRIbTjOP5GxCuud3vJfSCujaI1s/Dxf50K
	 n+wl4vFmD7XrjSs6qK4x6vyRapelEtLZcg4FAzMrgfXtYnmoR2XpFxkZ5jqFJdA3fO
	 dLyJHlrbCNRH/h4TGemeOAKLmQiJKjFsItMu8m60EbvWnLCaC7SELEnZBEBi0k69Z4
	 KJM20yZdfcQrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BFACD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031247368.24659.12358040843026750268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c05e96c6fcc860d4c125d0667f00aad8fa616ca09d891610bf73055c947728
Date: Mon, 01 Jun 2026 11:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780312473
