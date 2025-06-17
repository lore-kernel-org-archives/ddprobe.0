Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149A62877E1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750190394; cv=none; b=PV59KFbMEV+Vpqq7iQPa52S+s35f8qUSd7A86EETPsPl+nkYzeUJZpfMW5kwZsagW3EnOodgrM+yWGUc6tmJBxMCeSOyxn363JZP6z1WNoIMBr0RE30HK2+3MKZM04/KsGAHq1qu/nnN2N45SPlY/nSx05pArCxKqm9ETDFLsX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750190394; c=relaxed/simple;
	bh=2ZRpoC0cd6AYFNx17x0y0eimh+hxRyhyZFu+/bq+IDA=;
	h=To:Subject:From:Message-Id:Date; b=N9uR8NqkCkw3bQu/XHqcvNn8FtAa6T5V3VSEO9BCGXL0qVpkElKfST6xwcttRtCdJlVgIiMa1ieH2B1/O+0HoC/lP6Q83/9SS9W+OaJyDCg29SrQTgncWzOKO9iVIqgZYmqDOyzDTX2Gb8MGbaDLxx0A2ktqG55fywd24YXGONs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVBJKnlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVBJKnlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6ADC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750190393;
	bh=2ZRpoC0cd6AYFNx17x0y0eimh+hxRyhyZFu+/bq+IDA=;
	h=To:Subject:From:Date:From;
	b=FVBJKnlkxP+iR+PRaA8PmfvH+pf0MC+6P0YjFeyTsZj6RislSIE8RN2dO2m46WpZO
	 d5W+6Z6sj1DZfl7YCn1bzoxkJR2zbLu6jSTxsLFlR/ma9ppKPTqsSNrwDK2M3XIwR4
	 o8u4M/uAVN1eD0s3H+PFuc7mrbuouo8pilsTp0THskGb3hnLgRkJzmXAg9hHsgqbjD
	 RcUnG8Y7VA37Cmwpx/JB5w9LCU+C36J7hStaQLqGS90n5Gni+7LlC03KPxLM0G+gu5
	 ohELsMfWllPHBZy5jLhZUvDPQzWsETOwi5tl3SCdg1F4ZFFzr5zaCepC55YGjq92mu
	 h1cg3jk8uaRHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FFC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019039357.7605.5622429204831306888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1170fb5ebec3bd42ee09e92f18d5067b658917b6e9e1693c049a95554f7d6538
Date: Tue, 17 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750190393
