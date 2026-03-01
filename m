Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2437F2F84F
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772373294; cv=none; b=eKtN70xUSCNgJnrIJUU8d/EjQIkrSLkqeVnvKkrfcexsASrUHSfiC2lrlDOle5Ja5eMy98YLbsWlfrUrPs7Q+7oODDGZMm9dt95haroL+MbOrAeuFeD8TiM3p8H02S+LYDCRuWOg1GiIyMvxW4a/vgquawjso8OzW2zEr/oin/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772373294; c=relaxed/simple;
	bh=r0G6SuZVaB7CeLrw5PTP4dG9wO1317fihV0cvzvAUIU=;
	h=To:Subject:From:Message-Id:Date; b=Hc5jSrWuVOEv54ShaGnPkeifqMxXKZMipS3I1O9dqIBvctC6K9N4v2eNtP5PdGb5eg7bECEQB82qXq6qOgmLH2z2dvpmtZEumH9bAc4v5L6I6qTRUQ/JLNWXi420mV05HBz5uxG5+unSrTWzorGPeZe0rqfkMnhKFEWXfxzBMzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbcz6gyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbcz6gyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A957EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772373293;
	bh=r0G6SuZVaB7CeLrw5PTP4dG9wO1317fihV0cvzvAUIU=;
	h=To:Subject:From:Date:From;
	b=mbcz6gyTU48tKlRCSyA4HzTY352NkCgvJRE9RUy0I7n/bnR5fVeGkWOuvN7RQOL6V
	 85iRW9DUIWIQX5IuKPjMKnOciU7ZjjJBdFiDslTjAKecECrslc/XgxfNeNuswxQa9y
	 BssFTvUBvIfqcTt6BTwZJtfbY0+XZo3ie2ctimiTFnnJAerDRAa4wXwglQrwyCLj/o
	 G0DPESskT1xIkL+zY5Mm6adnCrYOV7s5YGsiYIwa2V+FNORcm2j3hsYnGF2ATISg0K
	 cBJ/MTRxioc0F6VHCRf9yha8TLktzZgs1xWgA96MiQJg+eBbp/3w+s12neUQBQD/CV
	 0TIgKfyPuVp8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D51FD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237329359.9033.7035696730946245343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab636f7406f4c212cf5246cc7e4da7b36b32ee3dc96ffa035a43b188ce6ac8cc
Date: Sun, 01 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772373293
