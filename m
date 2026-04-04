Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF0A1684A4
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775291134; cv=none; b=uqfq38+vCd4k1HpbZg2YEryK73WF6OnNZSbymHAF0GXFz1s2PEU0uapMObe9FCSKi2+5N0S9oGCvrOb0wFFOUT60n8690y1LcCJM5YBEd6AlgbFA26YDR7Z8H7Qo4H5CvP4MecWr+5sQqHs6ZW23aYzOv/TRsZIH0M+oRzvIIy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775291134; c=relaxed/simple;
	bh=EhtuHu6RskzXQm6cOpSVUPHwAXKyzMnRS7hRgvlwVVQ=;
	h=To:Subject:From:Message-Id:Date; b=lyWio2KGGwV1ZEn4HxfqMaBsG/LkD9lbwBp4oIgF1P/MwrpwkTfpKwJr1uciahq/4myCZogtwqIZ9JdsVw8xRHKL9D6dWUsnspyo3zLAS1MQ9ZpfOKoHATRc9oli1tP4uYsM/kSHzrh5O7/oGyaY/Hg2sVSE8LbhlivMAkPXyQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXo78zpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXo78zpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5FCAC19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775291133;
	bh=EhtuHu6RskzXQm6cOpSVUPHwAXKyzMnRS7hRgvlwVVQ=;
	h=To:Subject:From:Date:From;
	b=lXo78zpEwRS8SPkc3kq+a2Mvjc4pTodK0PRsUZPzSAvbO8sOls/6M6dC/zwHFhLT2
	 U3T4thNlky02fov462KaO6mzIhtD4FaFNx6KcpdoRYojvFzUrKJzcj973Xt3/218uz
	 4DnzWSCYbyCWPv+NUMlWZ94xmVZcLtMtzvF8o0+5O046oyaN5gfHSgLfkCYVbR2+kk
	 dfWmNz2V6EIdGfp2P8Y6ROtWarLkdUs2vZTYqdyml5IPNW7WWeaN8XhdCQEXLkOWFP
	 VYsWfBhzN3lOHU1yeGqccMz23HlQvaftMXjEGKxsd5gQFkRd2Dgmrmjy6nKN4V/srS
	 4Hze1M23UmNJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FF8E88D8E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529113369.31602.2869051342816413004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1903a84a5eced5737fc8a62d7968d27d93c904809bdf1b6902d759a55d05b2e7
Date: Sat, 04 Apr 2026 08:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775291133
