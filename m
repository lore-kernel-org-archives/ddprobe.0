Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9DE379C3E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782164194; cv=none; b=RMy2iwezF3MjYMxoym2YEbvgLR/sLYvekc9rBVGI0q7bNtByKPQ/5Fw7c3iDa6/+wUxjmNxT0MdFoP1WjNBkKgHJ4NkHlE4ClQ3W+YIf5j+QEy4UFDthm/uZdwZcei9UsYzA07TzrGQX9+ZLU4GPuah5rFGZGUMsVNYvUbIBd8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782164194; c=relaxed/simple;
	bh=K9FwRzKFHkLPYNSsS361sowES74ock/E0ReUOpt4ot8=;
	h=To:Subject:From:Message-Id:Date; b=NfTtObTqSzAICC7Gd8PcNOtCkoZN5Duu2E2vEU6yUkLBUQGCEXD9wolMyDFyw9pvEk+l8PfUoNsjk+sLCR/Cc6RUQAdnmkkH48RU5mzexGZEnyDepKgravNCoUXNZz5XQ7IOAb5KAwqk8L9fp7q/YiMz/7YemNaT1U/0O6eRjT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGMexKYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGMexKYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD761C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782164193;
	bh=K9FwRzKFHkLPYNSsS361sowES74ock/E0ReUOpt4ot8=;
	h=To:Subject:From:Date:From;
	b=gGMexKYtoMczvtgyR75XdCvP4roNF6JUyMf85LGFxHFcTmZcaCUVWjt4ITN2FmLI6
	 eetY0kVh684t0Sr9GvTsdV/FcdL7zwqpgONxm7ICwoTFGtv37pOuXnQEyec6I8JuWw
	 X/kO3kzESOBa8DzSWEZZUE/jNtJ+GEg4MOs4ChBTvYSLmmMIVDqQLobpyuGiDlOed5
	 wapcIazc3OCkvib892QAFLwCQLrT/If13nM+fIS/inNjLlrRW+GRfScXpUrhk726Sv
	 siQl1HppEPMF40c4KJLbuNNtI2/ObG+8I6XA504yi9OStvWjw3qcW8jVTqdXupLMnT
	 jzJBbRQirYnjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1EBCD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216419370.9844.13332505113065206694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a67ec70c00706cb05834a70c188bcf391c867c790f8f69f3467f0b7194abad
Date: Mon, 22 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782164193
