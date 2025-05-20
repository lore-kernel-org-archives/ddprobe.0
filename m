Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D16248F65
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747752594; cv=none; b=CJvp2T60tNcqXAVckKJjXj5+6ze0jSYHIRJDlJ2VqkVbH4ZN/5+3uuZEChVcXR4Dix/RcswwMtMmKeOnaZgBJguwQh0HpPNoENb0mSV87MaG+uQ85e4HvRadQ6OKm1zEwUUmaF3eqfXxXtu5goxSXNzHwxQDQFeWPk+dy3/zo98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747752594; c=relaxed/simple;
	bh=uBcPX/os8a2FeSSp+y+g6wb97Wj9Gm4Kxl4NM/5akbA=;
	h=To:Subject:From:Message-Id:Date; b=a3GXYOMH62ey8pxviQSgpJzNfkkq149ByE03Rvx50/xLBrUkQeqZiPUs5sp3r9uT8o22FxVSEwQ2WV7Ay3Uyl20ItbcbSxGwLV1YHQBI3i/Ct9uH6daaFIZeh6ZaYJHe/501gl3M3ZkWIx0Eib2byk2KlEePeWfbgGQXtGId+Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP0yWhkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP0yWhkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11AAC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747752593;
	bh=uBcPX/os8a2FeSSp+y+g6wb97Wj9Gm4Kxl4NM/5akbA=;
	h=To:Subject:From:Date:From;
	b=sP0yWhkVSAK69KKioELgKj4VleJmVxH/1MVJjOSgQ2hD132fuYXwl6Kv2B9uG2eeA
	 jteiQe3yiUKoCJNm/pxCkIYpLU4BotZMG9ndBJhIp2rmzlU3UDK36Rh9xYNSPwN/wC
	 7PQd3AQ5LBZfZer/pjKKe/nCX/fBr6zZLJCjT2ZfUD49ba7QCqwuWh7fcibhAsluDf
	 sDsyxxp4IhumGcc7XQ3KRMLU9nL9JMR4VIXT4i6dWnDd95sYbS7so24huYD3fiKUAv
	 Id8EiY4QJsOoNGt3yV9Xxc78VonKZZtcNd2o3Ku8dug2O21C9R2w3EXNcDQ0u5hwO5
	 2m8t/VR89FC8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B3C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775259357.11846.5027625550009182411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49601c54b95687a1b77797cbba1be6a80d41b3126d54898d0ab858cedefb866
Date: Tue, 20 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747752593
