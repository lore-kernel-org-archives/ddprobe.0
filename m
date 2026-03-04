Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EBD347DD
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772585694; cv=none; b=bzsrHjaY6uwvIJHLcj2+6bAbMpWvj/bweMUQAc+lROmAS4UWSdWVnLj3M8AYmEW8Xi1l3iRt0Ef4ns0EU6k5VkxOyLaiUfJHbxE4QtC2SsBgIVj6TqMU/1nq/Kt6s5I5P/tTTAzbUaCXIzNcYNAwgUDTsEK/3lZQnnlw0XAyOFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772585694; c=relaxed/simple;
	bh=MRy1I0Q2VQ2dIP+0KPFK5Mo+6j5+anwQoC/Uqxh52SM=;
	h=To:Subject:From:Message-Id:Date; b=KnVvwn/CcpCIt1HyDe1GAHIUPBNhLDv1sqd851KvsUttlhkfAGkLq1HZx+KD02wZoVmGpFp+fsRhy4BPEnff11KhRh7suB/TMa0E/ZcAMdOG98HYf0BqvndPCcr8OKRDvmk504Gl5j6R6X2egEFFciv9mbI1F/tKSqZS1z4RAbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQOT6DSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQOT6DSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72ECC116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772585693;
	bh=MRy1I0Q2VQ2dIP+0KPFK5Mo+6j5+anwQoC/Uqxh52SM=;
	h=To:Subject:From:Date:From;
	b=cQOT6DSi6jWcsk3IP+5OoDu6t6fHKW85wdEaG5R6Kd6sEf9O0ufjSVQDtexl0kd+2
	 u8e5tpmLG/krMY9XuLLLoBfPnM8oSEyyl2Ik6izr3x/6xYf5LCiy8W5gvdRYyvg/UT
	 T5I/lXBAPwW6sEfUTacPG2+K6DJLEOQJG4nNfBolM3LIGiGckzYMkkbNffHh+H1QFO
	 xG8kRpNdnE9gY+iQHQMLXePBit20VKzOKBsU9jei2NjABbt82ZST5kyuo9vstrDtBp
	 /EHx5ZF0GeY0D9B8VhxEW59T3lUaYlpmMgAe6w2/5Cmg+Tj0peh/Y35BjBAuyihhu+
	 KLjnUTk7qnC6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A329EDEBFD
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258569360.11247.8221487841314683611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4cd4d4b53d33aa9b012ee3e88d287d8affbb8e19b3f65401914727415a06474
Date: Wed, 04 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772585693
