Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E5579CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765513974; cv=none; b=gRq7bhx6ZYdmNCSUpxTJw3oC0OaxLkmHW58665059NgvazYFCtRAtgn7q344CNoaetdff7aGpWGsntZPveDC9pQyoxEs+T8YKOZawHyWIcM2Iz7Hq0mQ9AMBAXbOEaZWu2ZuXR1Y4j318iHs5PjEyHTqAWym3bspud8IRxSPBv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765513974; c=relaxed/simple;
	bh=j9iyIdLjB4gAc3QoX8WpCSFHSIAzA8XAgmlBYr5EaGs=;
	h=To:Subject:From:Message-Id:Date; b=UuAcotn+9nyUqBm25ynbJcLAM50pbQC8efuCXA7EkGp3wRlAEPxfDqn7w5jsANoDHSoqSj5Pq8ANvTtFa50xLCpQvsA2AFyewbCSqTPnLefvAE7HCua8Wi9dX+tKxdhRqTcgaKgP4GJrZu3E0Cpa994BAof2R0RNkIIg5D7Kowc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxTom4WX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxTom4WX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8FEC116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765513973;
	bh=j9iyIdLjB4gAc3QoX8WpCSFHSIAzA8XAgmlBYr5EaGs=;
	h=To:Subject:From:Date:From;
	b=RxTom4WXFhkPCCzeQmUxP88aa2JcuZQDFDrr9XPCbyFLQOwj+DjrQFaJXQrK6DK9F
	 wxE1WylEmRqcS8tG0Sfe48hcE+k/XDKyRdCQU6MfMqlJShvA1o3klGeMqKM2mJ9fcc
	 BGYM+lFuZXwRgV6O7XILPw92SpqaAItlkAqlTNy90GSlBDm8kftHW03X2PTT2IgpyZ
	 7dZzIHdAg5V4tNmzZ11XmWZEzF2ePJEZ9ZTKfE9BGPC/66eQFu4UwmjJ9wOOajseBX
	 qXzklnKQOiTp++uN05rbRR+0HtmGI1FAYUp/y46VoYG0eE6exbJJEj+rre+EWHYaZX
	 50Ybxx+PBIjXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AD2D4336C
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551397360.7814.15055133294478361502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e13831b44aef16d1d7082cdd09e18ac5d0e7e5480c42bf205b77b8750443cee
Date: Fri, 12 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765513973
