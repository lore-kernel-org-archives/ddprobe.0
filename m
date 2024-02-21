Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF134E1CA
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708509497; cv=none; b=YZcdXO9CSxseviS2tkiHgC9+lodA5u65DiTfOOl8D9aBilO+OKkhrM3Irhl+fvMGjkg133Yb5Zj0x7IAmpb599JR3IFxDWOU9/4GWHRjQTnwC3CY+jHSEjNoU1kV5WHMVVWeqnPZUZgYv5d6BFjlbFdBLH0gm8CQO+q7oYl3K3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708509497; c=relaxed/simple;
	bh=0SGmiESp/9A1ek76XX6s9nu1YND0gZlmaSbYXt8DC8U=;
	h=To:Subject:From:Message-Id:Date; b=dPMf6wIrPneP+iX+AFd+Ix/ff+EknD+/gGVGxT6NynQldin2LPJBPZ9PSTp21SxZWOYSxY6noqjwYAENTZfRQuvZOtnDK4bBmpsG8u4CyIG58YevDASEWd25bBiHtnL0M5+KJSmyh2ifC3e2+XWWSbsd9wi7S5mQ0L9AOapt18s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6+S4F4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6+S4F4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79107C433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708509496;
	bh=0SGmiESp/9A1ek76XX6s9nu1YND0gZlmaSbYXt8DC8U=;
	h=To:Subject:From:Date:From;
	b=o6+S4F4X9wWPMY1+07T6/tpi7AZj9aOrmiWEbAYsRa8aOsO59+eZ2PBIqbmRiD45+
	 1y4ZEmK8898kVqY25fli7+rvmM0S78tobR2rFeEJZMoZJUUe42/qX/W2CQ9Icne+EV
	 l2oRL0PsWEvNQWSoaU/pEU8lKmkI8WLm2S/5RYEgixOE7w9VR83PblhhOkoYhJX0HL
	 GmWrbOQIStgEk+eahcaqZ1uTJUA7tQpbOqrSFCcb7ebsFEeJNu6D7NZFOEXBXM1hQX
	 iJ//u8sEjPtDH5O0Ai9sZ9oIij07Y19a821BZnRu3lyVDZ/uHOlhxh7ZXB2tqI9ZhC
	 k3SyJmkr8O4FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBA6C48BF6
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170850949638.3843.10930244472339647568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed748bcfbef739bd82334d4b3ce053cda9efa45f14a0e059287393d3e31e5646
Date: Wed, 21 Feb 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708509496
