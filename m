Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225A857ED82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788890435; cv=none; b=toAOEOKBQ9tWHoQMB/oBD2iRzNCnJf8ceNkV9Ba0BT1rNI7u69eqma95j5BWDc6To1i6uVzQfujhHf/JGDmAAdnGGB3QXh4OAZ/fwZZrMRQ5/pOC+49P+ylDZH9pAgb/CGRsLuKeSaWps86/Qh17jqMAUF7Rnr29hqdlnaR7wzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788890435; c=relaxed/simple;
	bh=f8FmBQn5sIVTc/XceCVJZLaoUsOkxuZXChY59FnzXiU=;
	h=To:Subject:From:Message-Id:Date; b=Z+PzSuUmb1+20OWDubALvpMXWzzLL0wqAWS6U3OE3XC/AGlwf50fpipRisg4eAyWAZbl3jXNZmYMO8EHw+GcoeghCXyn5hQa8dshnAByv2+jkYMBVQTvdn28PIrN3f+3LQ+3JajWemu8uSlUBeUAWwTU6SuGTd3RO30azXifOZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EovQMN/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EovQMN/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BCEC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788890433;
	bh=f8FmBQn5sIVTc/XceCVJZLaoUsOkxuZXChY59FnzXiU=;
	h=To:Subject:From:Date:From;
	b=EovQMN/0f/oL8JJlrxQj20vYFkM6C6KF/zEVYn/ka+NnLGYXMXjfyGlWEArSnMx9H
	 z4cMGibUzUSPGcSjPWIFTzMUh1+j73n8uri6B4fw2bO7smIHA9YiOWl6oYgXZ7mLwE
	 ORhU/V9eFO0RrR2mVv1e5fpq7ceKlSxPbYp6k528RJ+s/PfuV/SVRAkmWZ2OcAqtZ3
	 Iol7ecbWBCtp9D92+h+lHImfvjziGXuG6BZfeTzjVISw7vdjKEVAfHePFRqsONcjxo
	 tKSFeIJrHUAgzH7ZlIErLM8Yh1pX6N2BNm8/RkaWWi7SExBCV9wticCQ/VTfRvThQv
	 bKCh4W75rcFuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13A1C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889043371.7491.11111804113447319771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afd9ea40f39a76577c299fe511221cd7c965e5056837988ed821afa2e82c988
Date: Tue, 08 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788890433
