Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A5B1EFF93
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766894634; cv=none; b=Ji/7BktXhADl2wEsetpB9MAxvKYWASJudj1WgFv7pcGyHHBQWl3ijL3yFrZlPIz3Hcap41Sdub1jo9ikgMBSeGtwFOhB7O5YQhHy2yuvEksN/lFoVoK2pf8ljAPstlHS+wFjN1ws14vvkA2zU1+TbvRuDF8whumJFVLlDOYHZhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766894634; c=relaxed/simple;
	bh=xPLDswYqHfJK49f8gbv7IBRLLyVkYpzaFdHU/sUd9b0=;
	h=To:Subject:From:Message-Id:Date; b=hE8C8ONnFR7bPN0qdwxtalhloaPq8WNETmlAK0+7GFiMh+eoGT3t3vqxMwoviDWsTje+4zOu9ZthaCcdizk4K2ffiE+ISQ5/U+KlPZHlcMGlxo5iOAqoBqwP70qLxazeoB/6SYMDoCWNWJqwnOPn3KsoQ3OQkJZtNd+YKv0zfRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIlnJU5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIlnJU5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6670C113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766894633;
	bh=xPLDswYqHfJK49f8gbv7IBRLLyVkYpzaFdHU/sUd9b0=;
	h=To:Subject:From:Date:From;
	b=qIlnJU5+Uh+0+yrxdksjrUzkPNrWQzHbhSyY3xya0VR5yQNoxdX8XIj40VOlJmOBb
	 yMrui/Bz9hoA0NVMjUd8KXGGWNGd9fHW0Qug2XFlSnXhfiadDZllZbnhEORUH3tSZg
	 cv8v0vF+P+5kfuI0HZUYbnZ2clsG3FGW5FKDWhVzUOxOXbALCXDIp1GTlBqjev6Saw
	 +wCTR/DMIZV1xS18GPdYBjjQgcNDU9eun3nwWwoni2YjdCWHiY+1gVO4HXIE3sATng
	 NWFbheXHWv8P3NP77zrBMFK1AME8lHmmScC+KCNjiFnSQ8mykx8sMFERj4m1QnV73/
	 pKOu6xH4Xsnog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9394FE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689463359.16770.2224459197924653393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ea2ae9724d61d4c8ad43f1fa3ef05eaa89042ff19fdd4cc44a5bbe19004296
Date: Sun, 28 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766894633
