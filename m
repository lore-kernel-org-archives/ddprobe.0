Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EAA1F4616
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753964394; cv=none; b=IRd34wq1jZMGGmoFQRYhoPT0wUbbhDB9rMtM1dTZR+cYxYlwVrtB+fftdi6ms/yunGTCaEIMHEg1740Vsjs3qn3qKe98NkwZD88Bogh57EFdRLTPz9PZvLKzkQ4/akHFeDuhB/SobvJCVZ9YUqc1XHc6FQDKFmckVD7h5DX9Cyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753964394; c=relaxed/simple;
	bh=Ra71FyQk5WEW/AG84U3ZW3c3cI7qjzdJnDPchNTMOrc=;
	h=To:Subject:From:Message-Id:Date; b=c5LqZYl+wJ1dhoz48J9fsOhnNbhIK1skVUTn484PEhepmUaGHJFodYzc3fhlrAML2KwArb1YuDn0+ZDZhpusnyO9TasWGszeoYeHJvsdssQng2sZVbExJPhLQlvv9pYK9+XFGUNqReHXuXrAjQs3fiZenMkMYCFKI0gWUi/23H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWGykNms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWGykNms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0700C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753964393;
	bh=Ra71FyQk5WEW/AG84U3ZW3c3cI7qjzdJnDPchNTMOrc=;
	h=To:Subject:From:Date:From;
	b=rWGykNmsK8GBr1dB1jcWIHGpVfcFOxyFGr34LYvLTnTHFLp65zVmF1agGmU7dLTLS
	 iBMDQ5zLO2CARqHeSqHOlGRzXszNtZhWN5/BFQj6YrcG9jbe5v7pMpSygXlJugfWCv
	 rgbMd6xIw1K6hr/PJS9uAMg0scVK1x6+wXdZ10DE5B2wHTQh7UfOD1q6o/1UkjGejL
	 IQL6bAsEpHkRg8658subWkvdvXFqZf/0GS+dnNFfNXdnFu9PNCwZVew4qg5oWRr7P9
	 K15pex4bkUyyx6C7k+3lIJnDeytHUIyrYizzTr7XlHgFvzY4SAArui5rYaw4zVP2Ri
	 kvNGP8RV0eHsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E47FC83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396439357.24126.2804409280815575036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3790e8ab801a057b4333bf94c0fc99884d231e1611363e20843b5db651a03618
Date: Thu, 31 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753964393
