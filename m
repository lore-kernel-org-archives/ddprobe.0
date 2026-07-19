Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825A037F732
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784503714; cv=none; b=FJfKXK3JBxyTwlD2ek+3R7NbUtvO5nJGT6Qg/KgYhgRWxRTnc7UtodkGnkHlNbJvu4Fx8DfDbl7ksX+mX0I62Gl/kpN5qRvW1LsebfqfEpwC107cXp6zyLqTn9TFUuVPKIIkSon1SRERVazGPp2vzmSU4CLSs/n8lJ2f4nHgj1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784503714; c=relaxed/simple;
	bh=+JFwd4LXQKU/zLEEd6ol6/nMpUaAKGWwt/asRVzgAfs=;
	h=To:Subject:From:Message-Id:Date; b=SBX4bkrpnmyue3vFh5Ia2ZNrDyFNvIBR1Pvo7na7se/EkNRqEyn5LqPVTXMe3EDCHH4InI2MxEuBZbLSKTB/Q7xJZNujRXrtj4axWH7cPpYRx6t6ni2vLPwlMiqNVsYAEjNuCUQjatnqZvEsc3gyVLnzEzjUVVGmoNfmz9F/65U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGH+ZWea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGH+ZWea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19784C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784503714;
	bh=+JFwd4LXQKU/zLEEd6ol6/nMpUaAKGWwt/asRVzgAfs=;
	h=To:Subject:From:Date:From;
	b=oGH+ZWeaBMSuiAymp3U0D6aEYuqyIzRiS5kYaAwq0SogTtJrYSY5c91oVQTeekN4O
	 xPYdCh9es3MEtYFy9rbKMbRAJyjZEghhGHwBwAl5rr55TJ45EDKPu7znKOK3w8/omf
	 Y1rAlF69DgBDx9o3K5t4R6jHRYx1D4PN5tGYj70NwLl5Gjg1IBAsgrBSnbtQLzSPhK
	 ZkM7faIiYpAdZZdCuhp+6VvV1xW0jfNYI7czdLeD6vklEZm79830FE+kblEsvCJTHs
	 NVQqtC/HxReAwhfAot9p40PQg6Isxfv55RoLWh2e6DyMQN3Nhi4nA9aGA0hb8p5qdl
	 ctM0rWCREk1bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D06C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450371383.19028.4381389210613014061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa7dbf367474804a4dfdf59ba9c0d275011377df9f4aeae3e1a37e293fe4ef3d
Date: Sun, 19 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784503713
