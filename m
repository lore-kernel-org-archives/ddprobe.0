Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D82822DFBF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742508594; cv=none; b=PGSWthOrYgQjh+7XTFVom5jtQyLSuMHgKzomg8JnSwO5ifCeIfX8SscQqciHNhmGpP9KJhWI59XgftJ1GdxrKwMDuscz3wUjjdSf01vmp90DPIvh8LcmwyujP72d7+CgOBwjQbJcHyt53GV4dIZj1zOgjCyXs9hwy907vxrFQ8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742508594; c=relaxed/simple;
	bh=xciISnRrhuW4DVoZ9Q0QRv/bsMbnP/bbAi8BqXr9NhI=;
	h=To:Subject:From:Message-Id:Date; b=JbKm+woDLSrkNNUZ/e0W3740+gBDhWm6haVM/ogY90fBPAMeAI3VruFNLhXysirCBJCcTWtHoG3BzjVHAyt8LM4Xljgb+Vb5N5nG/CLhqkDISpRYT1BGhkM1PMO2vYkAKOX8m2YmYp2kQ4UODancvHGBwjxktYgCtjPrQ3etLg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVO6SRGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVO6SRGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2580C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742508593;
	bh=xciISnRrhuW4DVoZ9Q0QRv/bsMbnP/bbAi8BqXr9NhI=;
	h=To:Subject:From:Date:From;
	b=FVO6SRGtsihNSzGGiL9VpYQpdeKkr22QMyJJ+XrPHkZ3F5wTKPvyrLJWuCHO0eOAs
	 ExfMwWXotQJvJYUxY2IG7xav/tE9C/Uo/dmTvUQq0wzMQ022GMTlfxjAPqXAocMtgf
	 U9KVsMr85ewmlQve8hRH3hwYD1HlM4TJZSbnmLDAsJ1DJqa98Zwy7sIXUSe9CIWoz1
	 CGiDdyRn88HAXlkaN5rRKUsqIjNRWy+DCrSMgdje8elIhXyA1mYW8unXhvG3izmMpj
	 ABgzA+0YgPrkl2H7TXXl3ri2aLB/un47qh5w7brJPBamfbqc8/0jY0Z2dpeGglmQrk
	 deQsttFA93OBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE93C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250859368.18227.6619068710935059699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271ba89b9cd239b251fc1fc83f84d7075a83bf422525f6e70bce154b2505a01e
Date: Thu, 20 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742508593
