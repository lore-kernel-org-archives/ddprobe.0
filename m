Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1976227703C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770935094; cv=none; b=GKh/4SOxcFf5aBAuQdiSl772nqe9YEHOlF+1TbiKWewUoGnT3IJWatws3ZLrdmO0znaLKDLXorsqRG6k/M+h9FcBFXrwhwTSjP+OvOJ4zgc+CieM5G2ohIpJxIeeA6MtNtHwkv3CsHdcI1jWRqGw1TSegg2dpKzKR3tZrQJdJb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770935094; c=relaxed/simple;
	bh=/wSx1+KmjXYaqZSevGCOVDz16h6+EHPo2MESfSBFiE0=;
	h=To:Subject:From:Message-Id:Date; b=QKguQyK4VaBp8HUkYEiCAVSiVe+VaAVnoy2/V7J8WC8cjn+c0+JkM4LN3kSEtXQ5Do/AcLJLpbgDubxpT0+hq6ykoJjaVQEG1x1BXjrbvHLG2zFNGFAaM4F9GUCfTS9SpdqcWPy38d2IOD4c4DxZ5VUolQaAWKtR0rhg0tXehTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppPxYgu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppPxYgu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88C8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770935093;
	bh=/wSx1+KmjXYaqZSevGCOVDz16h6+EHPo2MESfSBFiE0=;
	h=To:Subject:From:Date:From;
	b=ppPxYgu/DvTKxvytta16zVfdZl2qi3RnaWPaOgGGA4mO2bpYWqHmhggZwREEMDeWc
	 RwGMGCeLHGA4BqWgtr4k53x2Cs0FGh9iEmdDJA7XiZIZxPzKgyRqByGcnCAUrBMLep
	 WPm1MsNrhK4QszS37oWu5tjpDu+vkd4zBAC4o1RUIGVx8tH3WBj4DQMtvwWo+89IJk
	 hNJ8lfLXbLsRh+vcU6zP1C7TsVsJ1cTIswroG97QqxoQiRZfxdKEqBkRHL0oFf02fT
	 IuZDp1wNVaD8K9GG5fmPI3YmVXprCjjvxNWt7N0ytCnuikV1qVfsjD9RHvXJzW3MiC
	 w07DbbIpmhyuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBA8EEA868
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093509363.1771.1145824970362876497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc424726ba59ac525b077459b3cb5b50a703d2046b4113aab61d767ccf13ae13
Date: Thu, 12 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770935093
