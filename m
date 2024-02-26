Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E9E1CD05
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708934297; cv=none; b=iPGzil3W8dh4jUgoP/++fpomcZRH/uqzcG5HvLIWQ3R7kQwGEwKPIqDBn7RQnKwGzGxhRmml9740ImbwOR3QPkEM7el3VEdaOEwvEdOOcCzn5X6PmHkikH3llH44Ya4MANyGVVTpMP7LYsUUXhJB0ZANh/O9lWUvq4NVUgDwljE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708934297; c=relaxed/simple;
	bh=IFPhECJf2JCTxN3BJx6xREwlIWj0lG2+AavaHvkLTvI=;
	h=To:Subject:From:Message-Id:Date; b=M4xcVFZ7nPzD1mLZaIe9ChRH//+aNkLHwUxkcxKLjcpARmZIUx3Ln8I6ircRZ8IrnkL92QZer9f2nSvUuyDewbcCfQ9GudKraVs9ft1TbolRyWiCegmLAaU0IRthGjD2BXnoneWfbx49v6IjfBzbElspT/BZq6s67Yl07zA6OOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSlBJRc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSlBJRc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BAAAC43390
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708934296;
	bh=IFPhECJf2JCTxN3BJx6xREwlIWj0lG2+AavaHvkLTvI=;
	h=To:Subject:From:Date:From;
	b=OSlBJRc1pCo9TP8zHwlwqKcBy8e4/+UY4Mha2DkQpDGtsN3t2g19aZkE2uA+EeYXP
	 2m5ICWBKngCdBQ3e9r86LHnayCbEJ5dOSUx0NytZDBsJxSfAp3h0Cp3ItEYWN514xb
	 LDUYWL+J1cUNb7BibV3kRdHRdBaNREuo/ugO3S08NqTts3AhAlrjvGq+S+E6qdtU4U
	 aRySZjW2fSmIL31QiLuYr+my7dStrA2xgeXMHpDlNMDqQ/Ah14uhpRERIm70IueXDb
	 D8JU3aQ1HMHHZCHnvHw47L8V5xeAROXwWCPGLx6QZEOAFpfxrNBDjjLf5Zgi1rHHYv
	 ApDzuYahpi4nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6231AC48BF6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170893429639.10858.4527400162660988182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc0a9418dfec0bbca1c525a8fa8e15618aea5babbea8d4ea227da3b0ccbd741
Date: Mon, 26 Feb 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708934296
