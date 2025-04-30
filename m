Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BD525DD10
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746039595; cv=none; b=o08iKnuTgl99a5FAMjsxjF8BHGenHPoH8vHdkodHaYBcUXsNhQm6q7z35OtHvaanyNmB/82rAwpJEU6WA+HwxRP9p926jm8YWnkpZWawPJWF47/aRx5f13vI/0sV4WDYE1DrMvhuyPNdV0dP8cPSjXDmfl7syxT+Hz2A+H4cRy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746039595; c=relaxed/simple;
	bh=K5AKMqSEjm0/u6U0MAUxxNDQACi02QZugFIc6LVPNO0=;
	h=To:Subject:From:Message-Id:Date; b=j2PonsP0y8Hdfkkv53RWMBpwtjemwJ5xIuIOKVntpIvN017u116ZwbudQU5t2uyDHDTbzLFeg4s9p/XJruTBTRvBuQvmfAdwk1oGN2Lsc/yjOy21iu/q/ldHhhUomqkUtowkZ/2PktLq6EO2MaXYzf81/rrOkiVaC409nPjMa1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6PtGS2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6PtGS2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6ECC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746039593;
	bh=K5AKMqSEjm0/u6U0MAUxxNDQACi02QZugFIc6LVPNO0=;
	h=To:Subject:From:Date:From;
	b=a6PtGS2GNJi6AruQTblPQ+uMGnZ3EgnmmrG1Je8Ws64zmN67eoU6EnPBkZwINTSPU
	 Iq9wjmfhZHmez8co0r5gvFUoRcs2MEhaxSYOjtJ7R6urda1lc5o8HUvY+Bdt0WAkbT
	 vq6D8OLEUBHMvrW48JGRjn82jZBmAaYPUYvCb7PtWFOVZPW5I8xlTJ9Qb99yU9ZRfw
	 7R1bax1G2t4OagePt86rvVrx7jZxzMLJYYOlWDYxZQk5NzDoQFUeuaZ8z6hY5xb2F0
	 TWhIiQQk7GVA2wcXY7VKQtjicOzDoj8kXvl2oht7qSaWHYN8uny8gerdEHZ7K/YqRL
	 olehkj4RiWWbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E024C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603959357.17084.10891187987391879773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36109ca6003f4705550f0d180a4441625d15aa5dccd5930cb46258742ade8b07
Date: Wed, 30 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746039593
