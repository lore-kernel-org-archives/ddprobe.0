Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA8245C14
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754311194; cv=none; b=Wvf5RUdyuvyr6/d+i+xyoFi5C5bMH1BZc7bDANHd3TwRAOsuYp6EMbmxXSQ3IoT3c68FvKKPSvjlRbwAFDU72vyQdjcedUcJmA28s3lj3EvFT7Iib9Fu16Tz9xYGiElnarBV45ttVAYaLP1a8ADc2WzrGFgtnQbyR4Bcl4XcPB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754311194; c=relaxed/simple;
	bh=UnpPeNq+O9i5O9dB7kMcvmrPczkHztUG4dJ0wxK/DrU=;
	h=To:Subject:From:Message-Id:Date; b=TBgbiEaT47RwHMmJT4hWg/7HuiCxCPybt2jcYIfWoNFYcEcLrXEjs+XOkmPfmSYOaRLSI7bC8hJPSlkqHLTxizLxvCFn1IOVbFyQP+7+GQF0nXEn5XRaNDJ+nDD/IBTXlj+EfE/3Gt2t3L3fLo1N7lg5K4CePJ+9xGkkQq/FIi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALWQd/+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALWQd/+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E47C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754311193;
	bh=UnpPeNq+O9i5O9dB7kMcvmrPczkHztUG4dJ0wxK/DrU=;
	h=To:Subject:From:Date:From;
	b=ALWQd/+f66eDrHT8t4hCzzUiUWooKpMbVNAbaEeCykgmepjj0pWtsNCAfZm7oeGE7
	 vXO4nRVyR4hV+7ID6TaTVEkaW6SwmZQ+yA2e96s6PeEEkPeMsQ/hk8oF4dN/iyqGeB
	 wDHeS5UqAMk2NbKdJFI94eVnxhjowxY58Lj9qduNVhqEIuQECk2STk/12FfaS3qouY
	 qBivZ2MTwyLEFoVJKrPmbO6K+ZjxSUWqAnJMDmoCg9WdCgzjxmJKbXrX8LZpEwBXrS
	 nWTZoG5/BtJjunc/vcd4lZHqxApe40xvMlOcpX66fkm+YWuwh46SlS6WDlTAfd0dwB
	 4GIod8Q3bpRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95604C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431119357.8322.8409862685427334193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30457f2fd3caf90d97a345f88ac6e3ac53a3c7ba7dc7ff76ad51048491b7181a
Date: Mon, 04 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754311193
