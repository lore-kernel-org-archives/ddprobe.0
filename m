Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41397AD5A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758517794; cv=none; b=V3wkeUd2NnIOtNhAogjZODLtI768KQFry/F7pbuBQsNEBkCY2KvDLAUvxsJgS5NajyA2Kpx+jiY1Ko13BHAVuEQTX/3+Z58GPxxcTz2PO9Q7gAOl14KpxG0Rvhm94Mqb8Kx/AyQAfMH5+femXyqfa6W0A6mVtTeBFdDjv9L6eY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758517794; c=relaxed/simple;
	bh=lrND6iu6YbMRiqgtI3nFJsP4IE7VAu6evmLZxBRqgRk=;
	h=To:Subject:From:Message-Id:Date; b=JdYZKkCUmFlGfkxTAwt/eyvtZI4R/HJ+6MQzhHT1Ah843EEOaBQROCfJi+DsZnmuojvcTChAIoUarVT6E1FXQtn7Gu8BIQmpcAFEQ1Fk+eys2c2LAGV8C9HasZtL+GbhWOH8in9ZPw2yL0mYTJGxaF9Ql5DNTeo570KeVUqPs+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owcPJEu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owcPJEu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF252C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758517793;
	bh=lrND6iu6YbMRiqgtI3nFJsP4IE7VAu6evmLZxBRqgRk=;
	h=To:Subject:From:Date:From;
	b=owcPJEu3V5Vw2GreOiQzePTACIIMQE/bmeV6yfS9ZUcn7YZPhSCAbas4tD4044v/o
	 wyPrHDuPV0A+enmKQmgSNJeZ3A/C22hhHlgkUqbiAOT/nTU2WeUrD99XL10TMTWI9U
	 K6Q8exCDF4d+VtPR3j+NDW0Y31WF7yGSzDkv8DF1gEwdXT8G3drJ2Gmy51+yOdiaey
	 d0Z+vvCofrLiFx1lmQaidIYEF8znQTvjHcLCy6c0xxNMnGdIzipTlrcX2/pNQcDyDz
	 bMfoxnmIMRQ3B5GzZM8I1VfTDYNerQQIurCOZT9um52dmabyU1BFUJWG4t9sKfQglt
	 BOZ2rYce2ADTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABA3CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851779358.28250.10545089997372441340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0721dadbd869dcfc4065e0c9743b1bb43c51ec179cf9c8be0e3df9fc9fb3c7d8
Date: Mon, 22 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758517793
