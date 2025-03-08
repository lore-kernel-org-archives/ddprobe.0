Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488CC19006F
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741473535; cv=none; b=NBtLR9zmPv6/BcEGCNKmA29oQMSt43+MQOzA80IPcAsq2huyLpLUmVvuq9NmVG7I/UHhfLnGX2GL62KxxjOt6Q0F4ocX0+QXJN/M4JC3h2FER/VzlXholJmXJZpGuFbCm0HDyJwgy711Lqj9r/A6mE82a50tza/Ac3ESUMAcX1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741473535; c=relaxed/simple;
	bh=R6VZC9UI9bVWFgAkg9trpyz5T7fTALXZyVaoyVJigdI=;
	h=To:Subject:From:Message-Id:Date; b=eEvyDyIMM0NZhllLTFRfnWcjZdqKE6JcNtQfIyQjN0ptzcZu+UArF7EOQKzd1A5g6UwNfWLcfm18Ecum8FWfG6DLLEE2WD71oPqi+dk5hk6kLLadvrRe+xkVIOoyVWjdK79HbeH8rAJ9/OHogVVYb6xMqIBcuiIfvCALS04jzD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Twvwy6ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Twvwy6ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6589C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741473533;
	bh=R6VZC9UI9bVWFgAkg9trpyz5T7fTALXZyVaoyVJigdI=;
	h=To:Subject:From:Date:From;
	b=Twvwy6ZJfd15hGuQ1evy3XA6CPixaSMX6HbpS/Rbxzqe2+pXJYS/ogriaLEcRdrkn
	 T9t2577TgAl7E+vY+NEzIH+/cWJrKxMfD4i57EQmQP3xxJShiSPpO5e8isbtXCg5QK
	 sSS5ZYiA0Mu7LHqFIxqQtPx6CBmuGbTwGSvuZGdTtc+Dd3N0kcAFhGtYeonZTjwfrk
	 cvLrJBaBTCMZPf41/T9ugTZtGJXP+EjhFCzTFg9HHbM0z4qiXLexuBGRd83exOUZxz
	 5T+oAF8DfEBPYfZWKOi3wCbRiP+1eJj1rqWiTMswQIHi3TkrSGB4SyAoULl4vWuuEh
	 9LZdOd9xENaZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD39C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174147353360.8800.7014376224628147389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69806c603082970eac0193098565ca4abf8ada57f66d3f1e4415c695f935e2c6
Date: Sat, 08 Mar 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741473533
