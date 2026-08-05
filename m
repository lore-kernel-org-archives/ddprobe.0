Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FA83F8EB3
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785922234; cv=none; b=r0KUy19NSsG//kz2gdxfuDXjCIKQo35Ldk7U3+Pg1T7npnQoeKZNdkxl68kjUjBL1jPPedLu7stqMn7QFLdMLQXjInVYz/1KDXVzZubPo4GVnxvRUwIVsvFAd1yzwzCV7RSuCIWflSEfC9+ntX30CKvPnXZiOeBrH++/OJ8KJpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785922234; c=relaxed/simple;
	bh=9pJMx0XnikmffSK8ZPTHSbF8ENH5sMWuf9Ex8gQl3bw=;
	h=To:Subject:From:Message-Id:Date; b=puMBoj1/qO9zEme0j43kJsb+zFJevJNErVhN99Sc533jKGlTviJclhroK/QdykMnqLlJsQuBYh5u7CTjVQ5Mb4e2kCXNdYBE7+bd7cyV1RkU8oU7LxMtYny+BAlXMQOEiG1JPmMrF+30PCXNRfrFssuDaggaOaxb0GtEOiYQGGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mssw4bSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mssw4bSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 021ACC2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785922234;
	bh=9pJMx0XnikmffSK8ZPTHSbF8ENH5sMWuf9Ex8gQl3bw=;
	h=To:Subject:From:Date:From;
	b=Mssw4bSnnvs+OqOgNVZukKdyz6cmT2EQpI2McYTgw5RF+QoZ5WorCYqgaaLdFpTH+
	 XFqryeceeSBkGQcUbHyCE9Hl215jijPfNr6UyeLeVA+ez8c/EiVHPjT4MjHZO8VpDK
	 ORDAwV2u9OIRS4BHtTrGmYb3wsV7W15FeJLne2SkZB8cGXtXoHegYPmXIIyjIMih/Q
	 GCE7jT9gOhXlasloBjJgtVXbrSUXpVkFnY1AsXdLWdCFVb2Y3bwfF49jaEdGZWbWl6
	 0LbI3/bwJq0VafoEvKGd+YhHaZB8Z0pl67mbwjHbvRNTMyj+ePx4ldE0EiFIkxBDVi
	 4ViG91N78sywA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8B9C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592223382.10839.17791247105153498595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8bb556562df260717288877afb71898c27b8e52cf843aa1a20ec85e9789fb3
Date: Wed, 05 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785922233
