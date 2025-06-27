Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAA628D8CF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751063394; cv=none; b=METBagkMVWMJWURMDh/FSYqX7Vb220J7/DT/xps3QagXyrcJ6ugICisHo8z5V+6ZdHUr326SSEec1orTqnA1jppW959FTKWRVpKqZryR3iXops9mHtgjmMyX94e+zSG3IdBs586+qwAU4+cvcnc/l7TA/XKogBdJrcwGSa9GBq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751063394; c=relaxed/simple;
	bh=GMWMOe+wH6H+b+QPQ4tIeSh/WUq4R3UNW9KbI5dNpj4=;
	h=To:Subject:From:Message-Id:Date; b=EwW557VqnGt6fnN3RMHyUKCAX3UVjgOWOd1x/bYwi+c+m9VQq0fmCayJyemAX8xmsN08I/sP+BP00tPK1My6q+2DyPSFo3Nb8ndOMWWy1a7pmvjUBvMXMST/rycEx2IAQkbcHX8aG1joTEVP3k7RKbCNNWV0LQQSf/thYi05M9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNLdF1y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNLdF1y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0BDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751063393;
	bh=GMWMOe+wH6H+b+QPQ4tIeSh/WUq4R3UNW9KbI5dNpj4=;
	h=To:Subject:From:Date:From;
	b=QNLdF1y0H2yO3UBPsNzbWfvA+QhCX6NGpdf1aFxITmYrpQr1QscuhIF3qL3I7cZJm
	 RyAfFfzis6KDkqs4exjc7QjHB4ff0V9LM6oPOc81LxSHq+nUE/d5+FE5iLgWSw5CIw
	 rkC7mmcb78wLsK62INNojlVvqj3QeJGo8jeiQSfNkg8RgRAdGmza3opJuBtHVUCz1B
	 kFiNq44tDSeDnoAsSiSIjVWQEV8f+fy1DDFu1bN7AJLA0pvMJUMVK2PaN7GuSJDBZB
	 hthM85clkaGYZVJT0D6yrU0qQBsduzy4x7RHV+3yva7wLrU69cI6IZgg1zo63pIAsz
	 zkcWS2CDPRsZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96827C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106339359.4491.1451461959982122205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f16ac050ff05d4140385d1a55de5e4432ed69dd963d05f83b1fe5501339e2e4
Date: Fri, 27 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751063393
