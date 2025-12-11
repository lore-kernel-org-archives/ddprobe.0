Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B5E2D23AD
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765485174; cv=none; b=nPSjltByPM2alqAptb/Zxp+6OCjey/YcPPh5c0ud6Wr5i795gfKk6k+5HYGfNI3pCzlY1TXjsgjZE3FpG+ZLB3mi+wra4Att7HC2lzEcn/2BRDlHQqYB9Igp2ad0bLrvPFyXH+IUc/QPU56W7gu+5UiK6a86LxI2RLLlNQo2gHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765485174; c=relaxed/simple;
	bh=04A+t30TQ5QaBgHbSlQBXjw+SO6RsIvmNSPN1+cLfyc=;
	h=To:Subject:From:Message-Id:Date; b=LOYyeAh4nA04p6rbgvGTLBZ+y89OuUdYingpnwU7yAO5vq4akZ59V1WtlPYUFQg33hGt9vA5QQKvW/jlFS7w2AAjQFJArFh4k74hnimfsLpCKGoe/dj1B6wSL3c1U6xwBXhjGcgHn1dnvyrj27Ml2sKcA4IIZsiACh4sPNsTA2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kALSK2i/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kALSK2i/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DF2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765485173;
	bh=04A+t30TQ5QaBgHbSlQBXjw+SO6RsIvmNSPN1+cLfyc=;
	h=To:Subject:From:Date:From;
	b=kALSK2i/c1yDl6/Eynp8KGwdQpoY3G88qRZ5kmkOCemTYc6urAIFj3TQTMqllg1GB
	 NdwRcpDNA+lY3ISY4mvJcIjF4gIowoqJV8pYXg48fAwx+Um0lmZHPzvLgC97L3f5+c
	 pJOHUjuFLu2bsAO1Rlcei4RC4rqlu85MVK84YNt7rsPtrA/3qblVix0m8M9BlYwwv4
	 YKAeR+oz7mEJpbopioGLWrFSGsUKCoMcDK62rI77PO1FkoxbRs0XiJKPloACkGnyY0
	 PmjrB/14u3xRJBhltwddMZFyKayLk8CYl7e31rdrHEQX2/oXgD6yFWvlFXl6OoGg0u
	 EOK7RHtFCTZgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C7D43343
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548517359.30602.7073338519205295177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1352da1aeab4afbe91c472ace4e544639a161dd9d18d113d593729c084e968e4
Date: Thu, 11 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765485173
