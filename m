Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1911A12F5A5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763778714; cv=none; b=J0O318o3fbeDG+DM8na05IY5hoEmQnzXrkLERjXwoauP5y5TKL+yVGrffFtkJL/JzV9YVaLGcUZUHv8dpGmUCrg/IJ9h4v7QPBicxd4mAS84jTK3sg8hoZy7VnPcMSkwxPyYPB8w7W87aMg8ElIp+Yz2GqP2crigNrlDGhz+k10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763778714; c=relaxed/simple;
	bh=P7meUnt6Ynf2rWpkb8ylJ/QnYeHZTnGcsGBkzcqW5dw=;
	h=To:Subject:From:Message-Id:Date; b=le0LWqnKWntrT92UMXgZe48ZqYA1MtqcdwTIKM1tkoSrrgVMPN47wDhburab3scdtRlSuTYyqDs/yJBNzj4bOq2M0EQ8Od4Km5w12LQDcv/ggJkDYRDNB9T7aRG1h9PWz0KV5qHGhu8DwWHusaY4O3gOrNU4283JsgYGMuVsqt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enpHVPyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enpHVPyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4294C116C6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763778713;
	bh=P7meUnt6Ynf2rWpkb8ylJ/QnYeHZTnGcsGBkzcqW5dw=;
	h=To:Subject:From:Date:From;
	b=enpHVPyk/3Qrkoi2xq5HcvfYthfHHJGhK6z/5vusT+Tddlx9auqVvdEvuvlzY32aC
	 e0pvAPGpvI4YTZ1DfGAmyf97UZyUA+vUp5vvBXbd6vcRQ1Uz+78yffq3IblFiohx7x
	 OYCjVGq9nkawuEwPD8oZvi/yam/eHjWJ16jziMPrXWMh/WZBHqHrlH13JRp9OXQ9up
	 YHeFa38oVuYGM/zlcaN7lXuzHTrOwkcnSOaGAwyTX2behLS3ZumrklMOXJjO9T7mNe
	 XHERwVMEQx7djdM+9lYmqsQT7TK2ncdcBJ3ZNZy3tQXshNfgrwkl8QrZqcrMXFCWSf
	 OLSpXty6LzgEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B8BCFC516
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377871358.25319.3130748970438314274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba509a305fb642bb4ca0bb4eae389a0752c609eb7287d58c3cfde9fa83fde7e
Date: Sat, 22 Nov 2025 02:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763778713
