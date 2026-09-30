Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4921842CAE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790802634; cv=none; b=EgqPzUfwamsz1HA9i5NsIy+a9WAmDaSYfs8OcKkkBnVcumz8GGtpRSuijOXdjnvFwHrfDHKCRCWLRrXAjoke6m4d4KQUrXoQ1MXfq5LNPi9Tbb6SlcSB19Ckpeb0OhAKl+5CwFncLZKCJkeHb1YNm+zJ91pmkFwDOtxypebaJm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790802634; c=relaxed/simple;
	bh=vCYYeelyw653xXAYON/u98LhQ7UUfdP3B4VANETGX6U=;
	h=To:Subject:From:Message-Id:Date; b=B2ViUWZPmJK/1juktY6XxdgrxMkcb+BpkC+WA7zA4HTAbh6FfzOVCn08W0KfLpyAZkvUG7NUzKtlKMi3ILTuKtk8uyDxeTiQeSGJ8UB+XklTTDJhBLghLnUbK1xdArO760TvVYRmKUEqMFgmkLIQ5u7lJpq3eJH6DibaJai/6hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLd45qer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLd45qer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BE1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790802633;
	bh=vCYYeelyw653xXAYON/u98LhQ7UUfdP3B4VANETGX6U=;
	h=To:Subject:From:Date:From;
	b=mLd45qerzmdM2kNIGWozmysQO99pbtUrJqzIPnMVuTNpVSb2FEyYCXwhVLBRHLJIt
	 /kIzDL6m97zLC8K7ZUt+aVWzgIXwFplX59NiHd8aLvMnODGxekhlwbh03ycgaxm0an
	 4WTECZYgkiSeaJVF0PngFh6hkI2HtMVg0OMSDuiH5Pna8hs8355GvclkST2xqG/a60
	 kUXWJJ6B33qyqQ28WanEglt+y1htOEMaaG6PAujDIPGofJEIsyOVyT2PsO6w23YXdq
	 eOZs+qIaLCP6rfGvIqmoH4DXWfyyeC1b3K/0oHECeK4VwisD6HS31kNUEjBd1kP13h
	 F8dDZCcC8TOcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8AFCA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080263370.13956.12558001158500868228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b0b0df9a126c316b4d57e92f8f08cba5e79416a481a1d3c0803ac336882230
Date: Wed, 30 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790802633
