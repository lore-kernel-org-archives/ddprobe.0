Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE69477981
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790331034; cv=none; b=qf8mPpjqHcvgi0qAGYRg0Vw1mlovHL+TEjd6ym7IFOg8yTAE0zwbNHBybCjrgDhlQVMYKNc1D/oi9ClXgUCKlc7TrJuDhKNZQZRI+G/6JSKM9cXCliv/H3bErxUR25h3OxSlMatUaWf6vgibHqM3u+ie0pi3CL/tKrPnKA/Es+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790331034; c=relaxed/simple;
	bh=2yNRRvT89issGQRkB1Tzf6TtsczdMBKLQ0X1MfdkKDg=;
	h=To:Subject:From:Message-Id:Date; b=R78i3D/F4jX8d3NuiXUDLWyr9cQB9WerYg2qYfsKtrujEU5sPooe027MXFFYT64QKpGoRCkcrqVCZ4Kiu/Kv4hdv03Wsjcty896iuV8yZR89QDTDq1bxnmc6uSuv6aaHA2B7UJ9WGUa9irYG8usUz0tBE5Yn+3hly8zn24oZo04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IV7hUWgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IV7hUWgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0199C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790331033;
	bh=2yNRRvT89issGQRkB1Tzf6TtsczdMBKLQ0X1MfdkKDg=;
	h=To:Subject:From:Date:From;
	b=IV7hUWgoerFW+GuPGwTwqR3yFH3SJT3pwIUYKxX757xPjDeyPpX3S9b2jxaFr7p85
	 q4tr4qeM96pqh14vFRBcwRlM3aoPJr3j/9/y/mXzIQ82gNWbzrtDTBuTFFk2JA6h0U
	 IzdvXrxu5G97xSVrEvgfagumHkIqqXyPOaOWAOVc+LpRGvwlA62odGwtBdA2hGYhFM
	 ZEXwu6g+WvKZvBKHuuieVS5kVt6qgLAVl4kDrOCQCv0ZU8u5bKdS906K5jmHak98tq
	 WRyUCOMtbOm6A66E6eqBb2o/8FcT7Qx76PonAUXCXHTZp/HVVAEZ0CNQYD3mWTXl2M
	 tlIBHSJJGYZkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD6BC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033103374.23117.7029915345559080779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c08a94d7ddc6c0198c678a89beedd81d846bd7483a1f2c1f032ccc549baf441
Date: Fri, 25 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790331033
