Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D594A933
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724363154; cv=none; b=YfHSJGNKCqZBpcd2JoUavmLrCGy9fwVHyfRdKzQWjCQXi+GyrYvKo/0p95cGB/08bAV11RZElY/UyyBaY1ey6MaNlLoubdBmPy0siPf/JNMvPhdWlSrmOKwX1f2KkPjPNrZaERm57LBsZVhvHblwW5ce+rtv13r673bczUWqvuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724363154; c=relaxed/simple;
	bh=XkSbIS3WHEvkE7zrQnKmBv21Slx6RsKszub03AV6h5c=;
	h=To:Subject:From:Message-Id:Date; b=HnhH3fmjQhUe6uR7J/XbMBbTNyv2iUykrGOsx76JQaxbQJv9UjM0o1qaGDBVfVEDSSYadwpng2YGKiWewf9xiGiNyRv7CSEVD+eia5EY4/sr+gWpsLEleb644vPZPONIpyOfjKVS6LGpyPRSEwVm3Pg/7RfhPYo3J0dAIPDvN+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLDpdyyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLDpdyyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5733C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724363153;
	bh=XkSbIS3WHEvkE7zrQnKmBv21Slx6RsKszub03AV6h5c=;
	h=To:Subject:From:Date:From;
	b=rLDpdyyWYDr+wD876A5QW6OejmVRG6nVI1AGl/0ubWU1MuUbOmKAhonPUErJEmwcH
	 X6dHd4acWBhcTdDR6nKeF9bvJhlyQd6mYF4gKCYHqF+52AuyFi+vx3QJjkhTL0MOGE
	 DRIJjTSUEocr960try4Zk/vz2TR1q940VGgs1A2eSuUOmrU+B7dnpGJm0PE1s66lIN
	 wuRxTF9w/IwDZNcyO1Gii7JZcZfgFms4D+wIOSRn/RtUe00OX0A0Mz3fmKjVwp/JgI
	 puSDAcc5v1kpsD1q25bFWhJr4eVtCqFyQvgW3GgQaW00RhqjbLBPheXoVNXPlK8LMS
	 egRKfPdB7ed5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944D3C5320E
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172436315359.19660.9489218503001008510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0f25e8053095d48d697ead1d5c9cd463bea196eb6a3061f1bc6497c3cbbe26
Date: Thu, 22 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724363153
