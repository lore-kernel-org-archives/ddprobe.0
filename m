Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFF1274B53
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782937714; cv=none; b=dGw+EDaxuMo83qQ3k5BaesMfsboVmdKTs2rOLckyjnXK8tc5NczSS1OzckxyqJWE52myRRdgR5hsN4UWSKkbKntAlPe4ESKV63FE/LHAneun1MZYYEBFcwP5E8hJiuqQX3Syd4pV0JLf2cdj7BWzcco0i+OiecrC5x6EnrqpzTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782937714; c=relaxed/simple;
	bh=5JpPkH4hH8jyhPe3qIWcMq38/fc7Ns7yY/Y4m+vIyN8=;
	h=To:Subject:From:Message-Id:Date; b=PmQJkiKW11lIHaaK+uD31kxz8aMf2+A/0Fg6frguFhMUxR29ZUar2ped1I96UB+RT9x33q1CHHoi9Lupqc1FvpzA9HJKBAEBE2X3D6ps6l7M/R00FYqYbK+SlzHBF9MLuSwLJd/LWjAulSjeeMXTIV6M51xcF7rYbbV9dM7FDPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZG0VCqcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZG0VCqcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7B1C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782937713;
	bh=5JpPkH4hH8jyhPe3qIWcMq38/fc7Ns7yY/Y4m+vIyN8=;
	h=To:Subject:From:Date:From;
	b=ZG0VCqcUEi4mT2BgxL6wjJ7Wu0j2i3XAMfEObpPERS1vR1jMSyJzCLIpJiWgAevJl
	 4SWkELFpy1j8xqOnDK9z7Vz17WU/MspUu9IzoRw+a6HFBXzvsji+OSlOnZ7CjBJnPF
	 rEWhliXko9c1IoMYgpUyupsoPzE0UJ/phInP8T9fwjHt7AHFh5lx2ykKBkeUOxFwuI
	 xRaI9gBdYt4/Lce3Ael9f4nGZBKxkUs/NKHm7vPzplMqVz082s9kFpCgFJUrFlRSjc
	 fcpKIaKSCXiWyjySphmMziVeWf4g/cD6ZvCtXcVmFkyxczm1dow2j8MRbUn6HcCm1g
	 XzJOh0N7OxvZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD906C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293771370.25825.11351077165445340132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb1e3b4c52ae119ebf3505ddbca16d6799589c3ed99644298865119c9d221bb
Date: Wed, 01 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782937713
