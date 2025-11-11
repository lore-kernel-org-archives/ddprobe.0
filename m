Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0993B274B3A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762874394; cv=none; b=WM5drsqi5fHfT+lZcogaO3Fv5N/ArvL61ZqkrxNEnkJSVeNW+qvAfIcEki7qvyfdrQlXFwTAZKfTAYvwT7gE5grdtN1iNIu0wVSpo1gcCU1ApWAHVJQxxuNfP45TmPEuS7gpuuD9Bs6K8ve7yLrQ3dj+DSPzQ3FFCSu1ACJdD6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762874394; c=relaxed/simple;
	bh=StxGu3muiV2/fH1JcGaacyCdOILNA2gV6reQlk4qOa8=;
	h=To:Subject:From:Message-Id:Date; b=n6KIZf13n9k/YU0GZb5tebkF+IFVux1KdfS9Xiq/LNIL6udylJ7ItX46SDePyc8G+4lVVEv+zEPv6Lta0dwEWHtERTwRXDWax9RPBhVLRRI55a2JhqwiDAWrHUmEIZTQNm9bYDHfPRHEf6q5VcWT2m6xZRiOAYw4lVGRGjgc3dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkgbEb0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkgbEb0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E789C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762874393;
	bh=StxGu3muiV2/fH1JcGaacyCdOILNA2gV6reQlk4qOa8=;
	h=To:Subject:From:Date:From;
	b=tkgbEb0/2vkGBQ3cjnanHz5DrhC+KUaS10KNBf0J8KuwEHn2IngD9lXuNn2Yg1xzu
	 YaDitjeenURQev7DYL03H8nCsoTkRakwmUa91Ugsw3PQb3Xt/rZ6pgnl+n8dG+gTXH
	 NDAZh5/O91QSd4x41Z5idqqSZdNDGECrQcAtPtOJf5V4nPUghzegl0ztDh6/X9wpU4
	 TDByI47Wzfpr3NLdvYtCtUyQpBNThPBGHiyPA8Px2yYR7ZFmowkYecaFHLIQDEYyKr
	 K2Abf9NulD79AnYFKVDSU9MYHolYFF+rjl7US5UezuHO2qOxubsE1Iy+YHrPGOmVTw
	 xEM/8ZWLJUMUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93687CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287439357.6862.12622698524830615044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769f2d38c75efba51298e3561cf110bdd905b4128d9ea07fb867e66fa0f83a48
Date: Tue, 11 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762874393
