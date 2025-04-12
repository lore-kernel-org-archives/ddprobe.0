Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F03E1922C4
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744496994; cv=none; b=lgqH8QGOOgyyFk2eBprYdXOZaGJNxo8bp0rr9pLr/3EepkqYNVCdOnOtdr9lnK6cDUtStVZUo7XE8e8bH9tFNix4MrVawZ37Kh7eZObqkjj8J+JrdcJgyCtrO9w+qLdnwazUCAFg+Pg3Z73jQivBy7I83r0Caj9mtc7nQWWA+tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744496994; c=relaxed/simple;
	bh=u6jAYgSQxnsxAl+CmUUuRiDo9WhE/ucnZiNVwr3UVaQ=;
	h=To:Subject:From:Message-Id:Date; b=O9rgAfk1UyU0lrdrg+WhY7cqT0zipBLshcfMEgP/vNpSOD1KoO4pIlXxwGAHHNTi6OLGn54fsCaD++F3HFvs3KGbDij7e7UyOpCaIA0qt3ibfQ1klDd0zdHW8siTjKN0ERGU7t80aS+a6G5xr3pf5ibMuLFdG4aHns5/whOKGMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3pGXc7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3pGXc7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B171AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744496993;
	bh=u6jAYgSQxnsxAl+CmUUuRiDo9WhE/ucnZiNVwr3UVaQ=;
	h=To:Subject:From:Date:From;
	b=S3pGXc7u/ONf05MMBlVMcXl1h9F/F/xD/Tg08/6PpNbvJPB04tgGM5bjxfJhyWQIx
	 n4QcNAZFElF9kfTGuwgFWcqDcz31w8hxCUaZ6nlMf/bfDBafQ8R5avBtZF15IQilVM
	 3bTToNHNGwXuBYv7sWOT1wkiBa5htIL5cJesgyNoAD5uWvWhxRfkt5VULnchI7I2Bx
	 07FKgToRFrr3W2YPBleLcqUCZB22pDFASrPyVyyeK5e3tHL9kug055WhKCcHhpOED1
	 AdAvGbNpK0gr7xmj4dNPtgl+YznPZRr1nVpGIJU+U4uIrkNToy5MD7t6++6I4BYRr2
	 folln/+48HWNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B61CC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449699359.19423.7077519604825722304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aff4dbf489921deacb1bcd3571c4fcdcb8d1a3c3c452f1cca3a0dadea080e60
Date: Sat, 12 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744496993
