Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199202D2496
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769880834; cv=none; b=ZVWbXTj147grAcRviYFYy3B8+QiRp9P0Z8kJoWUp5pvVen8BVK8aTwwf/Wr3XhQppdWCK/XuDcXKTEVYBF5lNj4tywGldcVaKM5dikkLC3pf4y5Z44crbexwNNXaEHMpTh/ZwNg6sY7IcPH56aW+TwC+EHM965ZDv26S32usSJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769880834; c=relaxed/simple;
	bh=MlVNAfKUsaOyzs3Tep66ncUMidkZ9wdWJu3w+l6pyjI=;
	h=To:Subject:From:Message-Id:Date; b=NcBZf+DlThXk29GLKEAuDb0OqrkaMtE6x5MIu3xp9g3HUjlmujbbVIBwTkUbYMJeI/CZMj0G7hwwxdHGQx5godaSBLmWV1AlZmMJspmmgv/afcq7Yj8tSRVrEwJnu7MYc6jFi1ldKW/6EpTsAlhRXpzFgGcUFp0Ct247MzLYt3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcgKizoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcgKizoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C54C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769880833;
	bh=MlVNAfKUsaOyzs3Tep66ncUMidkZ9wdWJu3w+l6pyjI=;
	h=To:Subject:From:Date:From;
	b=tcgKizoGfHeCdiR9ANu2NXIySvryoDpUVdGCDjrTZTP+k9AbtWItQR7mavs5ErRpQ
	 nied5ZGr5UDjQT5+b5XH16hiMFlZZwjCP19NszoOeeEjCvCqns2TjXM/Y8eva2gf4o
	 8WVwD6jitdOhERKA9w6xkxXwJW8T9t7DxNEO1gE+JMTVkO0oEm8J/Euu4A+O0H/4/f
	 zY9ZZ/ihGgpBtoT8EUVeiH+jKpAE7/pj3VoRLzQBBsCDjKwxkv/aWKdR30bJZWywGD
	 vZUtowJubDlBiLUBPFPMbjnZ+ThTjk6T2IL7ShuS0zhNEmYmfRPCuJdr8QrTb8tkCr
	 t5Gfmd5yNLy6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A4D49C9E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988083357.16400.1203021437532163068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07ce8b0e660a827af7c12cf8b42d8d43c4a1f51b2fd538af086ab6604454979
Date: Sat, 31 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769880833
