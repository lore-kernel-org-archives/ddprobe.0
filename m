Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55033262FE6
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754745595; cv=none; b=r0sMWRWle6Ha1uDK4hf8mmEikTVwxOFGOld40q+eHImqGPeU+1AMLjzrpOz1z+3qaDnrXjziVgwwUScGbjAUGm+mxDFIjflHPHL1ZGVCNJ0NM5MXu7YnzmOQatAZBlCso2ZFgPb3CLbtqgGQUilpTy6QoBDMJLs5UXD6X7D0RUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754745595; c=relaxed/simple;
	bh=JKNDA2sU3IvZmTuCeJ8NLUmF+CK6UNbeb/V8YxK1v70=;
	h=To:Subject:From:Message-Id:Date; b=l7zVn/JO9WBPrywnpQm77hJ35hmATYzMeYb/L0Y7PJ7RKtLu1Rk9Q3dwQ4Y5Wft18SJVTbDWPwiWj7SVNfC5/B7MZfK7sdyMIi2K46sGG8ky/FJkMdCnRI35twSDZ3ryzYUWvFVaWhz01XvHuwkiO3Or1S8QDOo5mFWmNyzXF2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQk7O0kV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQk7O0kV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB31C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754745593;
	bh=JKNDA2sU3IvZmTuCeJ8NLUmF+CK6UNbeb/V8YxK1v70=;
	h=To:Subject:From:Date:From;
	b=dQk7O0kVSCKOJ3xYq4iazlvey4citqxjgrc7fGfUaVlPlcCLCtqhVCUpEC2mxMxG5
	 tfe16wRf5uY7xDYVOOjp5IfMzVAgIDFZM7Bx7SvsRpKo8gRhyD14h+22IE9by2WIUh
	 9oa4NNsE9CdXpOV09xkkvC8PFUe9kYGkcxNpR9C+B7V0axHS0vcsHOq/+uoV9Eyxn2
	 WVNXqZTHgear4vfI3OqEwRuq2p26tAjvD8gh80LYAL9nxRS69uUfZ3vNJx4k4vaoiV
	 ps8PVFL9GXPEqbvla+vTWnLKMoFCSWNOhUfhuX8Q9XQAvM4rTyiH3i5ZSxldAyBUFD
	 j+6AyiEWAa1yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E568C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474559357.23620.10910305347572972161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5dcf21e5a6ab1769701bb319512e67eca02d9c4e093bb82475fbea4d8448fff
Date: Sat, 09 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754745593
