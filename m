Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3C1208D0
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735487754; cv=none; b=EcakZZ4+5YJOcfuz2nFwHDea/GlSflZT/uHiCbwdoPP7JLd/7Zfijrh8WwjuPstLWYMVhByRyro5qLR/FU6PWiF2GIv26GuNosjFZ0T5EwsJS9c5ohELRHnabcJk8xL9539t8kaVTzdCOapEol+Y0drxbPXOpZfFRUQQZDfk6Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735487754; c=relaxed/simple;
	bh=wFuzeTl8uf/a1uHKJOGW8hX4qoGqiLMDSTxuygq0pxI=;
	h=To:Subject:From:Message-Id:Date; b=eWFz+O6cqJ86hLpCsXCSwRgrEK9kLL26SURXfLwhlSwMNpjywKmUjRDwHb7b6JhfQ/LujXIkG/ijvS6EsoZKrlkQhcMAqNKJbl3HKqgp4o3jCdaQt9T6Wbm6FwdfJlwHP9oGoGC860ejCAwSk/4YJ4ulmm7VyVq0SIYLLqSmp/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7fXAHyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7fXAHyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7062C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735487753;
	bh=wFuzeTl8uf/a1uHKJOGW8hX4qoGqiLMDSTxuygq0pxI=;
	h=To:Subject:From:Date:From;
	b=u7fXAHytWtvUrPyuB8ErwPoabn5sooiLap/xt3SQ07iz+iCze3IVfooYsFaFIys+z
	 k/TnorOZ37u+3Ft3ym6jRr5QlktbcNrax2X9PhWlUl/T1IQDnS7DSbi4gA594Ithq8
	 sZc1aaRcjcE5LXHGee8NEEGrwAtykg2WljtPaFsZto/ymK16cXizvi8WNw/myeGw8Z
	 afwiulks2v+fxel4mHWWzsdoUnH2iePqaX7v/tzjbVBK3Gzce9OyFkzxuH+/O5x6Xt
	 5+a9tO7kPntKz1QBxzU/5vSZjbb8y8YkVvbppp3WLsM/yVWwynl3mZcltN8942HRCN
	 a36rPu2eo6YXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C63E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173548775360.6754.15437195668775985402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd544eb44f9bfe42d67ce80a511978bd4145f4065f6100002319085713abcc2
Date: Sun, 29 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735487753
