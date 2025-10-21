Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357FC26738B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761031194; cv=none; b=e81WxGlidLSFve5q9qYf0GUhprsmP216OHyqHOCE0Q2nzQ0wtcmlFhTluHGbHOGF3qJ+jdVDnHCmKnL+45wnjmfSge4FZ6Ike6N79KqwhQvgimNHJnPJGNWtvF5r02GM7mBFQgsyem5lkTJCjM+2XSaJowJ0XVvxuZVctyx+JaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761031194; c=relaxed/simple;
	bh=Jm4CvOPbJJ+lrc6Holvx9cP02ResZtT0/1ILSfe86jM=;
	h=To:Subject:From:Message-Id:Date; b=udj1vhc7knMR5ttBDh7HAayQIS43lnHP9ndRxcbOaXkL2t7Ls8ZEpNiiWjXTAkBhf74AxW9yF9jRx2vhBqo1uu7RdxrALSkxMuZt9jCVJYj8mZ7ENzNN8dO2g4Qu3oFYBFRdNuKgb//9yBhAMvvrFdHSDgD8NGpPfiRs3RXcf1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmkH2StP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmkH2StP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD9CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761031193;
	bh=Jm4CvOPbJJ+lrc6Holvx9cP02ResZtT0/1ILSfe86jM=;
	h=To:Subject:From:Date:From;
	b=VmkH2StPsU6kdSx64LyV2JAEgaPzRtnwmWoz8sLc+KHg9yIOWXcz/9NmDmY3FprF4
	 tHybcTySkjFmr1Vse4AiwWp2KPPcTfaOETYjhBuUt2MTZ34j066gFgt+wIJhQiElPv
	 ovMA3s9K/kdzNzc0F0IyB5/mMSOjRMcHInzk8h5sHa46U1WvbAyiCPP1u0Vldwra2E
	 sLlak+YdnEHG+TODLy+GuKZnV0F6f7anWwgvFnIwHfwTNXIL4HjPSU3V5a1pLVKdJI
	 k+qUY/y/cOZ5BTWzJOyu3rwIDrSUYRm1Z/SLLB30V4XGy82EWTaJcRTnDaH4Hpa5np
	 yNTJ3cQqjdFkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3EACCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103119359.26932.1618639520902986795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cbe0e5cf51e501a0737242fc50942f19dcdf5917dbe01abc87248fa4d8fa1f
Date: Tue, 21 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761031193
