Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4965B38E8DC
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789301434; cv=none; b=emSPUjJwjsyYiN70fqSEzDKWk/euKpIQw2fsi9flZwKEnlTsyQoXcGNVcri7RLBFf92lJjwJ2/+/H/cW0A7EHEgKv6yVTeMEX2Ck0pG6EauRYi2LxpP98lVhsBgOVvzKMG82lviht9DhPuoC5p/4FaM510ipSknY3kiROqKknXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789301434; c=relaxed/simple;
	bh=VdGRifEiu0xs0OxrJHYZiQzSCZcRNNYSCK225n4oHco=;
	h=To:Subject:From:Message-Id:Date; b=V01KQ3OkPafppUeLZc9FAqvwhUDqwoOvlmH3VIRUuCpw+EaI7PjQKxuHmIQWrlf0LRNBzMH6lzDAJI1ma5o2nkljfv+dbAowLHiaqM86ng9w9atWRY6mpVMsu1XgRNc2ECVwlRR2wbC5D66EHZ1A0gP2XD++1wl1Xnk/2HtFyCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCDyKaht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCDyKaht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E3EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789301433;
	bh=VdGRifEiu0xs0OxrJHYZiQzSCZcRNNYSCK225n4oHco=;
	h=To:Subject:From:Date:From;
	b=FCDyKahtunVFc95s1OSx55na+SYJI4IVmAVgwfx7glIF8947LhgK6ANm4hPPYbLkN
	 /zblkh4VlpVEFV04pYk3WSqVQ3u21KfdYjjkaUNHWzliFyx+P/CHNiimLrfmXwPAiI
	 cINUoqilSiyiwdGbIB7XOd+M/EmNZrPFcUDwQYtE3e7hBvf+qeSvoCC7o8Far1S/Jg
	 0l84swCreFpZTuHkUs98VXuCq6nLRVs8Jt8basRldaJbGWCyw7z8XD26fuqVCWZXit
	 6sIBgc7mMsEAKkzsvtaE2C5HBn6CKv4byya9lY2PafAwbw7O7TuVna/JPRHtZCPqoN
	 OY/Bp70nFIHLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFDEC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930143368.25369.14262118350730827027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5919227472cda4bdfc049e67992a1cb36e600907bdfe7e3bb939a9137a2c447
Date: Sun, 13 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789301433
