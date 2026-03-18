Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34266374737
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773869094; cv=none; b=YLIm6cLqvqRlz6/a43RhH9cRsu6r1RqoQcoCRHrOkbXRSwGTFtN/tOq9kMb8Wnyq9f/4Mfjspiwlf/4fQW+DpG3lzx1kjcG7i7MRzpKjiscGMtnR69rIG4OPDZ0QmpdAKfQIHQe+N7HJtKpl58/6RmWRO7CqWe34PwzkU9eAq9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773869094; c=relaxed/simple;
	bh=/5OuXBYXSE5QcF1hIpZF+AXDyEMFCgHgdcIq3LQ7hwY=;
	h=To:Subject:From:Message-Id:Date; b=RmguFs5+Zv33AjRwaAY7SEyKs9oxi03Mo6FpZPcTpOsgFFOaRmZF50CDZI3h5O/F8HqauXF12Dd40fAocHKm371mae074hvj8CUypZIh6l7T5UoKcgma9a+59gY6SVipG+RnVjG7hwDgt6651ChAD2hkFy8qlmsFz1YKRoi3/Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8SoDHva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8SoDHva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4B2C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773869093;
	bh=/5OuXBYXSE5QcF1hIpZF+AXDyEMFCgHgdcIq3LQ7hwY=;
	h=To:Subject:From:Date:From;
	b=h8SoDHvatuCE3jOwDidaBalYfug/FUl48e1DYL5ur/B/7TcgwAP4MHsJY9BWmbqzK
	 rNfVF4+5efctCbsYqPVRqYS75+a9pWSUb6/PK5jSzqrZhRO8XTA9wtB3lixozLD/X+
	 XpR3qsddoHyAtOu8YWuhRKgGry60ZJvkaOfPYY+BEhpWS3nh/qGOFGeaKhp/e1nhQB
	 Tu0YvmCq2X+qe6tgP9gvPmAiygldsx20/0zNiL3F308UwlNq2vZWuvgAowV4bNE2W0
	 3Fa8T8JaG6TON63h74VzYdv0bCFRRV/xXXVbcirdtzvCBHdzO3M4MwtlSj4+OoUHBl
	 DE0hQQhnmaeXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9421107760E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386909364.7348.16282435784861829068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c46d8c190c989717011f36943eb75f40d9ce3ca859d9f01ad59d1aa7be4592e
Date: Wed, 18 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773869093
