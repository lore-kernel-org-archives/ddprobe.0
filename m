Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DE318B0A
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786941034; cv=none; b=RQMp8ByDXNiAGIOaJu8EqwlW6GJvb+BZ2pFD1HHjml6rPNMNl2YqfDSeXK+5No2Ehx4M7rn4y5mOWvkHRc/UjCjaovB3aEpld3els+tNVUCctWhD474CHRMtRvtwdD5ph1yG6NWHOIB3HCVqyb3rK5hPE7qi9ms3MIEKwUAMDDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786941034; c=relaxed/simple;
	bh=qjhoYjfBcIbfnRBDsV2P08Wo5I3Gr7PC4QWFfAH6ZkU=;
	h=To:Subject:From:Message-Id:Date; b=nIK/Db3I25k6LeYN8QLUvLYlWYMCgmJUtE4hZh7f/06B1nrUa8ZYBwL9hi1uAbFu4lKxcBuyP9Qi26V35NZrK7kEoSmxv403fFzpP/I53yubmr175IQDwMvEQweOC88zBaCCWlYF7ofRS4fM7RN1T1WRXYHUca8+sMYSLa1lEKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmsNf/xk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmsNf/xk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11EFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786941033;
	bh=qjhoYjfBcIbfnRBDsV2P08Wo5I3Gr7PC4QWFfAH6ZkU=;
	h=To:Subject:From:Date:From;
	b=fmsNf/xk89T3Db7ib9geje/csglpZqsCvtqn6GiGDjwFUpqs7xi0pcjeyrZTXmBHB
	 UofW7Ox5mnU+4FpzvKgZi+gb9Xpq6GXc/V1IKUotIlagLjcfUNtLwGuXmV70t1kleX
	 RbpdL4xBDmTto1XXLiRIVePiGfUrirjGHtJDX0gNdaqnlrrQ+i/SRuij7j7x0KiVIK
	 YW1bMLeqEQ1JwUtr+J0nGV+a9y4WNxm+TdsgE4x7CWWkquNSUcQ8uRyPDC2mlYLDZv
	 /36wjlMt1/ku0TnDmFIK/am41SMy/S0YjVkvDzFQ3yaNHMHoyzYU0KOiPYwX363t6F
	 +m1j4a8uLs8jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC929C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694103369.17960.11483265048532819583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf4c5e29ee5070cd703ea12fa8f97b96f7f3274e490e4e092042306d21aebcf
Date: Mon, 17 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786941033
