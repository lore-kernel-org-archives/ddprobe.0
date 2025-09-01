Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C75C31579D
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756727994; cv=none; b=s+7hZYPDcScEkC5vhn4TAgmRWxeFEgLM3b8yJcccv5SFRQ13kJpBCLUlOoPQHKNE87hdKGAQbhQvo6NRh36ft/zJiJr5pHwxJJrb/fHVKDjcZiBVTm9MyhOKeCHQDC2XXvI0SGCMDz5OOXqROemQBBkGxtbIsnoNPy2GTx7ccBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756727994; c=relaxed/simple;
	bh=iD6iiSG2lPH+a54XDb4ioYnyZRuwztJR+q5dchoALb4=;
	h=To:Subject:From:Message-Id:Date; b=gcLLeTy+Q/oT2cykbYcB+R52SPCuddTwjRg0fzLuo7zJ4QDrD5MpPZlcXoqgkBuaZFWsSw9Y81b9JSFWqiiZFLBg1G0bgi9/Pq7FU0HEDxFMRBcBZQMHYndGo0J5pPyVXNvflqbDlhn0DZoB5Xepepdh01mmc1Pvuv+XO3yDmp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkktXsG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkktXsG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB1FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756727993;
	bh=iD6iiSG2lPH+a54XDb4ioYnyZRuwztJR+q5dchoALb4=;
	h=To:Subject:From:Date:From;
	b=SkktXsG0cjfG6boU2T1UNubf/aP9wtn1Q/SAhjBw0b5igt7fnHtTIVlZrPrHBgOKN
	 2lqYPyhC3Y6ceZgNQ8ud753HKL+EPAZOgV4+6pZXxIpH1PV/uM7dkxJVJyEVBlYva+
	 PPAH1HpFk+iofhloiCyRb+uH6MjLPXvCohs0L41y8NIPdxau6nf+vcuaSBwl4sBU5v
	 p2zjqSYhsAt7JjgKAMqs4CxrFttFle9DNmr58hoESMmbsES5tBhlBWuVkx4alKE3dJ
	 FptgINMkMX8SZJImeV5glZxhVmBXE1G71derzHaDDTpkMBJGKoQKXe0Z1Nw16oyaEa
	 71CmlLcD1fguQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003DCA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672799358.6604.12936595766087565463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8dd0b9df726e9fbe7833fdd0c50722bc68f7f18ad1ceebf28a8d10be68aca8c
Date: Mon, 01 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756727993
