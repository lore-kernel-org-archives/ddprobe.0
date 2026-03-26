Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090CB266B46
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774553694; cv=none; b=sT56GI69UAGJtwk5ZZ2i/PFBflrbG15TJLYdpzW0rE7PHJSdMZlZJ6gHBWr3XBct+68V8Nq3gL1P4icfY8JQTIIFcLom5TS6c86ts2zgRvEAmILIaRbKDt3i/bUcmeeYZr1yF3GzxWzeIAvQ3CH4O0K/hGhgKvJWH0HzGXPH6G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774553694; c=relaxed/simple;
	bh=NGiQ8K5tztlvqXxVmvfieJIEqCjxcxZ1KshuKh9vsbI=;
	h=To:Subject:From:Message-Id:Date; b=mCcWEtOXaWvUoFzLRpVRrfIR4trd8dEEEf0veRxHDTC49E6T5vC45ENl5mb1duzmreEhbuAsXgwV4UWYqcS2kZgm8wRx4i28ttkuHD03MzApsvyz/1OdIXJGcS0y9NZudOGOOOvy7e0lHa7lTK1EkP7Zbkg5D0dx0mS8uiOs9vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQa0KMU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQa0KMU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3FCC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774553693;
	bh=NGiQ8K5tztlvqXxVmvfieJIEqCjxcxZ1KshuKh9vsbI=;
	h=To:Subject:From:Date:From;
	b=eQa0KMU8wDi2TYAlkGOMJ+PzEOr9MDStNNKGcc8KOYM9uoPOvTrUmK8OurSLIow2o
	 jNchKZR9zAfUfejWLBflvhXXK2+LTKT+cmjKuacIslH/QjH5xn3410YWiwAe05/UD3
	 eOWqvxLuXvgG7FGhND279ZXu4LSwrUwOn5T5wK7XM/F2clo+ph4cl5OzuNxQcTNIvC
	 8bLeqNWqg0ZQOjno34WpDiuZSOG9Oi1K7HZkgkOPle7LxuwKK3AF6QVNmPiJVa+sWU
	 XDuNJzAQq+6v73jWk/XCav2ILfboHW3KVwSzQfctkivqj/V+7ZeuMwF7uONIt6sFk8
	 Bb7FkZhfR8cPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9647A10AB80C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455369360.30816.16596624095132606162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c184cef5149ad955a889d901fe26e666ec6f9006baa6d4ff6a17ae631a9a902
Date: Thu, 26 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774553693
