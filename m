Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C744288CC
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750522194; cv=none; b=K/Xio01GdvzteUGpj9hZ/DJyPULlAlHObYIxDa89XV1skQ2qeQXeduxCqfyieA2QH/gT3cOcj/o/kFx6UbgmOuJhrJJLvRWlxC2wlVaNHYzhXTa+NSfDvSdb2YI1EDVf8f1qyuAfYFpIRN1vay4xABw9QLuePNzjxnk6upxUlt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750522194; c=relaxed/simple;
	bh=qXDeNx323FABFemQr+Zoyi6Ey/aIBwrsGiQ1LX6Z7XM=;
	h=To:Subject:From:Message-Id:Date; b=QZaT0bsK60X9DGwl80fL3Ix9/ZxyR9484RM/WUfqUsOeH3TSRY+h1HnFLUoMY38Zc3hm72DYYlOg1CToBjW/kaaOyX5P/AAPs5Aw2OW9MJW3cCHCznrEbm8dAZnuOuUd2P2oLCybFdmvEG9lL1BRcRH7xEjQykSlohFsg/gmiMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guTH7mA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guTH7mA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750522193;
	bh=qXDeNx323FABFemQr+Zoyi6Ey/aIBwrsGiQ1LX6Z7XM=;
	h=To:Subject:From:Date:From;
	b=guTH7mA/M3ZcISXqsYvRxWaqSnF3RFvu7HaZvdEtT+rimYZk3tiO+fZm6sB8QgDqe
	 eN+Dbim6GNtJnx3H8l7f/FXiiDIn+LuTHKd83ZXkUJpFjhTcGtzyaWRQudeF8cZhZV
	 c6rmZ04fvrk1krMpPoFqJz4bwQKhzZWoGgT4r4v1SJHY6VqchgPk39eazoAnRFR8T3
	 s4Il4HehD4OQe49akfYzX/5zfpPqXIIOkCR22R+HN+rrvuzWI2gJl5w5dyfLRTUK0b
	 9Pm+6swuqUA4aBUvffWJv3ZK01FWnNynAUfdlq9Cqmz1QlbQXd8fcoHjnfJO3/dkDV
	 hF/BEfdw/WvAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A4BC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052219357.18805.988689330016187211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2335320e07daba955a1f956e4cf7873a0f023ddc3e0e2a87186eb8b8cac5b1
Date: Sat, 21 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750522193
