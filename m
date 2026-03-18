Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AABA33F8C3
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773874494; cv=none; b=iKlHKMVBKnND2pEEL4pMe03YBx+Tcf+J+eudrK/fhEo90kT90XeqeDOxPRp6JDG6Z40Lm7ENa7iJD//XBs96vb3+LzIN8/4T4JH/pqk8230hHh/AhRSpHYoPijJb1kx8CBf/jo971Aq/xgbUGjh2jDPSGYMNItjOztgePsRbdCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773874494; c=relaxed/simple;
	bh=qgnJK6DNQwqTBe/7cgF21V6l5C8Su3yx5lu9nEjFkKE=;
	h=To:Subject:From:Message-Id:Date; b=X6SBOBx8V/GiWL+cFzCbSevTti/bMW5bJzjX4HIQ1AKzr+iy0je2/F1FZlF/+9B+O5mooNCbZJl46qTvcvPdXzH8zAtBptSiE06fLUna840drPklTYkUPCoXcwRXTBK8q+nMyXaLbCArerqtPRCe7oHixAmDUXmP1RpHgP0OFXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F01OwXGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F01OwXGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A683EC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773874493;
	bh=qgnJK6DNQwqTBe/7cgF21V6l5C8Su3yx5lu9nEjFkKE=;
	h=To:Subject:From:Date:From;
	b=F01OwXGEqCuq/hu0Ceql+T61oj8iwKU2BmWVflkGIWvEw44S0nbkM2dtPSU/4gCOw
	 RuPG6qmqb4ZfFXJRzTYbe0FXfasqvESmRilAm92bqV819cCkbjvrR3iuzuDaSRmjNi
	 Y1bFQHbIdlmc96NHFRkXebN6VVUScglzVszcZ5h6LkOLhs8aHoXgzR795pCSH20aD2
	 RNRplHqeeJfg1oxOylYQa2u7C0yKY2uoUZClxriR867XZTDMbxC+POKU/Wp75bTldt
	 tdTrInpV//la3CijM4Ysc5sy6D2smaNi0hcTphusHpBO+QSoR0R4Ohom2M9MgMf3Or
	 J2/HoTW7aOKlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975C61088E52
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387449361.13422.6058303066381139551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ddb18fd12f11bc9f4762fa80ad87652479a24a707a792f15f75939a95765e5
Date: Wed, 18 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773874493
