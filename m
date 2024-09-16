Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7D9155316
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726496154; cv=none; b=XRZ8kAlQfBhp7U+F82z3vXPL/aNOq0S9oJx+uVy6LFY5mCCegzMSEH0vj52/HL/2irsyHbERrNqoUbOzPZxXxnbdX0hxkY2uVCjeWkMqr345shbMOl8G/qudimZTqgIZwnsws8+oJcnBfuVKqGgVqBARiwbtyHy5AsoBNGzf5dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726496154; c=relaxed/simple;
	bh=oJFReC8TrRxrBLKOqOw7huc9EeHpdpgOosWKvKkSn3k=;
	h=To:Subject:From:Message-Id:Date; b=SB1xjyRGeqzDkeyMJiw7+t7cB2gWEaI1RqA4+XkMOj3S4T4Opq1kgK/GOcjDL60gBkyCuGU41uvlCTrFQ9LEiej8Ahl4TlvIP1yhZQZMcsz+pxM28d9zRjwGaUaDno/vueqrscnznOquAq45RUdAnaE/FQ1wwBqjqMM/k3ccc1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJIZ7n1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJIZ7n1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34F4C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726496153;
	bh=oJFReC8TrRxrBLKOqOw7huc9EeHpdpgOosWKvKkSn3k=;
	h=To:Subject:From:Date:From;
	b=iJIZ7n1oNPSWDhwYvluLtSlnP+J7qEvsHeUp8YZSkSwaCFA7uyacQVUFs5l1CAtvt
	 xuUNU7TIIxT63gQeyiHyhvOgi633eCJOIHQ+3wCFl1YuygFjbmYg7pnndI0VT+Y+mf
	 kk9k8WaTi/4/y93AUbdSUaH9kzSDApiiWiExB+VF/4/6TuOalIJUC6ElW/U+xbbxxA
	 Z7UbRoez46FRL0XXWMlo6I8af9oD/a3b0G0iD/pufv9V71baNMb2GsJG6xcsxhAOvl
	 I4/C/dPVv9zSMIiOBxuBEIUZ+pfqTW3rwU1+l7OTZ3MwkbzP0Ssbuyz+jh8y/Bj6Vd
	 TSoDEhNsfWXhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99945C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172649615361.8621.6542230241485544602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e008131bb87b2efbece137e5dc1d1d604b9eb49e2ee6b47d3f088b5a2fea9eb9
Date: Mon, 16 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726496153
