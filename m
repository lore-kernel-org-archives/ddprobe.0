Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067F3846A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779824554; cv=none; b=sWqucLpTzfUXCEG4wGcn3bPsy5diGh1MJiz9d0MWPclxdwbY5OJz6AVa1Yiq4tMPJN/qN+GfzugYWFG5vAnCikqtzP2vQyMwiHjS3UV/KCr8FblZ+Mw4PpWMrPKTrlX43o75zA1kyAB7prZSYmuVT9HgRA5u5S2AyOuSw5vYJxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779824554; c=relaxed/simple;
	bh=PWsPvMTBsH8+z3/QrgHczk3NbzoXyXVPEDMEeinevRI=;
	h=To:Subject:From:Message-Id:Date; b=QPj0ErOhXARm3kzdtVllgzDO10b/Ya9UygWOdZVwDAaIda7l8Bva6jpTtR0nX51szTzSL7BQfOAq0/HuuPgFu9O2su96AzbGWXIGvVtkvihonu60UFkTzGeQBDemE3XQRyZb4dXqgDk65dzGroSfDUpZUvSKakLH5oRynV3PlwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrnoaeCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrnoaeCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4969C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779824553;
	bh=PWsPvMTBsH8+z3/QrgHczk3NbzoXyXVPEDMEeinevRI=;
	h=To:Subject:From:Date:From;
	b=ZrnoaeCO33DDW8UgSdqzWbZh/mgVxU6YM8TXbG6P2oeK384XAd9vTB0jrfTTIlgZW
	 cqlU+CtcEJiJCuuLcNQa34FdFFMmINnlvXokEoSdZfeCgW7/BTRQ+/weqAkN8qzVgM
	 kz/qwMIT1Mt2y8ONu5s6yIGoxVve4k8H8OS2xvMqOcV9VwqamYWC5BQvwB5RM3dRUi
	 0bJ+/54De0PCtpbJnvxzGeHhxlXZqwKJYlBGGTEZ+6qp2fFPn/ubgjUKQNmJGsXkxD
	 FmJzuzbWCOS/qNvR+5Fnm6F15HnQVkfsQfP2VIcFMnQO7MbLi5mcg7MrKwpeN1p1Ob
	 rhTlAQhKXcG6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA36FCD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982455368.27875.1063190942365151747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1879d5d99f56b7172f0ac63a78f8f5c23546dca3724e0521ba43f6305578cefc
Date: Tue, 26 May 2026 19:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779824553
