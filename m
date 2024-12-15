Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538371E526
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734290154; cv=none; b=eNwRmPhWxfrczSGt06wAE9S8RUogrHduCNUqsL3EBZXlh4n+s2TbTBZaHk4VH+VMwzSQkbbHDXfT/eEpwzSMWjuMQxRv6YL3rkcjuASMV04VXE6DuwbOd1Kddx67RZAMvqkygpv6/OxIWvUkOu4RmjFWwrdwaUpKSqXMuvwVDmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734290154; c=relaxed/simple;
	bh=4bhs1YKTjsh7sjBaOWVn1984yYg4yNcnAD1BOxZilxM=;
	h=To:Subject:From:Message-Id:Date; b=ZEZYJp4IUwgUE84Mggq86YAQNll0lWGVxDDaeuKiqgg/dThijVXL/yV27kTInmj5Q4ksWpMD6bFkVj/qlKS6koR7dWxjCfRFX74zcYr53ZlMi4J5Hj8zBHlFKgftZMWkR740dObfOiZfcTesnjmlKkJos8ZiGM2PC2q2/7YOXjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HurndsZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HurndsZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B14C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734290153;
	bh=4bhs1YKTjsh7sjBaOWVn1984yYg4yNcnAD1BOxZilxM=;
	h=To:Subject:From:Date:From;
	b=HurndsZRomeE+mw6pezl/AihLnLjBAFj6OLVFbG31EMqSB6C+wzX5ozN3K5sE3zm/
	 T69NSLUpznG2BBUwdAj1kueHIv6GQzJCQlmMryset1NIwTclpK8auNTHz6Ji3UOMqM
	 2XPNnHKIhiZfX2zGB/925/3JinaxTwEp0DC/r6gQIuh+ntQxhvhpQ6irdv90Mpm+2n
	 H/ib8gpr6nnguAUwQzewqbbaP1M9R/KCOGMu45skl8KFLjVhY/TS3i5bkKS+vGsTkU
	 kpOtzIauWDVSvR6wm1Dr+H8GDavnhCUWhI3e9khqJqpDbMuxXmZisWSrGpwxc5x6gG
	 nt3czE9jkiv1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8ACE7717F
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173429015362.13603.17087480101360815452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158a9cd1ce64cfe7f82387d3084f0d12a5813ebf3fd54f02a8ba6228ee575db0
Date: Sun, 15 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734290153
