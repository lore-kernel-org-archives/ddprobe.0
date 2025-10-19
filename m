Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54AADDC5
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760881193; cv=none; b=LD+r9Zr2WYDZoO/Gvgmo/vmRfKJuuQxrqBsYTEgyTXkl55cQjgUl3tKB9sU8BVLYyPl2xpYQa1Bd+hXKTvVQLLRKO67NS5CuCEEPUHX6uWqyPPS2fbC1GguA941mjR3GiKuQN/DM4OiDlNCPYHzBaJmVo5Z9p0AC4COFsFRoB3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760881193; c=relaxed/simple;
	bh=veKubkcz9cuXUZen3QeRVtBAqFCnKO9WiVnuQQtf9+A=;
	h=To:Subject:From:Message-Id:Date; b=UpF87m3dc1MRLV93W0GpGmwBo2xuwY8D37wIPhQIKSiTz+8N33t5FaLXt43mFn3ViNSbHU76jy5P4D13/O0y/INgaAcPzwGYGeFymkxWHvg+Qf15Now+8mK8vNxzd9qR93UJUdM2q3bWKNo8sLEBjNF4SWDDxKX92i8d/9c7OaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKzN7Wfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKzN7Wfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25DBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760881193;
	bh=veKubkcz9cuXUZen3QeRVtBAqFCnKO9WiVnuQQtf9+A=;
	h=To:Subject:From:Date:From;
	b=bKzN7WfcsDsyvf3WqS+Sy4GTuaiEZTFPQpuXJzSeA+bGCP4V/DFc9oG0QRZ4fHllv
	 AkXkoqKghqHVoDdQQblJC4cF/phNDn/9ZfQSy50CyAqzyGCBqfOXJ5S9zdYW1R4Tit
	 AJC59ve37BG10imBnFlqudXEI9+NWvuVkTsodaF+JAaG05ovaj60GtB+7bN7PrwadM
	 KcyWyXkI0SpHlHHUPS+R6mFiZepNZg1j/QtAzmZtWwseDLR26V1fZ6vjMAdqRmM9qx
	 YXMyZtDRvYG+R2YIQ0ids8bsxsW+xzrlfzrW5/MYHS2tolwsTinUkp3ExM/11+nt4n
	 sqw/ybanCqduw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90844CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088119358.7483.15210009315500630795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6de2c785a9588293752f4f74cd7c8c437a9c906e1bafbf1acc8d2c4c30ba33
Date: Sun, 19 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760881193
