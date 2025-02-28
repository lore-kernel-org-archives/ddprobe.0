Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB8053363
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740752334; cv=none; b=G+EUV7vak3WTGqJ6BIHzUeAuVdjLnPG8QN+0tuFVZqqEq6HnHN8yDEavmoSIi8tx918nudZHp4IjkvIRGMlPsAOzL1uUNx5Xr0GdcsXif+1a/wUIiaBc5WT3KVd7/kvpVnXEbqfKgudImKHOkR3xwAqO8CJ7LRfVNfjP6ExtBNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740752334; c=relaxed/simple;
	bh=Hb/AZKaAJpOpJmK7n6i8QeVl74ZBEkbbVM28xJlAcwA=;
	h=To:Subject:From:Message-Id:Date; b=UMnNrQsr7cTmWdtsmYfq0NUGKCsId6QtxM+/pkdbP8+1mpy7Jg+BoVTwOS5ARhEvxk+sXq8kC5LSYr3CymAYe0cnqCIp+tFwdyF3p2SyxI7KS4JzJFqxsTqZAiUvA31lUSmbPzLR1Cncjm3NOS7U0X7F2SyBSEN1yAABxA/Pe/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUNLEw60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUNLEw60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B0AC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740752333;
	bh=Hb/AZKaAJpOpJmK7n6i8QeVl74ZBEkbbVM28xJlAcwA=;
	h=To:Subject:From:Date:From;
	b=PUNLEw60o8JEgj3vWbH/Umbbpo1s7o3Y78xKe+vKQUOJNCdvyXZZSaUeclxbmPWn9
	 xrcBEkClETQbRIt5+TDk6fgQQyqTbKTP87EaJzzZN3yh+9qyic6crFoL1FTyezSSRx
	 +jwnfE7BS7NmvvCJGOHMo/sdVZIC3le8DiRQ3tEoOy3WtHil3onlP0IdpvDkYIm5mT
	 U7k3Y7xLiYWxRTgnjYKbQuXPFp5zeQmu8/9Y/MMzYrwaVqFxGfPB9UK7iWcyf0TKsr
	 3kGw+Tiamv45c3LUvOBn3nwpevyzfYiZSuAutNQ1KaJ7nOSp5Fs/tyIx6OmAH5mQDO
	 9GAwqHNQMNIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A62C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174075233360.21634.6861154932632994564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82515c3a685cf0a63ab75fd378670acf3b713042017e42a8ece2c9fe030ec46e
Date: Fri, 28 Feb 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740752333
