Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F76A85C56
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720774643; cv=none; b=KQB94ShtlGjOgWbqIktnSsr3xOGp8P/EFUlRAzPdtJtDS8P01yfaOfjvsRp1zonvKkv93ren9+vMJH8eGq84STaxxPJdTblxdDyIAi8U15bW/qziwy08J0GewVhCwf4hQYy2ysn/PbteyGGxM8T9goIBp8qsN69iHfaPvocdNm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720774643; c=relaxed/simple;
	bh=VRYW6hOOxQgHnRg8wt+PCZ4DxhVJrcfEZGyeD/9XLwg=;
	h=To:Subject:From:Message-Id:Date; b=l2Mdt4DIutdYyhO4D6Oyr3l5N0YSPydBZU1xJbWZ/MleGc1n8CPZOHt4y3shkOJHrhac+Py0UozceAt+6LHCqRdEVnk7lNfRjJ8WZsQi9HvgxB/Mj36l6UlSdeV+fhLrFjgoIt3xG1OnbJEhvZQ9DPXmPNz6ZPOffDjviJ/Y5+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTZjH5YO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTZjH5YO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FD7C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720774642;
	bh=VRYW6hOOxQgHnRg8wt+PCZ4DxhVJrcfEZGyeD/9XLwg=;
	h=To:Subject:From:Date:From;
	b=uTZjH5YOm7mPY6hKCg09BScEp+/wW4EQLGFbFkoFndkxRWeIaAr53oznDNXTZT6Dw
	 V3DgvNQ20oXK49V+e8UMwyWQkgJyT00sJxzGf14mcX13uO/NCadSgbDfcTJpFBGqTj
	 bkcZwqgdurBWuw2yG8GBE//Fe9uUWDUOaei8OoNuZV26MLIPAgxj0AQUf1PSuk4SdQ
	 bGfzIImRCui3Gf6jPdpAohasDJ8krfCtgAYr6jE2GqNONFFpqPgrqN31feTGvqtqHJ
	 f7DhU8Mv91NoXi6/8BUok+s+av/aIO811mA+7SGjRNfSyYIqvSTgRNYhTlzWmjU8VM
	 ecQjO8z0DeF2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CD7C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077464280.9456.5618469101248204791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e07fa7905b55ad3aa0f9212e45e7e3882e4df53cd65095b286386ba5fb6ef07
Date: Fri, 12 Jul 2024 08:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720774642
