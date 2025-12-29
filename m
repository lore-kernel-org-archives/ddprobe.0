Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358BC1ADC7E
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766970234; cv=none; b=KVsD+lmHTbe7SBkw/lU9wsofK2bH8alHqTJWw/qu/fjoEzgFoLsb/t+6wPPv49UWWvYLJKRusyKG6nIqY/ctYe1OsNN23xeMf+s2V3q7MdZHPRfzgZdyt0A7yitiXThWnhmY7BRdyHukaSgMsriv45yenbwN8RtuEa1Hpwp/n+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766970234; c=relaxed/simple;
	bh=fHaWtvwxmZydZwxX2h8QORdiO30VPjW+Q4hE/BK+oo4=;
	h=To:Subject:From:Message-Id:Date; b=mkrVy2mJOR0/TgaJPE3sUrDxamqDmmG7PuXfsMIVoPmCklNgBfgo8dnc8EUf8KqyJekcsT3+8WMFf2LTziuGuDslbBIlX0rXjKUtD6BYn3Qi95RrqK+8S67LNUJnR4OemTu6ccOMmO4kxnu0iZQVgm6NW3leB5GIixTfON61pvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ul/GzSm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ul/GzSm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CDCC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766970233;
	bh=fHaWtvwxmZydZwxX2h8QORdiO30VPjW+Q4hE/BK+oo4=;
	h=To:Subject:From:Date:From;
	b=Ul/GzSm1OQEC4c0WMZp4Rfjkx9fc8gEUbno3INDlOOPUp2whqgkgqjI7mXycTj0cp
	 xo9tnwSL7+c6jQFbmEG7WvLNTz3Fu0y7wspb5c93mGgj50D2EvNX55uGrKtFjXxr4x
	 pN486CQkZLOtsrO8+dsvyRwKubiP/LZNuOi5gvA0kWBRFaXHrznj43z9cuhJicV12G
	 v8ro+sIXHTMcEn1g5rHmC0k2ytJvczOE/AJRRUZj1WK8M/napjO2q+MuCT+zLv/5Y6
	 OtHkrh6EfYiHJcifYRoKbx0vWehjJ08rzfpSX/KHt9FnP6c3a4ZoZRqUzBJu4fOid/
	 BDIvXfrr0KWcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F9BD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697023359.15176.209270024732832322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e1f1d8a8cb6b36cb9b3d15d5af455384f39f6595df51e6352a954214409931
Date: Mon, 29 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766970233
