Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA8C24A076
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765105974; cv=none; b=UvL9fBy5TllAk2JsGQFC/oIvXwYU2rJJECAN+fVWMFPxRQvgCuCyOooZy+dXeuzONJXjhplYOE0a2iuIrTajy3BX71YTUZbg9r9sQRUcmmGJTgV4L0wckJCS79F6H2KUZ8dTHqX0gwNX9R31F5Yu7sbJQ+DV9aRDDpeH41UcDB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765105974; c=relaxed/simple;
	bh=pIZFAZZg4QrtqYkCPP0CkS3SkfTjY+V9O3NGG/XHRRE=;
	h=To:Subject:From:Message-Id:Date; b=Sd+g3pfdPAkucpUUMxL/E1euqkmh3iPyCx9r8ktJmWyIduPlsPlAf6gjtZqsfrTGgpS4ln2tZ8F+ul/jFyk2FnaBIQs+daedeIxj7ZbzDVOKJoUuUTunjHyvVYMGZaDGK1ispOZQewTl2Q0zNgKmbbJ23+h6cdEWdsP/ZhUYACo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arx5+xlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arx5+xlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A582FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765105973;
	bh=pIZFAZZg4QrtqYkCPP0CkS3SkfTjY+V9O3NGG/XHRRE=;
	h=To:Subject:From:Date:From;
	b=arx5+xluNssh2Nf57gY3IHMA6Dzj4/O5WxjdgNH4Q1Fj9x20s2xQjjR4jp/DWy4ye
	 8hFOnoQndTkL/WZ6SFdSsn40x1M/AqQdgb2wugTyMKhBNQBImC6QHMlGZmsHuglETO
	 IVlSlbRJlIWf+zkzrS+sFrwkAhW2GV3yl8PiSu41R0tfSIFkUvxdf+X6v8dUbiGQMF
	 i4giOJLVuw0eZGTm+/JLBSIaSWfJ/YiUsMmkTM7J7dZgK/w8iCLQbgzb6mBDnP8Aw5
	 sf18HriUyIEfFAWWmQDH86Xass5rzFZN2F9XeUXXOfvzgstsFIJjZ9A3jongghZ3sl
	 QJn+UT/PNK0dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC2D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510597358.8339.200149625894602015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9757bd85b3b58e93b22967bd8aa0056cbb675b99031021bbd6ed01971d00c9
Date: Sun, 07 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765105973
