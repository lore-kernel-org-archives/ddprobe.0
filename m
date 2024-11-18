Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202F17E0E4
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731900954; cv=none; b=UiekusI9exJsiEHlBvzDaftZZZoHustkI/E42/OG0l1wl6StnlY+BVKDMFjQMTFG/XVJ2qei1efNY5aaDoZ8S9Rd0gZtxOxiuAopxHrRE75VIyvWRqevRrJsM6oc+IxwbwZrMd9hoJjMItW61wFAAzMrokUDcEOstSoQYHk57IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731900954; c=relaxed/simple;
	bh=JV0RRjRdeRX7PYHq/uu57u88sqjf4HU5Rzbw6+XGCyE=;
	h=To:Subject:From:Message-Id:Date; b=d2T2DqSn6FpG0ac0pqpPRMjRJ0wLBC3jdolvHo4x2YIh4L1/3IooUQ005rHEWMFJPLI8lW2Cgus6fzcVWZHF0T8poTCqk7/iiRohqSKcFdABKtp21WQaVWOlc2n+t2LcVYx+5QgbPVJep7MtTfmZ0pKq7tC87LD0z5MPxxY78yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIGlpRHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIGlpRHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE134C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731900953;
	bh=JV0RRjRdeRX7PYHq/uu57u88sqjf4HU5Rzbw6+XGCyE=;
	h=To:Subject:From:Date:From;
	b=BIGlpRHSEOIc57IOb/Jh92mpvV0QISUOsAjcJhjOMzuAxlpVaKoSp/UwqIZJn6cE2
	 nbkUU0oHBq/6M+QICkL+E184e+WcmcPtqR2O83iadJ2AD268xYzbok5Ib0K9v1VtrX
	 QCXW0ynHvYerQ/LdmjkvBj5BHvA6cmWsMdDOoyBKd0SbbFi9VBSPhwGVDC2uu7czbw
	 dZ0O81tBNJOMjqSrEVSruyfbUNkNpZQdroJFpS52qQYO+a3I8DqDjOEXKNRJbldX/W
	 3plD0SRmnHIyPallW4QF5eXA3EJNWWriVTbBT/zPxC6xCN1cwdS68si6PdBmpZzNHc
	 rbvjmEs0AsIsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D0D10F31
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173190095358.19917.3679959492276530439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630c930dd81eeb0c011011ff94e059278b2e0aaf6f15a7c6f18786479350e7b3
Date: Mon, 18 Nov 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731900953
