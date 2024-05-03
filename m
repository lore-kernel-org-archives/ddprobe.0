Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C2B18B14
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 03:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714706543; cv=none; b=reULP/cwSMgTYzzEsdBtB50hE/vNBrKjGFIcF8BjB+05BN2mc1+J/lDSyfhprRpy+KThyvQUUCZ4H00Ab+YE4b7y33BknuLF0ZNHBZqhwmeo/4LgAcBkDKjLMy4w6z/4bUqNC/vk3JtD8SXIKlSJkD1a20jRjJmHQznn8/8zHl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714706543; c=relaxed/simple;
	bh=mqG9uydqTfDfIuoDumVT3SMB4cfhGSZrVub4xq8VDOw=;
	h=To:Subject:From:Message-Id:Date; b=dLHCyvMPkkw7WeXkRJqv09CtSch2UvCmDEUjP/JpM5ffzhMkHfjb7f+M2LRmTKKdys87R6BngPPdtQ9luLyqwIOtFbWNA77caD+wzyMIOjwCXZqEpqn/pguXBuKbh97vsXUMS20ZmSfLDRbHeljjtio4L0XeI4bD9OEvEMn8omU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9XXng1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9XXng1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB99CC113CC
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714706542;
	bh=mqG9uydqTfDfIuoDumVT3SMB4cfhGSZrVub4xq8VDOw=;
	h=To:Subject:From:Date:From;
	b=V9XXng1nuYm6uYMDLOMt0xBcJHivCPPCAttTvylEcHQF0a5u6GeKo84Jg38BTy6ts
	 6L8Y0LYfvRwrXTG+WQ1NwXkD/AM0P95E+x11D/3kr7Q2z1kG/9dG7bJ2nQGF+zzBts
	 48zqRi16SRerpsvsubWfQAmqfdJsTIl9P+hnT00NauFN53MBNDdzXh6MEUIUQ3kOfD
	 6NQ4W9D4RwBGivm9mAbMAk89YBSgzS02OXC70Eaogcr0inLkNWQs6n9om3gEbyiGD+
	 pQiqlR2inlbSDW4geBf0Ae8c1eUeA3OZccsrJJInMyDSWgkeupGBmuKJLVvUkiF7cZ
	 Kis1LG6sxIKiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C670CC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171470654278.7550.17709809223815620478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9444369198dab20c035da63f81b8adac7df70991f73f222bc698182d8fc45a
Date: Fri, 03 May 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714706542
