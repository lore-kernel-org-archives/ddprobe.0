Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222501E480
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724417154; cv=none; b=ttr/rVpktjGrUYRI1Ar9p9GR5z8t25kuNbAUmgUnr8jDpM98z4WGtYJnhXBgx9bV3eR8Dnhz6EDdsw8yNRfpRc4wS0tp5T35knngZoo7GkkM2dUkUREsZC5VS7u8MF2LkjvHjXz4d2ZPr4zdRcVrCqlMHduvtEPFxTt2QBknbBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724417154; c=relaxed/simple;
	bh=ZoOf4E5OwKWIFzx9rXDE8JHxqhiVK8xeN+iGva9S7mo=;
	h=To:Subject:From:Message-Id:Date; b=fEu41hufJOyxW20lUVcfzApAm4ckEqv/XG85wK2Hxkpf87K64Y1CsFFGzmVXRbRYxxNPbqzHJUoB/A5WjUIcSRK87685diyzinaEx0w9h0J8r/PiBe1PNKhc5InsYUI3NU0BwcdFoGCYYp7kBZ6MchwrBdVObzYoysbmOaMNXH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItA4V7Uv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItA4V7Uv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1323C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724417153;
	bh=ZoOf4E5OwKWIFzx9rXDE8JHxqhiVK8xeN+iGva9S7mo=;
	h=To:Subject:From:Date:From;
	b=ItA4V7UvpCVkcQLWrvBD3a3fQRMG40nsoMSCFy4USzRc5Dz6klI6bevO+WUkoPpJ7
	 qmjm8b1Qz3LCCck2JQPeKgffvH82CrvqVv2fsnOOwOMfk5/59N0pmwbfFyC0Nmk+b9
	 LcNygye+1oqIuCr3syzAqXz71gGduxlM+E5+wXUBzkVXZ6qTgUh+JNrEp7AIeZrUaE
	 WFu8dy9m9OZEyvL+9YZyicuPmRYcwei7JqYIPCijvuNyeAlIQHEjyid22S4JbWzDKW
	 wfhuXGnexBMFvyejjo73Dj0mV16okyWpqX7Kdr8kk3bbqHhaLVfsUzzc9Vtan6WbBv
	 h3N7ZtuHoEl4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B337C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441715361.16000.1191912231659581545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433443347e7fe5ffdb1018895da21071e7f7b527a34003e636ef33d9d487aacc
Date: Fri, 23 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724417153
