Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549B1275B03
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782264994; cv=none; b=WDMPk6gvA8pyl2x6xRr1bOtqmaWhZ1LHnRJV5J8WrYfrqTyT/a8ECjtbRlUqF+HY3eytSpd8FWeJ4UAq64s9s9+fB1x10pXFW1GneLikER2K86TPyIUntts7tZVpUQfmiU9HgMwHiqKGGUFTugf9FStqO8zfmSPi8SZ9VE5t64I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782264994; c=relaxed/simple;
	bh=Mz8rJ+0nLcxSkOkMSR8mt6Rr/jyDJn/Dk2s67sYWb2Y=;
	h=To:Subject:From:Message-Id:Date; b=Y2JUQ+onoh4T3u3XSzniOdZN+e1LBjq/SdGnHNuoe5wJs3zf689xbK2igcGfB6FHIky28fz8Q0TCHPJ/3wTnQi78D2dgT8DKK9rfI15cKdzfsMrIkxGsiQNEc5BPMk++vZZBOegpDCByccyFycD5YuZFOfo3lEcb7uaOZMAtSfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCllJ2rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCllJ2rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4ECC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782264993;
	bh=Mz8rJ+0nLcxSkOkMSR8mt6Rr/jyDJn/Dk2s67sYWb2Y=;
	h=To:Subject:From:Date:From;
	b=BCllJ2rdC68Y71VxjF7F+K9nFQ3k+WVQKG6o6u9EkRcaA/WvH56TsPvzgK/qnJyO7
	 gLH/6e4YmFR1G2f2l+ZpltDOpVi0UnrOaWnVRwPXz2Uw8ZWYcNPiw0A1Vbo3dCFgJc
	 E50Xt8vHFhVd1QPwETEmWs9Y9qepdLdWnmA9YiVQSE3VSS3M/TV383R1ZB1xVzyZDj
	 VchJpgVJMmNhWdgKlhPgDYOHvrPZgQMus4bEMs3GlOsJsjVyykXEpSwdxBASJT7HNc
	 AaV0jbCgXWLj82MIEbzopZeUdMGHFE2XCpDeuF2UN3QSODMYuZiOdu2hqAJE/2Wb/5
	 MFc9fhyv1dIEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B534FCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226499370.4568.14477233025404138787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b87d472fe3a1b62efd424bd25788f504bb05bc0c9b1e9d38d7d608c05a53cec
Date: Wed, 24 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782264993
