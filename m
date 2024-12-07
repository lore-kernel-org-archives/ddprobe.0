Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C48222C6C5
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733601954; cv=none; b=cPchrQB2cZYZ9w/FJmKrS4owKGKpblv8Ak2AfQLBo5XLnYueUb3HsYCn6vLJGK4ZcFR8nkGe6vZtQAzxkX9cLN2ZnZhKpWid7g6/Vy1nOGSUDy3w9Xg0EPolTBdWxXX+OdbPh/KlG4/yagXW3JLH390JQ2EeTCTaJIKMOmqT/PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733601954; c=relaxed/simple;
	bh=UUEmvbHB6Qknn4IqXsPLcbuqV30i6dR3wHl9MNVfaCA=;
	h=To:Subject:From:Message-Id:Date; b=aRf/tCc5AhAfW6Ka5vUfaa3oPYU2RYPAs1lykDyBZabQY27lcE2vLGR8Qlq8SbzUuWYZolzn1mpoweWGLcuQmOIg3TiN0lGLvcVnxFDhU0fgah9bwClsdAzLezX97KCaUkBNIvwyh1d/sENuADebbhUzl5z8tsuFuHI8b9SvWBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzkHWl+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzkHWl+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC983C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733601953;
	bh=UUEmvbHB6Qknn4IqXsPLcbuqV30i6dR3wHl9MNVfaCA=;
	h=To:Subject:From:Date:From;
	b=RzkHWl+aFRzXTSuad7L5sFmUIpZOUT5kbrjYit4Bukc65lXrfDlRGWpd0X+kXnq2k
	 b20HLylbA27oK+jTMZY4PM3LxY22+NbKfsGKFHphs7OxgYi1dEbWMXWYkwO+et22vJ
	 wvj4ZZdyquuhc8llnfm5DiNyFJfW7X1V2vU5+2cxfk4K/dX0t6BuCzAVdZb0FOgHpv
	 V0OMv+ke8sX7U7Mplx1ArVowog5wF2WWwD9VZX9vDnYFXuWlKSjVAf3vgJDKuPpL1e
	 WiPRQ8K7BYO4jY4UMGAlxZEv2gNSlexOLaCcXNM69kSAmhygoQH/AUZf5Ljxt/sa+C
	 1p6x7aO97xuYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39A5E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173360195364.10574.10962004595717522320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f05fa80eeafaaa07a2c1972b700683f5a8a9295300ae92576ec58d28084ecbb
Date: Sat, 07 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733601953
