Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B870158DD8
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732091754; cv=none; b=jN35xcuoeP8SSqhodtRobcVuGHHBwp+onnuez3z/Ddf617qdEpMWr+gjn/4SxQhp687j37WLmgH0wlZcS2QYd7EdhkS8i5uTMLk8lRenVreEs5ofJwecumBE430YcGtBd2KPgU9GFBdJ3uZSlVmSXgDx1V/jqt0Q7ZzBuqURbhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732091754; c=relaxed/simple;
	bh=+iBzH1uAYJdp5WxSfZR8B5esqRzkbrbwGdEwLgJtrTw=;
	h=To:Subject:From:Message-Id:Date; b=eiqzsSxTl4biBuISLuCCevMor8YbO5GhLV7SajkWEkN8jMizokDfY+EmSdQ7jPAdbYuiLYsY0+qvd4tEJ7CI+tzvMhrz4oxBWcsT/131VzO8WatVv48jFZwAeJ2zs8AdLAhSOUXiZNM5TlXBfg8VA6SbXBkP8g4SPcqQ06E2xLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqcuOn3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqcuOn3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1656C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732091753;
	bh=+iBzH1uAYJdp5WxSfZR8B5esqRzkbrbwGdEwLgJtrTw=;
	h=To:Subject:From:Date:From;
	b=bqcuOn3qZleWF/qPW+FJSdLZCuGnj30KNN1hTL2ySGkYssJX3xMjwgXwQcNt5QKOm
	 pBFERjrT59hTvbQOTE63M647ST6LAY98EpKryvltA2vvimhKRzYwxl2sBx+syMaP7W
	 uBYo1YH+xE1Ceh+k1oPTsCCpAI0GtUf/0/mdxRePZg73NfHEpSc7dlTmiejznTu1DR
	 YYsO53aGZ9mYwCUvVSKkwy4KCRlI/YsF3S6iFFHrwzOgB8IpWsplhwRF6+NOTAL/c7
	 ZTHLFnj6BpJqXRKrZNRNe4NHDvgS6IyE4UIOMJMcttFCH3GLVleZKBgGx7nJBG1a3X
	 6kvXj4aK6OEzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B51D6E2DB
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209175358.22910.12183403895218943163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d5487315e97344e580d735e236816d1cf1c98db687e8dc5146b335bdf38d92
Date: Wed, 20 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732091753
