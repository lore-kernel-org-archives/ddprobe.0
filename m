Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FEA207A3E
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739429336; cv=none; b=JrQw4a96JWzAy1KZczQett1tneEvy01CoaDpvw3KWDewCoXhgtQNCJSOajANVCys2ECft83YhvdvOtT5wJWEpfAVqtgxsfG62LxhYfLdahR1jHjzcOFrwpz1VgGa4WMyAJZBkB2f7ThSnY5uZp3386yIXgnR2BoxSSms5iJGlJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739429336; c=relaxed/simple;
	bh=3u+x7ZFajrLHaU5EpX0HoDj9CF6JBtNd+Pywc1SJwIA=;
	h=To:Subject:From:Message-Id:Date; b=SkfTF+lJIQ991QC2sbRIUq3wmFV1Msg7R7+i9Cv3ObLohXeDH7HIa27Q7vQEJ/LoRK4ePhYg+L34tERPjQw2s6IZtupBtyRqdfvBxiLY9Ox9+xIKD9LXE5+0uvRkOAjOQRLOTe4HWaXG/Z8DeSFQZ9awhcVOyjeVAXlJHAk3Zas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7dlNcPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7dlNcPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0283C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739429333;
	bh=3u+x7ZFajrLHaU5EpX0HoDj9CF6JBtNd+Pywc1SJwIA=;
	h=To:Subject:From:Date:From;
	b=i7dlNcPObXxou0aN0HMFy9L4b+ZOXbnSSV5225hLmcfyYn2j+k1leiO+JuSzniKAl
	 iV2o236KJ5Kb6qprQKZLz9xaQpnp4WSKiX3tmvuVlOKPdaQ5rW+2IPEvEeqGZ7SyfK
	 ZC3R+U52i+M6310oLxGfGISGjipQd4M3enHWB5091uCLBqAD80tzKyMKa/TyMivPDk
	 1Qyo46nHSw5D1hIgwOlZ39B9vQvtzm/zp3QTZ22YIAjkjwYlBg1Ai9hHMLyFA6A6xz
	 1TqQWVcG+VCBE6MykNnnRZa+2zjTEmOEXWIKy50ducyxTaVFU5WdmONeq5dOkxN71I
	 MODYnNu9DUtEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C36AC021A7
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173942933361.9917.14495680970379641472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f78d9207d1ade406ba23a8a4d58d7d9b89507cdf1841d3f4d7cb5609e36019c
Date: Thu, 13 Feb 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739429333
