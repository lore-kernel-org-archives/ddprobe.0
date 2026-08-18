Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43310344031
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787055034; cv=none; b=o0ESs3KYQzxzf0HE1VTE+fvdnZBv76JfSylO7l72FTlx0Ycx2RVTaOtnZmx+NScZipwPr978VZS/sDx6jmX2mYc9N9ZLun5BQnN8Y1KZ/lvuputN3mGQvObYKgCgVA9nfLl3mHSWWZbX+4ms8tQsRD3AOCO1mX1CUl/dVWlqKEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787055034; c=relaxed/simple;
	bh=eg8xVdXTgeNoxlKAV5m+yXrbojU6ic2X2lDp2hzXaYY=;
	h=To:Subject:From:Message-Id:Date; b=HqKQ0z9+ZDe7w/FnVtziPBy4ZwGJat5PU0Vfl1q+BkIBYkx/E1LRrYCn+qm55mHfODPWEDpB8TqedvGFLyIFblwxcixobh2Z8rX+x7FUE2NzSNQYqWGb/zs0YWH7FE6IQoN4DYwp6pRgbui6efO+H0vu4pHTV9PDrnX2JRmALRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tt9WGOmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tt9WGOmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35C1C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787055033;
	bh=eg8xVdXTgeNoxlKAV5m+yXrbojU6ic2X2lDp2hzXaYY=;
	h=To:Subject:From:Date:From;
	b=Tt9WGOmwh74c/VrCQLVjajW+B3RxE4HeD2NxGT0CX4mkQwNng3t/OHfJ4P68GQE2k
	 3ZSCeS69lzx+HIatXZND3T4mSYNWWSwLMDTg5sXmOMYxOEIK3IRoqIEBAGiUqT50kC
	 L/EpAuecPf562dwJQ1pmztSUPMO6I3mK/FNAm7D3EOTa7f+L6RCsf+Y23F0GLGIbR8
	 v28Ak9pi/W436ORxoDg7OIXaklzhHEAuJy2K5zR0ofmP4bA81YMXiPfNZnAu2OfBpR
	 PnZBqOkdB/Q3uw4iKAdlkivpsuYRNa0dCzqdmkHPn5KxmKo0TFPOovCL4FOz4Xz/fy
	 HHFfRW+rL8Pvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4DFC5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705503369.31784.11941124102770619925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a2c3921631d59eb6d1dbc869539961cb648d78e2c48fc884e063d9e3ef56fd
Date: Tue, 18 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787055033
