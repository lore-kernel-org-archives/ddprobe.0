Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E48028751C
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756241994; cv=none; b=Fxh12TuQ27SKTikSX84gDQZRsZ7kmKPwgS5kG38EpEbCXAd955fUTak3aOvVm6HQ8DT0fXUzkI10CmK+IBTXShjXBMZQnO9fGpD+e+dl+r0Gwz83uW3jyG7Akz7udjaB/K45CHbzx8PxR0i3vEQ91wt3J8l+T2dZ7RTzTMGngmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756241994; c=relaxed/simple;
	bh=p25shYmpDIMEe2ZTpvcW0+IrFmt7Ved2vuBmnddTmUU=;
	h=To:Subject:From:Message-Id:Date; b=ICVcV/PnMgovDk1w7YVOuI8r/i7V4U0gqHD1ACOmvhGIgrylLrkbgHBsid5286KUxGiqSwXfegXsNPG2kGyWNq2sd13pkoNwG6plp7QMJyWesq14dW7jBZo1wP8ZYtCQ8AuuxFaa46fng1kE3XavXezOt/kbAgSbYAI6olqDGOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS5nqE6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS5nqE6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0179C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756241993;
	bh=p25shYmpDIMEe2ZTpvcW0+IrFmt7Ved2vuBmnddTmUU=;
	h=To:Subject:From:Date:From;
	b=jS5nqE6MFdWRRuWRZQWikDeuRqOr1FbLp87QLn6c2gXQliFJVNr2GfdOL/2g02FVY
	 hWCrrB4DQJNFMfHM0d3gfpZbrxW1fauAkwK8qfXB03k8L5x+7exFOGFXw1+0Mw/POb
	 +3KgrccvxbEsZr2OaeB2XlyCpr/UM1so4OfwverBYV8MbcLhUqt00jYTi4ExceyPO3
	 wo9VwhJenyiuuI450UsqURFw6RE372v4lLikhCtwB/E/z/DqsWK8x7bO22F58ZIAdG
	 kPJxXLOU0etkKQVuKRvJIcA+RfTXkRvWBF/K+q51LL52EemGRkrm1s5WY+NuQp5bYB
	 qLf4JRNcxC5Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0CCCA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624199357.10972.15150689943678788550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb702d02f6bfd7b2203d4c8c5d095739d4edf688e6fc695bda713bbae517164
Date: Tue, 26 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756241993
