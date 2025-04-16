Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A42E18D63E
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744766994; cv=none; b=ppZeTtEYXc2GPnctp+7S70WK4nnQmO8EVZ4357kHyf9DAl/gBCIG/pUkDi0lwWnW4E9CNkSfjI00ui72pYmI+XpaHn+Q4Fo4y2KQbY9VpuU8LwDphIQwq4A+P+mYdnXRzFPINRLMEN5fOkkj8gHtxVmCQDYhWK/I+fyXn4eVRcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744766994; c=relaxed/simple;
	bh=Gps8w8dKq7pDT6WBgPZ+GpIGHNjwglswiAmqqoSeOrI=;
	h=To:Subject:From:Message-Id:Date; b=lHyRqj4SkoAFLg+/JtX6E0n3GaZK7tJkm2U45D8H4ekVcBa4VdHryDLLDbFy5KbPb1zW9+wdFeEhGhOqXaMxDxf9AL8OuYynObdB89yQh65eFDboU/p22r5T70Mf8hE3WUwfkZw30AC6TqKgo+icakg63eVldudEqnppekORshc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAzkHfhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAzkHfhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ECDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744766993;
	bh=Gps8w8dKq7pDT6WBgPZ+GpIGHNjwglswiAmqqoSeOrI=;
	h=To:Subject:From:Date:From;
	b=aAzkHfhGZ2a9eqRx22u4tvbuGAOdNytTc2Dr1dNsKaB4OPfHWq7UVb6jPGY8a6nvt
	 7NNPwz9ucKCPTbto8HBj1Zgf5eMrNljwGDXQ+s5nZaPqNaXcnn/jJin1iGSBIQiDh4
	 WviHCaD0+MW0UZypAYIhtfm5oDKvPLTUSUvo9nQu4RTYIwKKM2pG1q+HZnttlncZWb
	 68TRCHOLNJ5wMfdyrV6YM5mtnM+KJznCNU1+pWFGRuf36gWTj/TBy1HxnrCBMNBNaM
	 gNcK2Gkn3AHM8WHVwEKnSTe5NYIhNdIYzkYs7L70upB6oIBZxhYRqczNpRBUwycCFP
	 GeesJsCGFkPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C530C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476699363.12717.891999086750022745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e149fe6f217317b7602aedcc35a3d7f62c0c504e8a85450cb5240f2f6e820d67
Date: Wed, 16 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744766993
