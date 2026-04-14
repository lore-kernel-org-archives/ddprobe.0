Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A023E8C77
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776176854; cv=none; b=S0VBl5+ckGq1kOy6ZZ5CJq+ncNL6g3Prqq4s81OWQLGqENcTfPMFL7np5My3zOdK47VTRhcJ2/aUmpF27jfmSkt2HV35tkYIrzYavuRYXeBa8z8ahdvhIPIIMQ78akIdzUdjZwkNbnb0XsTx++4DIZRRvKOdvI22ppBmABuil/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776176854; c=relaxed/simple;
	bh=HNYTkfbjjIOIvKErfkD525ar28EpnEE7Lt4taJAuzJY=;
	h=To:Subject:From:Message-Id:Date; b=s0TU+mqx/1bwfQ/RTCxDi2ECAcdUBGnA9tDMtpfjMisEBGhjIm2bhOk+P7L+vQKqv8kTDQD2WAX+EoCaSiG68JqYFSouJx5zWvMKjB1FUOuM+7KgPBvlBtGjuObC/l0PH4ZHFxtSEjz5fHUN73rE6r+htFEZWsmidR+rqenbt64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/HEgBy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/HEgBy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A5EC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776176853;
	bh=HNYTkfbjjIOIvKErfkD525ar28EpnEE7Lt4taJAuzJY=;
	h=To:Subject:From:Date:From;
	b=a/HEgBy5arSf/ptcDYznJ/J3f1jZHCN6gpteMvuWb6W5RwWC8boBwANPJNeuKZTwS
	 XOkIOTD1NBbu6OZBrjgOMaH3pljnKHJMmP6pahYt5rToRHAqR64OOWQzFNfAabSY/9
	 7zQD4lYiKzUbdXR3W1vVU4+/Jp+PizW1FXH/6Qv28NuYwDHOEqFRccCBjEmwFBs4C5
	 wacxXT9aiFbNboB/lHM9GLBkKgeBRUONeIn+RdXIPE4TMPnZnKdfo1kYsowlT8bar4
	 wg4Pd+U1j+TuPTf0aAh0WQP6OpT/8BSzl2Wn5ZlPpZz3YerYfQhBFpcIR3/hDzj6U5
	 zkDcpuFHerRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA24AF9D0D3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617685368.9494.5476797554844446328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cdafc29044b5e71ffeb51684bffff72dc6715a0cad42428ae6c1e02699591f1
Date: Tue, 14 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776176853
