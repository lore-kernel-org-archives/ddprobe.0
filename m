Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A65396585
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788342034; cv=none; b=Lsq8IlttbKYpwIWh4saZVh2oKA2e9ewSzvGsU+Xk9wmuHoLU6/+1Grm6JUrMCRw89S5cfJ4MCGZ+Zzghvop4ntsOXmzPNNfggVuPaC/GFmP1CkYEdQvXLYj+Bz/01Cvmng26jfeA70/94S+tGtwHKUi35hoZL5Y5tLLStxcRBK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788342034; c=relaxed/simple;
	bh=aMiC4xOr2lpPv8cK23c4z2nMhHswH/CGo1pQU7YW1QA=;
	h=To:Subject:From:Message-Id:Date; b=GMh6a3QEJeNUp4lVkYbY6Kn94Qs3cVg8GDJElPOKNswPono3XooV6xAeVF6h6i3t2NbovHl16atZ+obdcH8TNupA1wKmGd+AJk0/CKqx5x7gpq0kNaFrX3Oo28IH6WdqG+nsBAKS0DY9p94Sr2k+2epqaFO3qtvcsp3UukZj93U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5W5RB5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5W5RB5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB63CC2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788342033;
	bh=aMiC4xOr2lpPv8cK23c4z2nMhHswH/CGo1pQU7YW1QA=;
	h=To:Subject:From:Date:From;
	b=q5W5RB5FdJjmJknZ0b+25UmTX200XxGa7cDA038C+9bUo0kmiNlMDZNOCGyU5LIEH
	 MH+I2WxtbJe8T81BtTkVtsgRqs99CUzJ1PBCdNm3FpFUMZ6j9zaT2XM6Zi1hciliju
	 rPH8YOrcDzDXqIGnPvM2zuQTAxSO20ylEjYhIKhnFeaUXF1EkJCRydPzJBSSq8J4Uz
	 ClAqR9SgV75EiCyFJaEo8qsrxWLYv25t/4FB/vBvYOl01g3xMdmiGrkmy36mieGQD0
	 21ZRSFGNPu3osdAHoxaj97Ba0MwP9a3gKFer+DzgkYcsPv3rIsPOcHovye4eg6Fwmh
	 KODyWa47lA7QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94E9C61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834203368.8761.5164983122076798327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e223331867155d7c91e9646e0e31184d401ff5f39cc54ff2030ffb0fc6e6d457
Date: Wed, 02 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788342033
