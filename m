Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325C3222575
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750933194; cv=none; b=mPjlJsNFXNc0kFd+CEQWUvlLtcIxM6NMCF1gcFa+/Gb+6m0GLIU64iGrOqgL8h3h0l9wvKlY9ekXsSneVWOcgX3/otLa3EhXtL404MR0eCED8U+J52sMvUX/bADTGj7LtCdERnWIitL+PNpl+PMDAEIaduY0ZQwIrG1T5Cx3YEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750933194; c=relaxed/simple;
	bh=RIJqSLZwD56OWI0/03lQq+1VHk2QP4X/J+xKJcSxiGk=;
	h=To:Subject:From:Message-Id:Date; b=qJns3k8SiOfEI5AUJG5JgJ3SF+qleTrwOcXvN7IMzzZdNaY++T+wHsnpiFvCgJtuOgyHj42xirQsYGlGt+l58M9ISyP7dBuRX6ymkY1DYMEUORDPDGBM4nU+wK4s98EC7PmHRzMrC73KQH55yto6NQ3JUlaKbx/luScOperv3xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUAMEqSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUAMEqSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86C9C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750933193;
	bh=RIJqSLZwD56OWI0/03lQq+1VHk2QP4X/J+xKJcSxiGk=;
	h=To:Subject:From:Date:From;
	b=MUAMEqSy/r8kS1/lobaCl3WvHTHeH9eGMAbep49h0Y++ItIexS7aDReVvsEdfB7kj
	 3UoNMlzo1hcTMtCKpmDHhu2Nh9+iAd2rLrgjg+4KvutYl5bhomXdTyBpmEO7/Govyr
	 Azlzgc/4HYmC+3U+g/PywBUomgySBeu0J9nuJ2PugFYap9xIeNp9T/c4YAnXnLPToP
	 nqAoWIjtttff8KpiXhVXWpzSQKKQAEc+K1h9DIGHESXtFFLlsMSRMfaFsfoDrUuAo9
	 FiUj37Q9sstaFTsQdpW0JF8KFyxp4RG5ioeCkLILXLF0noxERZ37M+RKBDtD+9R6tW
	 Y4l+zxiaHHmIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96002C7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093319359.10214.18147399036975633525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e01ae5d2c6492580f13438cfcbb9858133ad989338c408c2803261298bcee85
Date: Thu, 26 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750933193
