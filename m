Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581D777119
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 08:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715331143; cv=none; b=n3uN5k8CpzEHafu31vDWWadVpxcEpLk//AC1qhRZWL90xyHnTIsbTNgvtsChCxP9SnCi73O4vk0GaimJqTBpHOEULuEfRib0XMZWNJLttuYfm+mh3kVRvL/BFsIKH5EgXd94YLUAAyZWHi3Ek88vgtxGpgPTAg3cMHiL7gFwD7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715331143; c=relaxed/simple;
	bh=eXPaVgM5qL2AGLQX9Com7QFqDKRAI78MzxK/SN7WcEo=;
	h=To:Subject:From:Message-Id:Date; b=lYB1IlkDpOnF55JzUOjuEiLuF5vnhronBr/2zpBCBpqaXoS70o3QXdymamxeYxDAli5YAYVp6lzdm3nR2avLXHtV0TneSLErBE1IyiAqnj1/+nnrSRylFq9Hn7aTa3L3MRsC8bPKYd9vAgTlfFWYnr1QibhVlT1tuST25nbjWT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cz2Gjhks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cz2Gjhks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A4FC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715331142;
	bh=eXPaVgM5qL2AGLQX9Com7QFqDKRAI78MzxK/SN7WcEo=;
	h=To:Subject:From:Date:From;
	b=Cz2GjhksTKV7H/ofibB1CdpeD5TKreFJLd/ouOqueYtqGRNN6eQG22PDOkbzvqPaP
	 /b41Vyw3XuYysQX/pueLfd6t0uaxl0eJ4RzFyiMRSVRy8wiKDrCqLE6hoxmrEyAaLG
	 E66iHwOsdJwuREDQ14eOBxM72dT/vuSGqBpeBQliVIPM9X+W1cvsQXWg1jPy4mSEGs
	 7egrXGBhorJqMYRE0jyfloAMSWY9xy1lQuZQdgQbZVPakpy4if4lY2R1TeeKv0wxXQ
	 LOb4ynY5Q6xP4KfoqcKWPGO5QFVNS1ISK4FKi4COGt3Gg4qwg32V1/XBptRoGLrOZI
	 DDjCrj7nPyQ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F48C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533114278.7238.9455166266686736413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66484af9f88e95f77155061d037f68182449717df9dea5dd409b9defa2eae60
Date: Fri, 10 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715331142
