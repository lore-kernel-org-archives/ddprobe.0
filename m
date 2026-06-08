Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C84327BFA
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780900474; cv=none; b=qhC0MgTPKLCEEuXl3ATpJDplccyogJrWEQfrKhpmWZmedLbjswhSuBiEvn5PU2Yf8guGzVvsQoRpwVyrGj9QhJ/THQCrPik8DZJUUwUbVGc2B9ZxJtsZf41uZVLAOgNb6oid5Wd+jhAnohuyTA+w/+fZKMUJV+hu+5YlV5A9qAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780900474; c=relaxed/simple;
	bh=W3q5hh2IlD4JtCdjdDY5o2tohSvlCMGsXxWjF394yVk=;
	h=To:Subject:From:Message-Id:Date; b=amLbzDXOF8WGPpcP3094mZwqs/KDG5L2UL+Oj/h4cAUZFtIaYWN5fxx3pPO3ZM+41/8y825FMiKZw3A753Lv/nzDoG6nIwgbM9qi7VBKKPGLeFlfM66lJq/JsqaAeCmV05cO9cmR9P/0Zkme6/MeGIuASNUJOrlrq+LFZQvaF6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9mvoWxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9mvoWxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AEAC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780900473;
	bh=W3q5hh2IlD4JtCdjdDY5o2tohSvlCMGsXxWjF394yVk=;
	h=To:Subject:From:Date:From;
	b=Q9mvoWxbGV0VaMFpZf6DFnaj9NkGgr5O9uN/UwtYCtthRPC3iDprSUM7VaS/V7nOd
	 /QOK3ZmWM0CsVTAPeH3qbzibXYJFs+jYlYQrepPisZkwQj0rbDyL3rKFFViJn6pb+o
	 1rOxQAHqwnq07VNkjZoV/zU9iN4zINYCgBHHsAPgI1aB8q5qntEwtDzpjx2qvIIWcN
	 Br90lMOD1/VSMVlR4r8DkzzdnKofcdfaFo+UmUcbb786TW2f3VccXNo2bdmjUu5zD2
	 ub1RhtSq3CltsP71y+4XrKsAx7IPHZw27b9p/5xuHlk84BqCB3ucgXTzfEje5M44iy
	 n2j+87Qujwc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB915CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090047369.10266.9854954463751726472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff57ac763235a8882672317d505d9d7eb638f95b1ef84d551c656b2ad65400e
Date: Mon, 08 Jun 2026 06:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780900473
