Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08887260565
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766082835; cv=none; b=KOmXRAySDcJywazasY8ArblPf4GZAk+R2a59HwLcYqmFlnmWpJbQQ8NY6FyN2hAb0Wb2QWI1CBAyvZSRYtktFxmYGy5W0nkcA3t2Q7ExapLH+AflheAbd/A1Vlz3+w28vR+ehDl/GrXvKMNfFvWxI9JyhrEDH/pA3Nu4bxDvtyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766082835; c=relaxed/simple;
	bh=/HNQfrN4KJhB4j5a4mQ/Na5LQu6hgW7wY9Z1y0yQvNQ=;
	h=To:Subject:From:Message-Id:Date; b=Q2Umz7BZXUtNk5/oDgXv9jNluc1L/ofk1u4AFIzeXScSovAfeMtAG3hBf/S4wBfxo9Oxi5zr+AmeVYyu4JA/g9imj6I/mje7DbfwgsZCWr3qWUv5hkr5lODOLy60fBy8Mc888NSSOIxL6hXzWQPDfKJcmFlpAfibqhYqdfPVBVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALGti3cA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALGti3cA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E65C113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766082834;
	bh=/HNQfrN4KJhB4j5a4mQ/Na5LQu6hgW7wY9Z1y0yQvNQ=;
	h=To:Subject:From:Date:From;
	b=ALGti3cAB1v1A8/R7F9hOkoS7QTFCutrjuszn5dP0F5/P1ByJxLa0DWS9Gcjc6BBN
	 nuflFZ5jiW8p7VIB3vjTHwVQ8giuTuOYUD0ki7mZjEhSTO7rI6tTDRgwJu3bxDKCPq
	 SMRSzpYv8OMLjSlu3pQgcoo4s1ir09Dew/t3gp0WZxPa6D0k29n0AZPq/1fFsVmPs0
	 1j2PuDXU9PmK0zrVf0ssiqXGUCeI625wZUxn9vpfSzc08uDcvqzm73eYpuddr4xDwW
	 bqKux7skV9ZX4AhKefmON/hC/BZrqVekEeseYwUHna6U7BH2FuoQEvGJHarV9wF2wl
	 5uVDbswpIa6Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93410D6E2D8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608283359.29862.5042907986230221276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939b7960fa6276141fad1ecd8f9c013fa442ce497abc2213d571275442c5c738
Date: Thu, 18 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766082833
