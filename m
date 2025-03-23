Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4550A566A
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742735994; cv=none; b=k3tOKIcDwCE7W2WMQw0+gZllklIiOmha8eXXAKwOILYwF5yz86+pMMZKnP/TymlfPZ5ICWRUj2VB/3GF/nFzUZmM4yR+MaBb1oh8++QDoF5R3qleSd0B6B+k5TWFQDmSw1C/JxU4G675W7+tWkM6OhnaiHj4gwO91HO/AKB4HzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742735994; c=relaxed/simple;
	bh=RIcWV55lJ0NNo4crPZqmLcGTL7w4ge/hSsTbuJKn7f8=;
	h=To:Subject:From:Message-Id:Date; b=oeb8D7eIY5BwXYo12EBPm0D2gaS6W3PPkoLSl6d80Z3ObOJFw37uEN50eTtnglhZnpjhoC4roLYaCBOmnCJFIshmGJF43ceHdil5HLlc9+AQSjQ0Lpm8uJepVSVGoKVeQwP2S8zpM+xVuJf2x0LL6HWSxUN1DTaJ4dqLL7izSjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tT8OjPVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tT8OjPVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3E3C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742735993;
	bh=RIcWV55lJ0NNo4crPZqmLcGTL7w4ge/hSsTbuJKn7f8=;
	h=To:Subject:From:Date:From;
	b=tT8OjPVsMujK7PZjKsIrlMibFdnTnqccBbnzRb5g0F8AFuJdAHu0ZXKJNpNK/KcMZ
	 kp0k3m/Cv1Cvc5OlLeyo/FtxrMNnQ8t2qvoiIHii9q+1IdalMXlCUtQ1A4TVQkkbLx
	 5OLjHOQ2uQB5MaVo9CsvivuSIBrBLSW1zvNVISykZBd/2eKC7jpjy9qxAgFF1smQHI
	 rE821/yIPmM8fzY0BX9/+EC4T7U78B2BX5gdkBU7BBT34mzHgtj+vVU1U7GSTjEPx2
	 Ov/ksBNPMs8bwMugUdkd/562peTpnXZdgzrXDTpyzxKw/+H/DWLJCuf+fJUYi00P+x
	 QumsEqC5+dnag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ACFC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273599361.20316.15055831247369662670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7beceea33e0f52318fe9d7f60e8c9a3044fcae9bcbc3886c2c88aa8431b9c97f
Date: Sun, 23 Mar 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742735993
