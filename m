Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FE03B3C18
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790746234; cv=none; b=KX/MEByMxcHl1TloIMDA1bKg4iDbwvF42Yf2bm3zqIUKmBjFaNTRuWkSag34VvSJod5GAXgj86r0K692lfXrBZv7aYSkBG1vDmukUipH8KJWvXYyPDyTLE1QSQOz7MoU2UxiHK8YsIiXZlY9PziC5ODq7lL6FsnK7tFlge8N1mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790746234; c=relaxed/simple;
	bh=2ADXjYq1O89rGGvwoEVYvMTAzkaDbMsDOUqdv4GMj/k=;
	h=To:Subject:From:Message-Id:Date; b=lJPgAhEgXSLJ+RPxH+UqxU2kbJR53PlU1TFZ7QJ8sHoeqAKEjkmTInifySWTxzFMRGefcwfAPizHnWHVYXcHrVXqhlV739BZ3M9vt4KJqHIfrYHiyiJ8FueLxQfC6GJp4Qf5gcTUDF/UqJoFHARAkAoiUfSsItz6BCDGr6o4S38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5vwazK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5vwazK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAADCC4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790746233;
	bh=2ADXjYq1O89rGGvwoEVYvMTAzkaDbMsDOUqdv4GMj/k=;
	h=To:Subject:From:Date:From;
	b=K5vwazK7Yh2GPBClpZxDE2bnvJjaoHt1+nuzxaTjeMX5p9Lw4bnmppfjtJAd02u7C
	 59L5jE9uy9RsdVy/MQe/To1BJj/pIbPUB2U1KELrh8tedXvYiS2fbV3XFnM074OfUt
	 Z2yBvDwAlExH4SL6MTaEPXXna8XmXDtnFZrr50yhJlhDLKfAZ0vjNm6VP+a4jqRp42
	 2eC8F/nTZSRr+/bweZbDUDAIo8b8UPbP6MESa0Lgj/ueExkwguTto4Ec1K+fy+VefE
	 KqxkgJCNyo3+kiOmcI5PiS7KUdCzSP7+tPYTb0TJ5iJdsl7c5wO9zchHknX3Txo8Eh
	 3nQVL/tYHINnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9848C9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074623368.11665.10848694974927771073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8714b85329480de122b447b35772152162fc021453dc9c654041ebec1e48eca8
Date: Wed, 30 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790746233
