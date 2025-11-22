Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C009F2C21C4
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763803913; cv=none; b=CtFiQ6PdGLh4kzHaIOI9XhstTwNwyviRLGSPhhYW5c2ou32YE35lTsm8bRefetFXtbQm8CiizenKqC7lfOGxwpNb0hmBKa9esjseiWN0uQb6LSZVwW3Lln/QmPrXH33zFpfDa+8OCdonpipXEKu2aEmyQHq93murz+0K5xEm2aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763803913; c=relaxed/simple;
	bh=lUHUGBWhZtvYNZqyEeH6BVG38AWjCPcSt+T8oiLl3v0=;
	h=To:Subject:From:Message-Id:Date; b=bsQs6xgrU08rr1WttbikbK4WRAXh3pVnCNluPrDO7zqnNQXNbmwe7TZFRpFW1ABm684jZav+t/aA2uRIqD716OkFZsnXjI9UAuEbxCStDeJH0IMQT+0QHYJi6HWJnJ/R+TQu6zsF3obRU+iHBgQ+kbOxai3s9NyAgzWxhCh9hoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjGAio1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjGAio1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00E2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763803913;
	bh=lUHUGBWhZtvYNZqyEeH6BVG38AWjCPcSt+T8oiLl3v0=;
	h=To:Subject:From:Date:From;
	b=sjGAio1yMLQ0eeL6hZDRJEXMZF025d00RE6NLnaLFCqISlKxeeyseak/k3tU8vqh8
	 KRdBoqBtlgRmDiePBHbC0ZF1bAj1PLfzdEXb0wqsgMbM/H23TpEm3TZl2woNuCqTBA
	 f86bu1qlC0WJJFl7CirCOpNCuAA2ZPHmZxPhKZJG36qXA7ZpOVGt+3dGvW2LJR2tTv
	 0JmAM2UdDpcce6lLaoDDM70u/PNDH0Pd3uAYeX8+Va0EkBnfvThUXGw5htvVzl+xMB
	 EyCBIr5lp0bOXLsBSIO5tzDQwgRBNb6KRqZjQ0UX8P5V+WplNfCNno7HASja3mYj2n
	 oZW9/WYTIpvXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFDCFC521
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380391358.28328.5105581216520554068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d7aa2e1de6467357afe7c2bdc3c7549af3ff9e2ae02f846f0a0cb78e0998a6
Date: Sat, 22 Nov 2025 09:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763803913
