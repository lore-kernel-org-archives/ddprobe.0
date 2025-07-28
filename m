Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223F133E7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753705194; cv=none; b=pF0I1YgNoyiXJiWMx+byPpaw471ZmQWd5g+CC6ilgh/3jVBJp6oq4SfquBU1l1yqe8+cSp2enrJIF8HxRan5uMpQ7GzUIAugHLfChD+1pWDK7PWPpQ6neKvd221CeG+ID7o0A22/6LzS/n/vh0+z1ZzKHI+KhMy1/w/DjDuOHhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753705194; c=relaxed/simple;
	bh=nbHMUoUBpLf4XepsKxp2FW92IRuqtB73ac8GDxYA90E=;
	h=To:Subject:From:Message-Id:Date; b=FgG136Ka51lXcCEx7OPD9z4naBoMGOPoPCTjagZJ8vog/D8bAy2QCS137bdqh1aURhM0pk800+H6QL5sA255JL7WXzHewfXuBNEkQm5Mgmdt/vWLy3egmuzbreVUVLidnAbfS7fsoY3/VcYEFIFV6CODKYIs4UUsx5aqcnxBcDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USSnuoTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USSnuoTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6EBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753705193;
	bh=nbHMUoUBpLf4XepsKxp2FW92IRuqtB73ac8GDxYA90E=;
	h=To:Subject:From:Date:From;
	b=USSnuoTPPUU+8HCK2FC8cUSeBao2q/SpXQiJUrbKcyFDnKRDAs5mRHwKnsq2FRLYW
	 JFyzpwX0fqDc6tAjz7A1m/fnwOl3YetVDqKISHIRsRAg4+VfAEx1epMq2ecBISTKNV
	 me4S2pRFwQytX+S0nuRPe0Iit8idNGFYQO9C/JAxEem2ApBV0MAhPOU3qvJqx2t79m
	 IF6q0GSzrs7ecZEQlyAMH6xmyYU899ype4eOW5voDeJxBmk6MhMDgRgyVCaZcBhYNl
	 6UeJ7c8lGegy/KB94sfEWsxX9JJIiWmneLpWgK9/bcK2l/YaLpqmpCtQ+vHuQDJ0/A
	 /7eijMskGOgzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC3C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370519357.29950.3399761869273382747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2626ce02812f37cb505214b1b8b75390f36844e8703ea0b26f95a2c1be26452e
Date: Mon, 28 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753705193
