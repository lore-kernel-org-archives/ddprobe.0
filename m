Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1724D2629C
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752925794; cv=none; b=tcwl3mueLq+IMBZ/P/wlIOSU0MmCR3034yNO4t9NJMX+7X9PjQByGpO/TOOVr37QAE2twCJPROei60y/B9qp0SndyM/gXERCNWIVH5fP4pa1B6mLIYCOqTAzKVPVcbfo4/hoAM2pA0kLxkos4Yaj4426TELcO84VEwE0MiWJMBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752925794; c=relaxed/simple;
	bh=639IdrI1jmY7nLW5nRFP7uIHXqwNJNXxxdUvYfRmc7E=;
	h=To:Subject:From:Message-Id:Date; b=NH2c4urKd2Rl9atpCR+iKQCf8gK/fqV/YU/WJ6qMRbseXMbUDnBvzmKnNpzjZbclZII2DeYt2FvM+9xJACSihNR8hpWzkLJFiKnYAfKieF6nIA40fHgcMdsNBEMZAutwD98UWOHv7GasSSjoHdGiJRUbD/CB9uR8sbQ9NWW4/m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlZ0SsJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlZ0SsJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DDAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752925793;
	bh=639IdrI1jmY7nLW5nRFP7uIHXqwNJNXxxdUvYfRmc7E=;
	h=To:Subject:From:Date:From;
	b=GlZ0SsJfAwu+6D+z+1bEpNa1DaJD0r7TzJg5H9eP75VUhISV7XzWeYbilBSEAJh/i
	 2oOvE+nDx/JeArdYlsr2te059o9KPf3mMRfQQQby2vT9yw5YIJwh25Hx/EjGOnzLZk
	 7clo5qHGbZg+QtE4s/qu329TtFLR6A2B4P16DZwlF9L4L0ZWKQk53fl7o4nD2N//W8
	 wxrnIZkr4eAkEVqEovQBaC0qnXFVL8+zYl7sYUuxd4Vjjn7nEuA0uAvAKnyYuWMMLh
	 KwiBsUtgAkT10e0vcYVX4w3M6W3XNsNxKgjn+IfSWFJby8peuBN14S9gEk5AbRpOPQ
	 5jrHgQOO+KySg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A8C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292579357.18894.10025865315353546689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc541122571d05a2c6d6338900613c2f3a1b0d6d47d6433d8a03af1e37236e0d
Date: Sat, 19 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752925793
