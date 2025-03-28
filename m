Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1EB19259E
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743172193; cv=none; b=ajWKI9O5Y2s4GpLN0SOd8chFT8m5wWP4bGR2iLz3lxeidPDqFmF2wRCy+FMr6jyqOOhZ6Eig0Zi4dO5YbPLaTW3XExeZ3tPBAlOUfJFCH1tlIJ1bhXflzgmo/Ls2Gj7+MGf/vrv6rNfsNJgCO4bBfrXjP8GCz8tjseqBGC7LjIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743172193; c=relaxed/simple;
	bh=rkIFsjjp63oS+TfleuZ2M1wGkXkltzYKaCJNBQ28OzY=;
	h=To:Subject:From:Message-Id:Date; b=p4hAlIXAfB1X6SaZ9BvSrs0nwLssVQzq1b0BXXykdMggJh8Xb8yxqt0YBjIqaiLtabGJp9s9KDlQLJFGWDzvlsyhbyMYZ4ZwerB3FYPquznqV/Z241DhACxyhwy71dkN9t5QcdrqTAgMSFf0tYXnNBVnSRkWvmuhIAPswuL8oIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvr+Kxe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvr+Kxe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA140C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743172193;
	bh=rkIFsjjp63oS+TfleuZ2M1wGkXkltzYKaCJNBQ28OzY=;
	h=To:Subject:From:Date:From;
	b=lvr+Kxe3Z30ZgCqS+SZDzQDihGfF5zKL+zhhymaRdl0VN//Z2GEYejRrPzWe/Zdk+
	 4B29bwS1yD1ofCznSdPBt2RaxCg5KEU2WAZIdlZXkbNNPmnVL5GX7GPO8mN8XfcC7i
	 nKWPIMRnpk9LxQ4tZiGnbppiiyCtuBwO/xpxBp1iKUV+CEUcEtHHYN6QgzrbgZD6ys
	 Omhd2K4bWPTtzghruSGTJdhYevZb7RADWea9Wgt4s0qOO6E0vSDIf0LwwERfqk5mqY
	 oZchyLq9K0IFztsk3kidQNF/Xd16VrdaDmMwTk57mgSbtNTptiThRCFmxCU80PKghU
	 311ZbIWiJg+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A818AC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317219367.18269.5531900542767819443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5d76ac5d36052f98a1d466af1323ebea2554279817d85b6d88b95c2e825659
Date: Fri, 28 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743172193
