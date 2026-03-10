Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38932701B8
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773179094; cv=none; b=fp8xuoOOKMPyiNUlepEK9/ZCNG53B5CWHX723JhezCmQGd6ox4li7+ka70XPD3BCnM/lLrXRQCdYq9kCUiPUrUnwF8IVa6ROiUy8sufsITPyi7B1++2Zd219f8snf3c/F7q6w5Sn6LPYYfILfvs3Z4NPm9TAVGgnXf98J27ye98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773179094; c=relaxed/simple;
	bh=knkZkUffFEbd90LMNRGeh0HQKayGR5Dw96tdgBG9Bm0=;
	h=To:Subject:From:Message-Id:Date; b=IFn5FzTGXpkuWaFXiAK4wf5HDd7JPjgYBooC+FxpSyanOytxSoKXNEwECkBL+7Oe4dFufNkmAQ2PDHDo68xHocD+Bw4PJHRRbkKwOJeVNkwWs9tK1f2x7vwYJDYbMs1uoKfvdj4o6NeHHpRJajwZ5tAOoLyb6WYfLz/nmVEJGs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWad6x9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWad6x9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BBDC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773179093;
	bh=knkZkUffFEbd90LMNRGeh0HQKayGR5Dw96tdgBG9Bm0=;
	h=To:Subject:From:Date:From;
	b=QWad6x9XUrHxWn5f06Wx9tTmRG16fZKEZ+GnQ1if9cWx9QQ7GNQbJ/dQNdHPe1YTG
	 sURi+2bcG/MF5Aib9s3SZZ0apv0copbIbRjJ5M0re8w7f9SdlJl6/8OYD5yEzjCn5Y
	 MeLc3C7HalAoYvmBQIM3f0uRuXpuKQixhOo6wdOoblXRamAFnv5FgwfRo65efHA8ba
	 3yFHFABE+Gw+TjUsbPqp+tgsj0gMxvw4rfoMCar2MAH9P0NrXoHBc9kuEc5TUmEihJ
	 L4i3SlQCeJKSPcsF+AKn7T3Wd1v+xrai8ld84rAZRYp2czftRisHas0AniQqYOzNm4
	 Q6jASAFBxq6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90507EB105F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317909358.20483.14021371252048419590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbb8fca0f79e522fe8747e57a0316673358120545d95d210331cbbcf4c9ee6e
Date: Tue, 10 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773179093
