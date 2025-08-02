Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14108238C1A
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754142594; cv=none; b=bCK0NKB38BxA1sNPqY3sjb4Wo362Bn/ABHMB4h+u434aCVpJy+pHQqTvjDh2ugZMbvd6eUdF/BYKVuBU8h1XYzB7w9uwO14bmo7loJzRbIzm1HLGLEPuAUPhx3yrV2rXE/yTTsxEm2CDe0hnHsXKtq1kjfYSVYlHRUfuJYr6CWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754142594; c=relaxed/simple;
	bh=xGnt36M3ObfsoDowoS2ZdmnSG/Z3UmKq/ynGfZDtmIs=;
	h=To:Subject:From:Message-Id:Date; b=J/S6nLdBBTBCcKu5FyGXPRDivPFO6OtMUTGRxB5upJxSfYQiUXDgJYq4BWPwgOy8uuhb4QZtv62wdpe/UHYRmoF3JNkU4Yu82AzFznycg+imUhneF90mtalN/j6ZNHXNSCmektAVOsyfokDjFigna7Lmv59hvoa7/hpHnEiDbAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8R0FMIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8R0FMIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E041C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754142593;
	bh=xGnt36M3ObfsoDowoS2ZdmnSG/Z3UmKq/ynGfZDtmIs=;
	h=To:Subject:From:Date:From;
	b=Y8R0FMImwGA88B7nEnNXowi0nye327Ij9xcAMF01FFYPOJKU2nzDjmIGBMRjoUANw
	 ZlQQfjOwWPh9GIF/pxqpfMKlANk3zrB98QayFnxGB32aoyEOhhcdhuDZj+bddO7PmF
	 q+eVynLlZA8hZboUok5jS0Zi8nZv+qpGhckgPqg+m2cM8UdmhZozk0eBXTL1HZ/u22
	 6V1c9QQqEhPxiSoUaNuDMB8UJz9PfFW8Jda9VoZDLZh0kdearmMikq1bXuMrSZQfyw
	 lcGLqQwxc1FK+bTipQNwfbMMwKbCq9K9wbjUTslMKNO/UlHUYkKw7wPML0acXr254O
	 ecPJCnClozK/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F500C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414259357.2906.18094967603570024216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60049ffba5310693ca03f6892407e629f9b4979c0313b6fd1a450fd5d61d50e
Date: Sat, 02 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754142593
