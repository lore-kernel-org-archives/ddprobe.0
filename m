Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AB5A48
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754128794; cv=none; b=HTqgX0qvBQgdbxVPvkrEIqI0XbZ4n/2g52cY8rFgox9g0AIIUFEHzgjw+29mofzsJyP5BhCMU9vBIMbUywST77EeRIAMG5lQLwaL14ju8XWrmf/D/3xzuqI3xLKucRZ4c9ChECN9E0AFMKwi9L1KyYcjypCsnQ1WMqe3Rd26R6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754128794; c=relaxed/simple;
	bh=ywsqPblrxwEw2gZCHatHiboVphq9DXDkD3IBG/n6n/A=;
	h=To:Subject:From:Message-Id:Date; b=iXJGRX/Rj5y2juGhJpdwR2yB/8G7aVLRLjZzdDy3FoSQO6wzX1bGuRmP8m5a+DSV7VhSmzR4ZK6yW7YS7uWdv3Hr4FooPrW1vxTyu1R/XuExyH8cD9tlYoZVad37yK3y2fePJ0OO829WRb5Y5Y+pe/U5HXhuiEWZA0fDDMljidA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ojp18qs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ojp18qs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A7C4CEF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754128793;
	bh=ywsqPblrxwEw2gZCHatHiboVphq9DXDkD3IBG/n6n/A=;
	h=To:Subject:From:Date:From;
	b=Ojp18qs+yMlI4+kNM1Gai10bzdDsztNPfl2yqBFGaAjf1v4p7x2fR0NvuoZiybzAx
	 ZCCWhcSq8vV01N4/KvRGkCBgGbpq20FSygvuLtBFP/wkDVBJteIFd9OqtzsTQy4ypC
	 mrHIDd8e5BJhXbOJL2K5wjpuWGE1RSCbdoePcts1a3XyTjmo/DYGzuJcinvuHTcuzf
	 VlTd7GIBOTL9OP5GATszTi4ryRV7NNs/ez+s13REdA9XoQSIdG1rd2jf/RTNrBj7BS
	 O1kylZKkZtMQM6l2ImuKKZyKLrj6YIN2qmYU3yRwJsvcNCehrr+kN02/kYQwkWGHhK
	 VbqPi9lvhonPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79CC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412879357.3919.722946543287250344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d215f204ec45cb4cd55d61fbb1e5add60f276d1c64be1ca6e25ff94b01eecdce
Date: Sat, 02 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754128793
