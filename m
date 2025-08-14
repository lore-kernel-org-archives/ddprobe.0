Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1880421ADCB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755183594; cv=none; b=B8GmGQCpkr2UrVap2bwPKWu0zYFDsd/UPc/gFZZFrdD90ERiFRbsosZo9gQljayqVrxz5ia7sEHz5Bcd8vKtycZC8mEkYQNctra4y81sHnlFgCr5XEw0LeoigfGyAdgS70x9bLT277RQV7ElJxvHROXZKbqlqVQblVKHxCH+pKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755183594; c=relaxed/simple;
	bh=VSXGAt+ELXax5xRXeCX09ycfEPNIFb+x7ryoNFlIusM=;
	h=To:Subject:From:Message-Id:Date; b=Iq5GacrJzA0EDSTE0MY/yFoWDLJOwrYJRd/zIelSItMxS3GgHGv1+oEPCWn/VHq8lZqtuzfT/dE0ogO3Fxzfb4E/9CeRZHPOfEU2v6DCEEiNQBWV5oUjrSMdbdOEUnWntM5P7FuWPcmqIvLZJt2M/Y2U7NxM/Hn6seoeNW7lHG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9R4mDG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9R4mDG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C736C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755183593;
	bh=VSXGAt+ELXax5xRXeCX09ycfEPNIFb+x7ryoNFlIusM=;
	h=To:Subject:From:Date:From;
	b=A9R4mDG1PTr9V3Z/+DHPFFW0i+tDSbd1tsHnFzdtK3sLrypsy2zvJGfUYGtwB5l+2
	 rv/P9Xlr4I5e8BGFQD9RK/ALNlfus2TDX9a52sh7YHX10bA0qV3F98kC+5XotRzOJf
	 f1lR4JD7XP8Cv+zoxMWThtpmNf4CesuV9H4zTAr+U3uh9U52aZAYAp6z6Z7SLS7FhE
	 x4e2A8v2x9pb2Igs2KUfjtFKIAK3Xc0UwX9DC5YdSb4kKn41x1NCKFuBk8l3ksgdqS
	 9AYJo0F59Z+NqKPUPtPS4uJ1+hU0n/IvaZYD5jcZDpLV+rJYbbzw0HZemM71/nmJmj
	 3b1q/Y1/ZgVDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93FCA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518359357.16166.13516471729530096018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b7682c83f507e62a4d2ae63158cc9ff66fb1125c8178d06dc6c59de17a62d7
Date: Thu, 14 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755183593
