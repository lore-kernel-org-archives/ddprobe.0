Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3347B3E1
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731068154; cv=none; b=P84uTV8uuYGg1bkEEkVvofBJBuofuZKCYifAkMoDKGpHuyJc3wnWk3sDOo4m1P8VOGHFE1qXHZTSeQE+/Mu9FSWP9OMgHo+xfjEszmPsa+w/IUXEh1NpTwDiNZtEpi5SllM3m7x1o4JyAQp9ACYwIclOe1Z3faoLe4F3emUILkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731068154; c=relaxed/simple;
	bh=drcvJHwZz20DLbDlXkRVsJqR2ttvIiNHXT1h1mySg8s=;
	h=To:Subject:From:Message-Id:Date; b=C5MF1tuSlZlcCINkc4c4dXVFrAx6c9TBLdaWvFGZbpBbotASMoEfA2WrDSRyhZtW5dSs1i1vlCGlnbRlW4de10O4fImz9FdPDPbTKWpdrtUbTkf5hLKcubTS6FXEKzSfaXHVuxbhYM1Z4DQfkuNSq6hLBLpO5Qca6JaTvY6/fME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd4wJso2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd4wJso2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC43EC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731068153;
	bh=drcvJHwZz20DLbDlXkRVsJqR2ttvIiNHXT1h1mySg8s=;
	h=To:Subject:From:Date:From;
	b=bd4wJso2eVXEq6v2wF5p3iJg3t5JwgyaPEikG5AYi1NX4/wTr1C5umGQ+jsehkwJw
	 Rl0WMKdpzcC3iTHS4y8nRAE8D8PrCyNGTeBIZhXjEwv8bx8NsRCC6io6G0l/J6CMVZ
	 PB2I3Qoc/RM+h7mGQwVjFA1daXWWwXhkUV8MGyYRLJZteJxGRQFptpymGaOOJ6o6hk
	 0OHfA3R7+dNmwVLSlWEq8M85qn2QANpx7nocNjuOVTnhBAcPUMEpDXMU/RRM1K4Xog
	 KRQycs5MYqSJmJgwOqUafps+nMCmX1DOQdYinB24+0RQnRCZ7m4ck9FqHZ4gDR7eZX
	 3Jlxy5INKQeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E0D5C0C1
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173106815360.24263.5773194869530929019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a48c19fc856cd92293e6facc3fab8f3e71ac0c731c803e5639ee6e428b4b39
Date: Fri, 08 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731068153
