Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B722D5930
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758141595; cv=none; b=YozdGMzPdbbQD1JthvOmv+/MF8+k6IiITy2a9IXEkMY2UCiQ046Ht1Uge4MU44OmX4A3b1qXsAp4uNT7ElBjfuagZI11dgJ9if6wGmxnY3mIaUMjXZ4p0DX4TraZKRtGNhBEqnHoKLgAL3/ohKeRZ+B4vxGPMGXcU3otdNGZq6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758141595; c=relaxed/simple;
	bh=YLUH4dUnhppl5B88UylSOlH8GTEx8P3W4FNXTRFfSDo=;
	h=To:Subject:From:Message-Id:Date; b=peVBSnd6aTScYeHZoOd3IwBVOAMI/4pU3iuniVKIeINlgq9Y8ic/3sLwEiLuEJP7ZM+3d3C0r/rsfuhIy7ZT685a5C5b4hVDQ1rgLXM5JmAjzG40GGCodhgh8nQi66bnOywCe41oETOEIdWpw8fj9lC8uhh0ptnM/MdSII24dRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onRAFvJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onRAFvJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA959C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758141594;
	bh=YLUH4dUnhppl5B88UylSOlH8GTEx8P3W4FNXTRFfSDo=;
	h=To:Subject:From:Date:From;
	b=onRAFvJUh2BOAPxtDBoqUQ+1kST9Bypim1Jh/ZMbVXRuxddKY7NpPEDRkpbESv7Mf
	 nrfuCDjCzuhvx3q/FCBTFwM4pBl0SwleOHdQTAlL2v+h7PVr1zNhHU3oP/4e7TI7r9
	 1OIzKLEtzLfwemIWjpSp61juriJGe7n/SCQmj0X65g8QlAl0LD8c0LO+KEfgzYfTH7
	 rdYqRIpQ3olVHEKzx8Y4wxgdQXEDImSsQpTkcLDdPS7pv0hmPum1gB8Rg3xNHneEaB
	 zxYlvr4big1TxrwjRr5CO4/p9UnGnttlWzBWQ9YUStAX4B34YBEYINJGS8bsBXsi9i
	 rH75lljQgd+Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD5CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814159359.10609.16869307170546410052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25fbe01c38aa1d90b88bc27ed303927a5b096db32bd541dfaca0398bfea255cc
Date: Wed, 17 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758141593
