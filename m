Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F283D0C5
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724628954; cv=none; b=mwLr+qzBQlgGyHFlHaILTijv0AhMbdhKkxAvKwRCkPFLyp6aG76jNC/IBMfIfx6tvk9GHowdOdLWsRhfCeqS2ToXDVHxCBwMa+69xujriazn01d5rXAUCPoliwi6+ZZxjFeHFpxc5DkHAULU6e7MQd3T2WdlwtlSOqOPE+E9U70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724628954; c=relaxed/simple;
	bh=XUM/s4/+Ts+gYfuGv1iAhzG8dj8K8IUIZgz8UEg3eXc=;
	h=To:Subject:From:Message-Id:Date; b=SPMZKVv46Eu5io/hgTdMc8gACHpQe69cVx+R09RivUi4huZo4WDYmKIzkGjsaVbjB/yt107woM1H6o929qZ0cBciSMtSsGWV5UT/Y7BHCR77GX4pDFc4utTJnqgHCdURD5VCdFB6/ICSr5RMrncpckNi28fJ+yrTtI0iKtRviCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibWEx5vV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibWEx5vV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00C0C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724628953;
	bh=XUM/s4/+Ts+gYfuGv1iAhzG8dj8K8IUIZgz8UEg3eXc=;
	h=To:Subject:From:Date:From;
	b=ibWEx5vVMeXHKaUF8YQ1UQO24F+Wo9alp8bec24f9QJ6GkZn4iVYIcxZaXsoOT4Ad
	 MzpENXhNduGVx/Wv9oNj6Gn4HVnskjg3PIKB7RPQqEM1RqFLY+E8HOcDJSx7yjeT9L
	 /rYuejUdz0NwoOnXns80tGQpVk6LV2MGhpFb02YikVgNQOKUy6y+vQDfE5NrMswZ6o
	 Y6wncKTKtnQimcLBbW6vgekK57EYFkarE+KYioSpP9tCDxS6cQTp0kcDDweqbH8ef5
	 Mr5u/wQT5n5n44M7vmERAuFngdqszqnyQXP5nKfj2GsNwYuT4HtElWC2LBDNAYfDPk
	 trY0JWgYQhUiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B6CC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172462895358.8655.5317332985570626650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f8383acf6c8426f10bd341490e6de6b1779005351ba7e87b852f032dabc632
Date: Sun, 25 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724628953
