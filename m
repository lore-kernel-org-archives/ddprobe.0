Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3959B3FCC
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761459594; cv=none; b=uvJi3oxom79JpDNxrnPef5Nluj+lwuk7sWiT5YLgcyZOCt0Uco8+vu7j5RO9BzvIQuXdTJ8CoF+RyGG3WecTCVhbjHiCAnQzermcw4otdu1/KVim4Vjosc/xJqulX76K6GNARMemEySlol1GVBj78e4C56BMGCXm0h8zeJSPNWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761459594; c=relaxed/simple;
	bh=R9AhdY2QsDmi/XBN0SBcVRB7B2mCyUdjBQ9aZXsQCaY=;
	h=To:Subject:From:Message-Id:Date; b=MABCY6b9kGqPTRHUtGHu8B2dAJq+oJHGADVSBC0jMBGHwcCajofxh4GBfb9FdS4vqC1nYvwwpiGfiLaZ95gk0ulYqAB5PlkndDA3KUSATvSZ6bGDWlGmyipsLEhj9S+GBOnJnxjd3bmV7D92vD1lI4uCvRztQ1jGCaWVtjfL1XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/1f9bnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/1f9bnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BEDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761459593;
	bh=R9AhdY2QsDmi/XBN0SBcVRB7B2mCyUdjBQ9aZXsQCaY=;
	h=To:Subject:From:Date:From;
	b=j/1f9bnhysgQoK7zCFDzBX+60j1rTW2tRzUiGy/o++Ep9rGRP1j81Tu7BTThdMtCz
	 tEGC1E/2L0nwrhK7dOre1QnqniR2foFJooT3248GU9+4QV5gAXDcMe7bHkjAUq7vWM
	 OnP18Beto3RiMuzgXzwqJ6IiAJDT+lyb0hr+R4ZId2ulxaMf85ZR6poD24ZepvwIsQ
	 C8I9lV1cdXDpYv/ZBF+6UoAF+KTr/DzI5qOaoOHuJ1DPUCy24y/525ZrQgG9L3SpaQ
	 ekvAcXd+70MKcl9KiD8uFo8YKWB5n3onbyJIPOlujJgOL756sT/dT/oKxTms4yPx8k
	 9UBt3KbjqkVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABF7CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145959358.29071.18238515991934116682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d59b1be71b1b278e458d9255eb5b8375fe11b3c35c48c6e409c944ea6b239a4
Date: Sun, 26 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761459593
