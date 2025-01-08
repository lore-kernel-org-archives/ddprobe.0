Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213A214A82
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736353554; cv=none; b=kOsrW4eEZY0jknPFLcFXtvJk1TORLx+omPCM6TW3U6Di0wXC1WPOUAeZo0eA2/ThqYHr6RmHWm/shDuO1dvXcb/TfTxJijs6RLK57Ke5kZAnxCb3EaXdjuUfTEX5bsIkAvrFO1Q9sFJWToMB7AI1ma2DuQcC0Tz77sQHDV4VRwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736353554; c=relaxed/simple;
	bh=HJmMTAs7IR2RRyQkHlXswXYbjVqGkogipNu3oLVm6XE=;
	h=To:Subject:From:Message-Id:Date; b=Rd3oi9dBW6lQGAl0mZU6Feo/9PSBa8rGRco5P+IqVezu2sNRP8dleRHHHNAB+K2OsM9gTJp9QOyZr9n6Nv1obS8lEY6tKQwnvqXNk37wdzSbQOvs+dmGwBOqxaXLG7StcnTDHS8wjBQAwXzySh6OVcgm44XZRosy2vePY8zalCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZ7g5khr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZ7g5khr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5744C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736353553;
	bh=HJmMTAs7IR2RRyQkHlXswXYbjVqGkogipNu3oLVm6XE=;
	h=To:Subject:From:Date:From;
	b=HZ7g5khrkie7PgHUjmnF6ZKvejXI5IBXR8DQObqAvaBofQADhtBVCkftwhH3MN1U7
	 C+1AmzzH58KQS+pzHcJWYIbw5sFG5Sa1hqZ0KzO9lxVG24miDhdY8tEjNcvDL47LxG
	 YQVY3hUfPXZdkV1Mg/bBlfOlQ+SBmRO4TiiAczHgInL1xkcvhRn5gam6sEmm9Y0+ma
	 AgXaXl9wOum2aKDoDx6fOYTWlqZSCa5ay7R4TGBXDofebsFC4T2uHn0t4MEMTB2rdE
	 cdj+NEhnon3DeHRdv8vALWlsL3riR092kdDlxB1tdDnLtVHy3WE3EslQU+uZzGyOcf
	 WNFQFF38Zvu1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A9E7719A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173635355359.26667.14001707201383492420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10717af2d11f9d7d92dc51bc94f447b248be7b43bc3b2bf6c5e95067a5d47f30
Date: Wed, 08 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736353553
