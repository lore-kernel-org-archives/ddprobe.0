Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF0F248881
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753878594; cv=none; b=nTX9/Tm3/c4Jfu2LpGGHgiE8wAOpkv4Loit1hUbqbbNTYm57MVMyT9nErtAm52JsWKpdjDjjjWnvntgn9OFkAkgUpjCK30fX4rji/I641mz+qUk90xR/BKKQRToIvWpM8J9A5gBhzaUKw6Ld52viCjXhYnZKLjzqqqABqQyWuSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753878594; c=relaxed/simple;
	bh=zdcaLlmyPLnY8jAISJyCp21BDSVm7mVPqnnmt269guw=;
	h=To:Subject:From:Message-Id:Date; b=hn6ngQxvepcZUaQCXGiiloyGVuC9ETAovKyYUIgCaEOy9CuemO7hHT199PJtWerU2VgmibO+Gal4808C/NI4l6DUGuF0JgmpqkgigM9ggM4E0P2dLt53hidpW+usRJUQGs/z63ZEYRciipMuRtysM47lKNCnsq0J5i0v0XISxA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsrKC9ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsrKC9ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1642C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753878593;
	bh=zdcaLlmyPLnY8jAISJyCp21BDSVm7mVPqnnmt269guw=;
	h=To:Subject:From:Date:From;
	b=GsrKC9apOGfepDjS+59X1seanhsGCARYfKmRVTF8fDPYUZxwNi2l2EGfPTub5RILy
	 GPxqAR3r4L7LgbF3CMwnAemcjxbDdCCVT3LGVNfUFn8eAS1jqQod/1fLkaWLi+O+qK
	 +pVI58vEw1ti/KqqTCaWyiMt3cPziYQ/AHVIF3na5NVr5/6eTZ2WEs9ZkFJNxqqpMG
	 h+qAyUafzpG3PMtpJbDN2Rl9ckMuojlcor7OhQbZ5dwbtkp/f1fOZcRaxDNsPymA41
	 gmPG+VsyBiaainaK7fSikxB7vyOhxfS95LJ/+J9srf8Y/92dPnbxHoMufpZ0LSNxH+
	 oG+znaeJs7Gmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE43C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387859357.11581.15984015935992827711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4e7f190874f2a09e4e150f1532d04582ce2ab63f0ad3e2eb7075c7c5191070
Date: Wed, 30 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753878593
