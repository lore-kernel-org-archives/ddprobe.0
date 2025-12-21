Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F661B808
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766283834; cv=none; b=P7TOHesdS01Qn6CB/Duijk90RFrcWZsNIbZkLkjirF4doB0/H+od0QMnpEasTPYZmbmejaDGdVBYCnEUmx2tyRKkRWJWFGAiJ0kEetYgEAaOOCuiQaG664Z7tUW0dUN8sp159YDsia+MbAodG6XznXlAtyV802kvREqU1zcp6Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766283834; c=relaxed/simple;
	bh=TOoQgc505ZFFjcA0QTAoRk39GGfnlV9ojSxWqmy6t14=;
	h=To:Subject:From:Message-Id:Date; b=kNZc1RUkIBAFBWszGCm7pW7qGRT1yp/rAYzryq6zMlxk5A/rZ8YJ0VSwfM5x6S6A0C+Xr3vT24/mqsnZb9umLgNPBl0kP9aKQF0Cdn6q9pbRJCZoDredQ2nB6mShD+nLtXvp5zaO/pCh1U4zswjecg7qK+FyFaBYbUYFPig+hnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsxccnNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsxccnNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A0CC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766283833;
	bh=TOoQgc505ZFFjcA0QTAoRk39GGfnlV9ojSxWqmy6t14=;
	h=To:Subject:From:Date:From;
	b=hsxccnNfCntxKXdcZai6kLqUTyom436muiJN/+JV9nmVns+FNSp8WyqujNPufAPf3
	 g6ojrce3bITzohMw2tGSb6OlxbWSkN0LSf80UakmqYiVJ3N7WDiTILsdDfnBuh9Gn5
	 TeQced98kCE3g9u/1idMlnlRGcKMSK7AligdLQEW4mO+wQK7WvNIG0qiZ+dACYW7qY
	 LSnOTuxbCQIckGbAgtZmsgC1qlblwrQFQwXKrmmCKpXPyOddp5hXw8xgarifMtMt3o
	 U/hKEFCzsIyfXzxPXAjJxGbSj50I5HezmKwYGJWcjetwGUu9zmLVdOtoctt3v+QHG2
	 uNjf6ye9lRItg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9587DE67495
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628383358.30948.11741320567240884357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d348fd86e7e97eb7c2c2574229197df788b622d13f257d21dc73fe42396173
Date: Sun, 21 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766283833
