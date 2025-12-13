Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E4DF9D9
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765606373; cv=none; b=XPJH8xuiJEm3fuCGR2NEJekUPZs3BYlMDsAVWI1I37ZKTA3yCIYHxJG3S45mjB1w4Ux7zSAr5FlC4h1M3yKGJ8MkWL7tmHxlZ7mLLcKCvEvtRDTtDvY9+jqYAfHLNBwBY2BmJSfjbQsGuVR3wYfL9/9hvyxSSSyWw3J/NT4hdq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765606373; c=relaxed/simple;
	bh=AP/WoMoIjMoTpMgPx5GJ7KrKDsu16QxM8KSDtg0GDoc=;
	h=To:Subject:From:Message-Id:Date; b=tJw4LqPhKrP0TP6AN3Ho2JzGKkDW6zhP7SRZcroq8gz2OC2XXbwPu1a2WCOUA5m31B7FYg2hjf8Mt1YQ9uwhHFGhIp5yVt0LBnsE/3l3w2IJyff0ARNvyEDYou3VTjv3hUpvSFALL16Ry/j7ZhObuGeT0sbkNte2jdQGu4iZnK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLMP2v2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLMP2v2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FBEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765606373;
	bh=AP/WoMoIjMoTpMgPx5GJ7KrKDsu16QxM8KSDtg0GDoc=;
	h=To:Subject:From:Date:From;
	b=LLMP2v2nNPGkVbIv2P8UbCgUcqeEUOlwhBZKYXVgDw5hkmx697oqlTtoQBNiMpODR
	 6+sztcr+n0kgZ05UiIj2IWRaJXgKeUov6mw/Rj4WGNBakUVdPsv+kvRuw+5k/7mvMW
	 82rhlZ08s+v7WxyVR+gn8aIqG65tB/SeTdIQIYax7GMVWJt4yK+SDcYUddh4ekC7OB
	 JsK+hqYD4mILeHmiOaDjKqIQ4Uz/B1fTpW5Q66H52HaIrd/Bq9Ge2RZeeDlkQeQD7z
	 wdyJCYg9ecoFKquwYsifrs/5BPUsECH3w/Wt23Kj8ZoBMLFoMIkNkQ+JjlyoapFRXh
	 VKtw8M4I4wing==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6BD59F6C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560637358.19647.4251672613221806437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3439a861fee81fa8f8a4caa6eae35ab7d36c23ef18d6fed2499d95599bf0a27d
Date: Sat, 13 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765606373
