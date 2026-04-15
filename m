Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286A72030A
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776238654; cv=none; b=SN+DZFL7wkbiCy+z65EfyUTcomJVW9xbprSrEqqn5TdWadSHAyPOCkOLym/J7Cja7LJT3ZWGhCohejwd9SgOK5SuozUYI5HiUQtjvqy+h72ddPw0D31WuqhycnnWV1SwluFdkkPGUa4/p3drYOPMqoTJWELwrLt4eYuEDe7SulY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776238654; c=relaxed/simple;
	bh=tzlLWHL4uBLc5Gh8hUH1+amB57b2sbldpeg6rGP9w7w=;
	h=To:Subject:From:Message-Id:Date; b=ICVKBfadrbXsGjaUKNPMNQYccz68WZ0BxKfVlYhU/9wMyr23t4RVAlWdkTDv+AcMBGwfTLjn0ZvWv75XHiGhbQs2CNa1r1g9qijmEvXWaUdi3QtHkQCmkArRhQG0ES4MBHoaLwpLv8xoj01ARV/VCzmRIgVGbDn3Vo8tXCKTyvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu0NQB1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu0NQB1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28FAC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776238653;
	bh=tzlLWHL4uBLc5Gh8hUH1+amB57b2sbldpeg6rGP9w7w=;
	h=To:Subject:From:Date:From;
	b=Iu0NQB1dK1SzNXir2TlRwbc2iO4XJ1uw/hUrD6SXuD99VYFMpvOdO2Sp05g3kcY3r
	 fql1lB9q8Q15R+FOBVRA+K9kvvfRFAXhk0SwxFnk0KG87BqXRFF+xbOQIGCJLvETvA
	 H/W7I1K9AP877c8/N+5+rmKnYLhFgZWj9xzqkM1qdTpvtmoUM+ugw1lqeXmh4T6Zqe
	 fF3qxDKVwUGjpanpR5tDekyWubONec7kyUwJSM0/uSkA2OhoNQsAiW0SzJtPZ1h+EX
	 1yB/rZoFQ8tCj7m5dUU/XKVFMsN4KBM0QOzOSZBuOc8XTdFA5FxZDe0MC5c48vQtze
	 XVlyZ4qZn3qzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC116FA0C3D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623865368.21258.17293782819979572899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49203ceca6624b30d7e52275a0ce3e7acc29b36ff071effa6b7af89ef3f4aa04
Date: Wed, 15 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776238653
