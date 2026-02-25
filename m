Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9482E3B15
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772056494; cv=none; b=EAOoACZc5DMTciLdyHy2A4axKMY7m9SPvjzCd7kjaAHzMfKJQTjqf6kRrWOTACcMtrJ8eWGA3kh0CxN0H65HaDdXMxO7QEs3ikvJBjpp8/h+ANAmLcS9gbWKqzTvzWgYOaZDsLF9ro47rNoOIX7R5VR9haEpyLpzOq6vvDRC8vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772056494; c=relaxed/simple;
	bh=/bbsyrkjaQRtI6C1kW5uOl1RRYXWgThqGDgcuHG6XDk=;
	h=To:Subject:From:Message-Id:Date; b=cNbu2qkR9UDeKxJ1e4NB8MfXLb89sXxAOoTq2O0B7jLavAjn+qeAEcAbW+PA7/O9p1LU09a9YvbpgwhI/SmR7h4GEb6qbcB49+kWNa7bBAf4yZaRq6k7fP8RsBygVJM3SwQWbE0tQ4a6CjzC5QoYUY/GWEqrw4YzeWixLMnu7Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6sEddmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6sEddmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FDBC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772056493;
	bh=/bbsyrkjaQRtI6C1kW5uOl1RRYXWgThqGDgcuHG6XDk=;
	h=To:Subject:From:Date:From;
	b=i6sEddmID53A8soKxqCSawhXbjy928tmhUnJFJM2d+Y7ttZKFgGo3a+TdyeRkQpU1
	 wn+rxTOnGDTKWey5dqdoiax/TFm/s6AxWmO5qv71fYTJvKQEKXSv4nUwyUFtzrhT3T
	 NgSsM7xauHTUi7mm2HTV1r/1voryGaVzS7yZL4j/Is0r+PGOTaJaMaD7lQFZn2328W
	 E1fFlqfyOOlQMOwmgnCs7ho3VqHEq/wRPy1vQ0xxAvWT65mjMa8DmXz+TuePen3Au0
	 TRMC1Y17Q83Afdk4MAYF0dB3bOsbI1EgUmDtXWPWdSEFMdK/coLGBAD6xpZ8KjA9o4
	 LC/OLPys8EuWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240DFD45F6
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205649358.15359.4534098797880415855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdf6ca0177bd32ac85271488a65e2f55e4f43d112c161c48888badd974e1ce4
Date: Wed, 25 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772056493
