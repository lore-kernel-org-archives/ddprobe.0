Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2120722256F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782140794; cv=none; b=lsrNh8rpGJN1+XuBUZnpFSHG4GP5T9Degcl5fI2qAq/DInq5QcZrdznvNoQ4HpjuHJRF5woYsBGiW0lAQ2YQvDTX6hqduOYa3/xrH1ohuu4YBIPjqm05IbbaHmTq05EAUAyIknCUySsz6Ypvy0RMb6RpCwgeHIg12iRf2wP8XIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782140794; c=relaxed/simple;
	bh=/GBkxqov050hjPq2a2MbdBzFRrnZPfRbYwgCBFMfOFQ=;
	h=To:Subject:From:Message-Id:Date; b=J+IPhuLcsEzYWdNhFUDbXJFaRVeqlZUvlXYt2/OBuQkEoguS7QyNVxw0nIRmSY+Xz3Nj7XT7S1DVoQaQhtkbMpcv19E+YmsV+qKFNmlawkhPL69nefq4SneGQVysSil31XgSZ8fH6G3Mmju3DTF/hxKA4wxK4n9NzkDvgCTzdy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbKZFXUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbKZFXUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E29C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782140793;
	bh=/GBkxqov050hjPq2a2MbdBzFRrnZPfRbYwgCBFMfOFQ=;
	h=To:Subject:From:Date:From;
	b=jbKZFXUTO5k6GfYpcCkxQMByXPeL5Swu3FCXJz/KB9Yyn8eYJDj5hd92zBOL1xeLt
	 QLDqf1/UoX9b1xuKvRY/as+tZJv4hEUr9gtlpvKzn+67wwYIP5z+RrK0MYedWew+qZ
	 6bLSRq/Q9Ba1EtEQ4xskrsJ+VMjm+Ix7MAkKOTFy8tZz4Mi18lhrv5OMKMSDoEtgXG
	 WxcweD+N6h/VDVKd56wRHefz0gYOamMAqRVw98dirim5ztwMCKoOgYXHkmVBlzfX/q
	 31CmEvZYb0cMxp3b94Mq2bMsk80Na2Gvx2qWLq00UxmrmzXaU5jbQq0cVz0rDC3RNa
	 4UlDWwOivDLbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA530CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214079368.32704.1706200433380513272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b046b439c142689ec2d315dd608e64e42cd200afefd4c657899217e8c49ba3d8
Date: Mon, 22 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782140793
