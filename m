Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E0422A817
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774843494; cv=none; b=UHqVF//XZ1mC2a1ma8Mf1YfWpSoiYVloywyIupyzp616H6LCovKY2k9lZR60JCBgfkvR+pwBFbwtHX5igJLNOnxopgpQ7hWTea+HaE9Kmee7wToLZQDZ6tXr3uSu1oKoqa1O1yVqqYF5gOrvRpuXFD3az16/iSv+/Gsy5TnUV+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774843494; c=relaxed/simple;
	bh=PowrS35yvUK0GdYPdhd0iV8joX32sJfen731u8DwzvE=;
	h=To:Subject:From:Message-Id:Date; b=cNOE8Z+WuEWEHA0wOjS97regsWTCDFYcsPc79tTxUeKujml36fMbN/s8BhMSkfTd2zOrbpo51lEJSYgUqctkuCXZFYGZIoVhLy9rXSTor38lgjVxfAo5psIccQox5TazzWQOU7AUIqPTpCutvVbA0gDgj9ykQQUTpbDfLAAQWKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxJ1wzwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxJ1wzwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2B2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774843493;
	bh=PowrS35yvUK0GdYPdhd0iV8joX32sJfen731u8DwzvE=;
	h=To:Subject:From:Date:From;
	b=ZxJ1wzwS+6G9HQ5N31PSeQ55IgVjkyv2GIFDiKu8eKNX5QtRZBY6WWYbyl3jUyjef
	 sgNiY+Qyqlsndi56qvKtnAL8PSQ5r9S3VubeSEJt8TFM+0nAsb9lvvutmQnAGMquyr
	 BjwnzGmcH4nz4OnlPrgLslm0OL9mfzZFY5G1DJXNlIkXBxZTppxV8u3CfiZT8C6ZQM
	 E73J4tlgH6SKWx5Hwqko/wjDYCYjZ1a8yo12VRoKOT67eeGllKtDyNcDwmLRdOPymm
	 SaouVifBxzWe+sj7BFWQwfwAmVmXpYgJ/Vtft+EQyJBjSbEcJl3/FPCzAXZOI1y850
	 E5Zc/d+18Sjhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981DFFF493A
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484349360.21483.4898744738597474784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881575287134ec25479a93a72104e002856cbece84b6861154716bc675a1c59e
Date: Mon, 30 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774843493
