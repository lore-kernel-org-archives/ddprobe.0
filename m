Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2ACA935
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726482354; cv=none; b=kbSmizl0/I/JEgnWEglJJ9WsYDtQvcTlN8vxdbyaklfwHZhPJX4NPJhGiy7D39ydP3ZXK8k9JYsAvdhAqhnHdDPoHhT7HtDH+D9y8XExPC4I7d3cjHhWqrZqRvvlE7EpA3URIhmYllNZizVj47aLqmtdC7bcJRR8GSOwCO+2Gbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726482354; c=relaxed/simple;
	bh=lcDMP7u7ES5UnWHXmYGIp6DvmiWDFcxpbJY+OnnDnE0=;
	h=To:Subject:From:Message-Id:Date; b=cbvQN6uBkjT17SASKZUTIxbbyqD5vIvfazfaPTov8bEUtrun5RVKrHJhJu3ttctHz6O2UYG5AaOGiAw4Re0ehx22dVzSR6C16s08KR7GJYKdYnPawEz02KUn8bImJ27ZyycU1JgG8qJs1npekdMmJOlbB6J2e05ymqaszI0wmu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/lzlDyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/lzlDyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A51C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726482353;
	bh=lcDMP7u7ES5UnWHXmYGIp6DvmiWDFcxpbJY+OnnDnE0=;
	h=To:Subject:From:Date:From;
	b=c/lzlDykBB3kvEnuXdNg0ErplgSdGVQ6V5t2MyarN9sN7uRxY1BModIbNdl9KqGk+
	 wMZwANMmee/3dvSowhpGsfofvu80uFgYwn45+NW07pUV9yygDmXkc9rrtDsMktBkVb
	 50d+GTYdNaOZZxv2RpT1kLdJuz/cu8+FytSfOVpuQc65fyca/ku9c4gYynXMb3dpnU
	 zjYRXQmkxRhIrGOeiSV0+TS4R27JJExxnrVjqEl9a9TLrRqfiR6RH/Tk4pmcL4mvFl
	 nAlq4VB0NDDSbVmpxFuddyqRR+BuOOTvbv6nXMjUR09myPpJG5MuMBTkBZXEsKTIyW
	 /D+xbOntadRvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951EEC3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172648235359.23665.18355743771610993353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83225fe9a1369bed5042b2de23e39db88a24497c33c057bf178135d0d1da5d63
Date: Mon, 16 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726482353
