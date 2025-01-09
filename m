Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D264201017
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736418954; cv=none; b=LQLVTaibwkt0dfK4VJZi9wBSk0h+m7DOywC5edtQ0l6wp7ndwQ5ABXKJaIUFkrGgj2Eunm6hxPNrNwQyvh4XLYEMLE3e7cIXk76zW+8+old2yWgQCRj/0CFtYKgvdfz1GulbbauC1C47HwyVdiquDAXPBp397MQ4+pYelrHw7cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736418954; c=relaxed/simple;
	bh=NfMZU53lvvlLm8F+JmuRkD7pJa36pKnty4ankV6MIk0=;
	h=To:Subject:From:Message-Id:Date; b=TCm6+VuXB8tiE9wc8z0ZwO2BktqhZrELFBA2mTK5dE+jZAjg0WqdmoZacnJpaIr7sWZVMBGhkQ24fM7/OrH7nB5SRfaLNQbLtkhZ/wgvly+kvTWSUaDavop2I+v3PpnOWwWKnj5cDWzYOG142cvg0+IzV3odQa594m8zcwbqrFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgQOdmbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgQOdmbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA10AC4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736418953;
	bh=NfMZU53lvvlLm8F+JmuRkD7pJa36pKnty4ankV6MIk0=;
	h=To:Subject:From:Date:From;
	b=BgQOdmbUWkdVFOiiGhQGdxZFV0lAGdZty9+FePiVnFqsmkOMb7rFiouX8CoGVwrdA
	 OSIJ0KzPjJXOhM4XJskwxo/tCxyMlMR93MRXkeEBbSuoMsA3IdawoLTQShZ3TELnPJ
	 i6Wst8/rOckzP1iI41fwmoEqYqRA/zjgL806ThNoOdtGrR1BsxR7qijBwLdG47gOGT
	 8HdZDuOsyWUhHtRcHc4uYauahSfvZmNCPDPT0BHu0PIQzbCrGEsIc7a9ypFfIWz2Uo
	 dEDd5BV+EdsWPAr9G6qiRT+vgcsx/K+uEUbLGoKNmtahLHjcSt8uP6LGah9IWEQuHC
	 l6NZYcUyxDpWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC49E7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641895363.5334.6392350502192354381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24b63851bddfe22fd6e793fced51a62ad88b5428d809c0e229b8b004e678e05
Date: Thu, 09 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736418953
