Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F034800
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782605314; cv=none; b=plrUXaKJY727MnZhgGwDfv2t0vOBoTJ4AzjqxUxyKOVheXKTCWHM3b94cTzVjltvSeJlcowMrVXCqF/WwYM9wyBuzs9sDW7270ed1ZbLV6AlUlBJIsfK7uzopVjOeL5jfla+rCA/+QuYXzGjSawbjTDM/ZWujJcg7O38LtKlS1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782605314; c=relaxed/simple;
	bh=LgoizQQPrAqzgvXbFk20gZWJ7LkvHUzlDI501Fuq6LM=;
	h=To:Subject:From:Message-Id:Date; b=CdvB0DNj7vIQXXXngKSR2N7jkNnqD0Y9mPneJ/iKzG3YAdXZKbw/z8mLH1cGGJJKa9odV7YWcBVEGErBAXPAmt+YYT4o0GJLYEIfJ3LVZvWUlrV2fQqOtHl1w9iAn4Eau8u0hfs/h96Q8TV5ILJpLYVFdi0K/KulsLz/YQOb+S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWnLdmVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWnLdmVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB857C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782605313;
	bh=LgoizQQPrAqzgvXbFk20gZWJ7LkvHUzlDI501Fuq6LM=;
	h=To:Subject:From:Date:From;
	b=dWnLdmVnaSfBFxgLJiJBn8+Cs1v4TtK6tZ4khsqWUrvkYNA80xxZLyXt7Mbh1sc/D
	 h9w6LVGI31E/J8LEOkA5Ic/kQ/UrNTzgqhPTJyOKM6t6IjE2rzQUny+qwAtXp9JOWw
	 y8WfRvfB9/EKu9oK7xpOWloRDs3oszWaYjOqjd2JVnQrnm0T2BFCH5NU49Jk5JadPw
	 Bb4mSywgoVy3BIN9uAIIf+mJ4rG9+OjeqYxy9dYNLu7UH/nTDto2QLgovZu2A9G9kl
	 IH3z9TxL56LB8X/6+fIEkwqsg5bztVXf2XPNTf+yYA3RwlCcNNPyuUjmsNpR1lxiy9
	 tQqO9keqjJfMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24D9C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260531369.5313.1896771751276796027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5484f807b65e70e6fc3c12b400b18f66f8d76dc5afa86a357e924e13c32375
Date: Sun, 28 Jun 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782605313
