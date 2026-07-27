Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268C8416864
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785159634; cv=none; b=oeTz03dKrFy2xWlN4pcvVDkKazcmUkBc20xmi10hweOVLvFz5nUZJAAx6SrGnlOXW8fxtM8m9jkODjMgvxHT7QFPooEebUXickBcXxowWFUblq3uENDg4Kqzymb6wF6MiqgH7awUUEOHaLqC1G+3hnGngA1KCzs58kLqOEPrjZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785159634; c=relaxed/simple;
	bh=3yAKzaG9pJdWaeMh7lyiFoYz8RHf8/i7asSDf6Pwdzw=;
	h=To:Subject:From:Message-Id:Date; b=Q3U/hr/bAhf2oXN2CnUq1k51TId5JnALrihpXO3dJE9pQHEZ3chWWQY6TIASiv07mDm/PiS94x6oSMnAMHO8DK7r43qo+msxWpWiGtRp/OXiRTlmWTNLgNHl2QW9dQ6zWTJtAkYnzo3eQykcxLEkahOdQpyxC0zQb7qbUKJV17g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG6Rt7Od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG6Rt7Od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D760AC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785159633;
	bh=3yAKzaG9pJdWaeMh7lyiFoYz8RHf8/i7asSDf6Pwdzw=;
	h=To:Subject:From:Date:From;
	b=SG6Rt7OdBalEc4Q//YrrkDJRw5etPMFhNYorGzG002xmSj9p2UUkLLNM2kaL0v4bd
	 WhCfjV3YIx8p/ETE3TybGi6fcWHmygMGY87wtuXFQ9BP7uAyIA3BAeLjnjCoZcY+bS
	 4ag5JjT4nPao8TdKtbFpcMS0a5E2nDufnlmHyXqFXc8wO6KIQFQXH6hZQZp0X5lul/
	 GO8N6tvjpDnuMfcpoQWRB7/BKERAkamUexlpQGpZ35yGogXqUjPJDiJXbVFfR50HNC
	 LPHO/OBmq+s+DKYgvi4fBNdjcC/HvFvZ1vyW8zFl9GUY9d6WvvZO9NipYWdYk+8zsT
	 labN0O/06gZUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AE9C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515963373.21156.4067953163283787853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11bf0a27f77af06dd08181cf5a4ee72b1f8d9fce7937915b0c33a4315fde4e80
Date: Mon, 27 Jul 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785159633
