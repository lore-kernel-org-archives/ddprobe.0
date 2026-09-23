Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960CD3E1729
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790197834; cv=none; b=bRv7iMjsIawx+4NRvYIXeWIkCkTWP/PKLqffNrtUajxNgs7UBdnf3cQTfGLFO+3wDBtTV5JcMP5FsWP128co6UDxfwQccUHglSX9xzVoe6X3CWJj1binG0wRKTk6O3u4z4Iw1VH9SRx02dUVWBzrqGcPKbU6Hzh61orkvLEAwsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790197834; c=relaxed/simple;
	bh=l6J6s+//G5dnoEsTA2xCX2L8ZBdsYWVyi0y8h9obbuw=;
	h=To:Subject:From:Message-Id:Date; b=s0V0YoqvPbYv1BzD+AM6lMZ33lvJvscJb8sVE1hwXy0oAFzcgx0WyIAysLB/UPT/MenEDkdhDrzsPCkBjVvoWDyN7G9okBFgFEFRh8IVwkxox6Yq/VWW8WMKR8sZ4zN/haZluZv+w662iYrCxe4xajfAaBZ7xBU8rUuUEoNWmCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUUqUBOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUUqUBOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8180C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790197833;
	bh=l6J6s+//G5dnoEsTA2xCX2L8ZBdsYWVyi0y8h9obbuw=;
	h=To:Subject:From:Date:From;
	b=FUUqUBOPAYROYsmHFJcSXv4/o2prSayo40Ya8fkqSpfFY9mrk75XoWm711b9iVyHD
	 rXroMrsSBo6+Eaa7DQsPYWtzMYZfPptCHjJ5AYQJBfXteRI3I5Oud+Txy2Y/zKGqRI
	 eP/Cl92ZlZbhi380MWTljPKOBhBN6z+mDkBtyip06Wf4U+kjY2t/EyZtKXqz0QPbAU
	 a6tPOvW6HQ2/sVaufbLZGOZFPyK6u3qWKbbIgoFK37r8qIh8UxfrJuUwV6bKXlrDVK
	 Skc2bHSA3Bd+wIcHnpxdQoTuWMuEAk7q8Nv84i0VoPImKKJc3Zisy4+RVuwaQKyYC1
	 8o6OuTm3/bUgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A05C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019783372.10795.4478523670199011021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67365d125ee2d91046e9951ab954b647acfb4ddd8cfbdfcbddd9978e0ba9e89
Date: Wed, 23 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790197833
