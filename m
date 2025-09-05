Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72E42848B4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757102394; cv=none; b=ZPo/Y6abxnOatNnOBPgRvTMqti5xWNNmk3dZJoFNlZtkZwro8YRmjzCf5GG3Wp7JMr32UlU/BUHjzEW09i0msPZrOvIhF5fxZFhQWFVHfObV0iUUKllluTowMLp54lapzPd9PnPeV1a0D/v+oVGVa/3TyngAOP4C9pa8Cf7pZnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757102394; c=relaxed/simple;
	bh=sDVeRAy75XmUa0CMLLt4kGlaexPa74mnZYIU2w/r1yQ=;
	h=To:Subject:From:Message-Id:Date; b=L02Ixjml3Sl13hZlcBpZapBXB8uE1IGj8dcmIQFVN6WymbvblheBiIk9gr/ESsybOzfCWvWg6J54jUsbXCsFM5NaIvU7Jn7xeLlGEfBkouu2p2HMhe+Wb3R48TQjcc6Xz4RW7xKi8w5AXynXB/LgmPceYYl+WH5ia4yK5YYBaOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o457tIAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o457tIAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E873C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757102393;
	bh=sDVeRAy75XmUa0CMLLt4kGlaexPa74mnZYIU2w/r1yQ=;
	h=To:Subject:From:Date:From;
	b=o457tIAXU6+Y4crCR3EtUUkV2K8I4gVq0ACcNw1IYgTuVg+QE5RNvdMC+KZ14DWm1
	 XOMrJtgcTv8qMLTqIOGgUztsEQFZOlMK/FTNIor4ffKhwaiqQix2LSun7QYbMDb0lq
	 4K6qGYlL8cKXhurouG1KW1Y4kciOeoHQ7tmXOybyg5Eg5cI5OQgyYoTQbeAylTr/vB
	 ND2eY8HT+kPiwDGWGw/3Y17GB3j2niiD2mmbGmDOvl7C02M4a0x19Aymew7owyQZrm
	 D0eih+a4iGb2dLWGuyv5yM4Pg9lq857SIKX3tBLoc5AxRqhIvz/wq5PK4elNJtbHep
	 MrF/DlKe54fAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E333CA1017
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710239357.23493.5279918251172074418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cba50a3071f2ce033b206e33e054a3727e0287be09656d033b7792ab4029d0b
Date: Fri, 05 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757102393
