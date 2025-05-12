Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE8F299A9D
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747073394; cv=none; b=M9XTphQqN5KwDiijIOUa2z3OKuluWPKrog9CJDuYzw5XJglJnbWE5IuwswFnn1hlHb4nUDqU526NB3DhcZjh+NvIvoht6RxigvHe7B7porkYnKW9f4ftm0YQLeFUWiiPgvoLLkvRHruEsNG5D79NrSXuT/Ym1P3/cPpOWOnVRs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747073394; c=relaxed/simple;
	bh=HxIiS1Pe1gta7BI3W2Ogg9AKzWBGm/gx0y0R0tWAqFs=;
	h=To:Subject:From:Message-Id:Date; b=VgDOFTf8KmnvEb827kpyuETpHmoveS68Dju8lmz1zZH9FryHBqUe4asTO7+vvjII1LHlgi1WQguYnUuJSG+7yLeAiwbkoQj5PDMrvFhXtyPZd4C81XnsjMRuHOXE6HU1zrfieIdfoTSnYviKt1pCz090P+uRfRoj2iNntUuVllQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvGJHPRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvGJHPRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2398C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747073393;
	bh=HxIiS1Pe1gta7BI3W2Ogg9AKzWBGm/gx0y0R0tWAqFs=;
	h=To:Subject:From:Date:From;
	b=tvGJHPRVe6gcJWK4tOt7FCTnNFNd+KVCIpf6zPyOPURRnppbtDfb8CiETHcfSwO3R
	 FJCOKiMrRMgeFHIw4tWQC5z1ynrv0H+jCVwdTHftxZdb3n9qc22jgGejPs97VC97fF
	 7UG29RXGhPdP37xQ340B46NMmsVEftIZ3o0DG0wdU1HvsBa8mDWDgKvbAoZFY3diGC
	 I3IqeV6hkn6Rw/wN1tgNlGeugwtmesXdJggmafXR61ALH4PCFyFDrgVYXT4HIUY8eD
	 GpXjpe09jYScGHZ8Ch2bzhn5zzdXSEkKfQNqVBWV4IVH6oCTIR/nsfaCnYY7dyPoMC
	 KP4MS18xajqVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92090C3ABCC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707339359.6006.15973643232718845817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae39c6879c0f09f101bb24b9b16e8e258f0c7b9eec5c8812b7f13f1b610d8df
Date: Mon, 12 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747073393
