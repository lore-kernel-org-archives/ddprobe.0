Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BF34C6C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771342494; cv=none; b=QEPm5grO6Dfsd3ToB7NgcPl3iWHR2PwzoCt+TzcTk6/eNz1uZcc4TWlFAam1l9WSevgToVzwyDlqfd5bLLH4vCu4CHfookUkYVaVjQ8E2xOQlrU91U5VUF7JBKtKI48/6jUuCHv1Ys/SVtrfGh+l9bW8fba+AE0KpNXl2wnjF8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771342494; c=relaxed/simple;
	bh=7DUS1ZqMI8teZpfYUtisi4cWkxgGXQexe8RygFpPIdU=;
	h=To:Subject:From:Message-Id:Date; b=r17HAS+TdeB/t6lEw9E4oAnrp6J8wSVWQDvMvqcCSbigKe59g5xLkDa5g+aoRT5uXCuIdKgQCMelRPq5AuPxW7Wro4CCHl0+ZS5gabgE0qUaT5SusDeL1nQSXEnthEHNXeozCDKOjZvhIrwSNISELZoW6k0TRD2v1oC+KGqtu1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJctEqs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJctEqs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA737C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771342493;
	bh=7DUS1ZqMI8teZpfYUtisi4cWkxgGXQexe8RygFpPIdU=;
	h=To:Subject:From:Date:From;
	b=LJctEqs77ui6rzM1LYc3kTrP95X097LLyGBz8QM1/mLUJJBui40UVz0FZtO0+KPNS
	 bKka1zIAVzMgJ8nY1x7xQHHlP9XI4+NX7zIF4imNrC95/obpDpL6AEwmbAZOPTQGeG
	 4pKGT10/LOwgbWDTvq2FL6ZTEkIBH0cWbXuBRu2nP9K4K8k/Ohnng1sDAQ8VsUSToa
	 VwUz1jqQN3Cy8yb5+9/yJL1TKVsey0szj+wl+mEn3dNFY4HuAe08ERjPaRjnpFoWAw
	 fsenl65SoDppDckSVY9AC5jryxIkuiYEzMa2aGnMpjuQQ1KI8tymiX5c8PeXpy/4b6
	 n9FxVxW1H0qYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F601E909BA
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134249360.7547.2327913479990505027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484837bfa934e1519f59fe7e273c19f3ba7517b87a3a19b30b53ba38d5396a7a
Date: Tue, 17 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771342493
