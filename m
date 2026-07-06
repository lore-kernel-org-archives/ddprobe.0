Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3145B3A6B73
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783352314; cv=none; b=Rf/i1eWV4raDtbCeVN6E3s/rzIQy0M6pZFMoUTTsCadWWVs0W8ivJgd5GwZlbDipOpVXXlvhpYWHZkXkfkUE1UplYeppvMUzTB+oxEK0g3yM5TvGXNhsJoc4X89n84zKJErla9xK/2aw2Sb3ERC7orZ3sylmvrJJDpYXysl4ziQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783352314; c=relaxed/simple;
	bh=sr5ykjxZcO5TSvpBKAJbmnwIiIlDkvHrYM2uroR7xO4=;
	h=To:Subject:From:Message-Id:Date; b=HvjLCr5fjaOh0kXx+ebh+rjT3IM65y7Fb59OuTfp7/Q1B3aOJctlrW8gXXG12DzAs9Lm4yvY2wEziao5lvtElzsnFaXuGV5PBqotI8h01pOuT053qFm3xcE+1GzkIEKegrWkW9AMROuqqxntk6gxG8UfI//Z75dwj5Vye6XH/lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeKoqu0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeKoqu0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB90DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783352313;
	bh=sr5ykjxZcO5TSvpBKAJbmnwIiIlDkvHrYM2uroR7xO4=;
	h=To:Subject:From:Date:From;
	b=SeKoqu0ZvQkgvxT+xQTZtTwSdKSGPfv1s/qpUC2WJoCyAZWmAdvkBxA/R2u8wfYe1
	 0/BV0zBtr/7VJp7iiKjodlGJVzHO0BI4yGpIXWZSIAZnix2oLUJ0uMH0UNBCXPGHy5
	 fhvMk9Xve6h80eJh4Ynzulki27ptKoo24jGeMXl9QWe/4YhnOFBuwSTru8npmgfjo6
	 9QF41/8xATgKJYoaEHWGmCef58BiPgzQmO94u9S5v/mu7AzCmRv6XwszBWWMVWg+SD
	 nPiPbxsdNMYOXd3S6d7UR88h72rx9Jyv5dvG7righgd3b/Xh+bxTQn0OKg/2H5LSSa
	 CcOz7T3OzQLlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAFAC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335231368.12157.13545718936220353805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b457390e2cf6087e043a0b6da29ef47e9aac8a35ad2609b301a341eae8f8780
Date: Mon, 06 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783352313
