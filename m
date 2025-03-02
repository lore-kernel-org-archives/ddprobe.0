Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B731E5B9C
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740934735; cv=none; b=taEp8t48yGr2WZYFLGp3BfCHx/9r8pkIwGQYcAsJyjT3h1MjlV2eCpIYFb9VLeoeNq/5atzUoQ5MIDLX2CihrwJ+jeUKB+2xKAWiXJ6/A0K2/2U0MDy3/BhRPcyvUkihImT44sHiuI3hG85w3haowlqcPP3h9uvcN41tvo73oMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740934735; c=relaxed/simple;
	bh=ufdhFzFB8JDFQGCKxt8C0mHaYejjYqAGh2uBGVLq8Xg=;
	h=To:Subject:From:Message-Id:Date; b=LCESlXUemKkVCpxkbKH39XlmWt/d4N2AfLIzRdoZNSPUVBTsmpSi6VOcqEU1fEzWFpzZmroJsTgPBNLOBBBOL/6u7LuGBkxMaJHDkbFUzMeXxHgbXTLaZH4IbQA4bL4E6PiCPPAVrFkijhRAD2Yo7MLjP5eCefpq443ExXaIegE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ+6SSOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ+6SSOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA7AC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740934733;
	bh=ufdhFzFB8JDFQGCKxt8C0mHaYejjYqAGh2uBGVLq8Xg=;
	h=To:Subject:From:Date:From;
	b=hJ+6SSOotrjMz8/Xvw7w90vzP5QIH1KJKVdoTIq7rc682PyZKI0K4gOKD+jF29pQp
	 NuDJ9W7FxlWX+NdSNOK0eabElkiVllAq2JzDlPaZYwcEDHpw7F+oFPTPbK+tJhO7d0
	 yKXfkMtOwFpq3/xwE1uNEkRSUM6HYVX4wHqR9JjQz+TOr5EpEFXFYz8KZqQ1o7nz6r
	 pF7x+sYaEXlj8YfWXfIKzAbizHi+5+s144NwYnIOcXrD4mAj5UBtXFtpZbhfpzBGWC
	 JPNhiJ0UICsyQ+XCABQ4f8Q0k3joD89whwqRMyWHCh4tZB/x6pKnww8p99oBOLLrCa
	 xflNPCG+NajZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A04AC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174093473362.31530.16521754542396067021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22181de2d446ff2489a69babffa2b1e7b3627ab1c3a0e7a1a4306cd1b8879f4
Date: Sun, 02 Mar 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740934733
