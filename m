Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1811F35DD14
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770589434; cv=none; b=cmCLQM3p1AqLThxCdDXaWSpY/Edf8OHVTz4El2G0+AiYWdTazngf5zGc8UGGbOKjau/DVOdZkv6+X9GJXlw7RJ60I+45R+39Datad5YlmrKfP0DHLxNfydQNKWFeKVQswr8yY6N51czpQ1MOBOe1Z4R4mIwwNzvUxhNy2iQ9udM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770589434; c=relaxed/simple;
	bh=iiagKLmVkiistJitb96mZzc+QhEKln9dSpoKjYsH6nE=;
	h=To:Subject:From:Message-Id:Date; b=TcKiEf/+5EGgxCQcnf6nRWCTd4/m+fNaZknGitnt0qstdAxHjC4BlSh5Qha8eNLsHlQ+pUFIPEo2LPRiUSgaSKoENQo7OyheeeQqOgR68OUYqjZQbSzP5EMcYhjASL/xE427AgqjTvheLRco6v9nd1hSWHayLkysiZGoac7vA1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbEnxc0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbEnxc0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84A3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770589433;
	bh=iiagKLmVkiistJitb96mZzc+QhEKln9dSpoKjYsH6nE=;
	h=To:Subject:From:Date:From;
	b=pbEnxc0LmHYJlLD12xj3IQb/VnZG+RTrWu60XBsd9lcot5K0DjO+bvlWRjA35C9wy
	 5eW1Bi7ahIk/oYjAKsbYN488UXKqqjv0yuAQypzIrxA+91crlRZWOJbG5bcALPhPNj
	 CJmr1NpewyZk0hpNMxLPqCvwt4MGxPJLjXIRfhc8VyL1bQ26PozlVur+5cd0gGIwef
	 Wr8Ff2u1k+27085bwwmjca1MOKPYNcapJPsB24TrSwBhkRAx4gTB8wCbh4Eqi/6D6G
	 emSvCKYqYWJizr0IJRPi4Su7UQHaHCB6k4lARRz6/2TMlFQ+Ihr+ytfNLsjl9ra+ju
	 VIlUICF//kf6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9349EEF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058943359.22300.12330251095443478827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beaf28f7ab93ad5a46f99d8e4a0b7e46ec03eb9f8921fe279f560e17e77dd06b
Date: Sun, 08 Feb 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770589433
