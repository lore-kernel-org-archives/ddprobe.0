Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476CC2475C2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736942154; cv=none; b=quKKXJYj8aw8SgchHX5wlkupD2yJSO6Hwvn3lN6UW2kOxKG7icUbj89oWj41u1GbBNGFhjBExJanTfAvesudl78thOqqGzMI4LdVYJcvGgXXJ0UwTij+4CQ4kvuZpEvhvCld/N+eKwcbWvgp/2BYbtyBoVrkyXb7kr/XGp618Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736942154; c=relaxed/simple;
	bh=HDph9Su8eSIhTMwetY0O826QSlEDv6BR0ZOKyhSFayM=;
	h=To:Subject:From:Message-Id:Date; b=fR16cz1uYZAcVxTxhHa17TE2cuoK8ewDC4/p6DHbbqPqrC74lpnAUwyXXdq0gcQVencTdufTpB6IWgdsZ1+HnI+qf9d6EB4Tpl5H0xJalEz882qOUhY6NT57RbYM8240c0eZpcudDBtySpxZT2Zrf8fV6VGZhaDiR92ISiOpZW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b++eoyvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b++eoyvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51C4C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736942153;
	bh=HDph9Su8eSIhTMwetY0O826QSlEDv6BR0ZOKyhSFayM=;
	h=To:Subject:From:Date:From;
	b=b++eoyvdEFon3tlD1QfXghhaXHG1MagrLziolsEAq+jAkaevpuzyGw16k/kiuDvRS
	 ZQJOf8x5Gh9JNzEwHLTdT95LHONDvKXxckj5P9S9BhUxbyx0HCw0k7+EDNAOG75z3l
	 5aj8E768dYYGtMqGn6ukdmP8sLNTgcWUh5XUEB7/LnaT+p3YuFO/1gMp2JZS9xxQDN
	 2bhkd0d+X8haEodKn0pgiMM3QOnIS3pFa82tmSBUXW7nDDFlMD33DMbHM3dGtorFH2
	 KSzSCHV14DqAGNZZem1xOSua9BRnG1lq2+tIsZMi+jsc/YePCNqpxgUO9chwex3jD8
	 ZPHV90ys6J7Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52DBC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694215366.2515.6788115559588619044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489c44875617adca051e0f9c728c2da5dfcedab14eac3d8f73eb650a3cafd8ff
Date: Wed, 15 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736942153
