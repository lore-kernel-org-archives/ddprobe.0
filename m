Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275BB218D81
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728651954; cv=none; b=Ckx1YXl6ZElYmEzPhwz/ovSdvy5MkabEql3eYt8QoB/BTQ8Tk1kJRg7GQFlyEiNl/shDUbWsc77NuKWqgm1o9FHYrdwVQ5mdz8N7B7rXVRaaoJwo0K3pbrFJF+cj6XpZkUva64HgzVkgUUoW2NJoXsgWWCiIpARJjKy34lFn1HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728651954; c=relaxed/simple;
	bh=0TYAV1hd1KSKr7L09B6dxOT9GDaRiZG+zdVHr8DoFSE=;
	h=To:Subject:From:Message-Id:Date; b=J5G2FnTU2LfN/XJ6QhPXixEXTYNaFN/Ykvmkinu0/8kJpm/gbdzQCyx/YM32oQqXJaySMLtQXqTyCrAQsdAvIa4CTOq3obqXDYhBhtVvgMnFbYUf1lST7FKO9bR3AgHeh0gTyZJoM1deF1vek0NC9UuLa4l+rY33L0gvy3pp8g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4D8yheg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4D8yheg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60CDC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728651953;
	bh=0TYAV1hd1KSKr7L09B6dxOT9GDaRiZG+zdVHr8DoFSE=;
	h=To:Subject:From:Date:From;
	b=q4D8yhegBC2USqPH5zLjZ3tMD1m8SZO6Ci1KXCJN7CDHfWJFAn2FPQ0FMS0eWKOoo
	 +uXinwfvtpLHNgJD0owBHYtQEX4e+5yQvZN4+YLlMbBJYCBsJ01Ft8V8/b+zOzpdj5
	 zC1n96s9fjey2HnOYzOeV9M2RjS4JwhM7UeeQTFBQalE2gXeUpzQVSNP5DlzqKfUDH
	 7aCKRVP11rrAYewh3ckrCZR6ptLBKO+t0whr2fkWp0Z5vCgpSlyQRgbC0ionu6OIR2
	 GDy07TgoHASKmQ0j/Ok6eiwPKJ58GNqg8bVt7lNIhYat/Ka2i51woZj9E5H5kT70aH
	 Kp41nTTqvbUeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ABDD0D78F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172865195359.1960.12393498102780777263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d444448968fab29d2643d9c4ed38463ead686ae73c631b5a10815640f4bdabc
Date: Fri, 11 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728651953
