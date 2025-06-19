Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3164B1A23B1
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750297195; cv=none; b=pL9kOgf3X+bZn4crBbspxGJ1E5O/Fzxyh0bclXRpo1kslc9wq6hAMHxZE/vFQqpNoxflarFM8sTnWE+mCNbByC6JOE3mqdGlEDWRREQV92xABqmSWPYhQEh8QrRA21HMhH3k3bRsVJZTGV1ocodVciY6noYebuEx6Iv3jc83gCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750297195; c=relaxed/simple;
	bh=156f4mAMDSS/t7K7aq8tWbQ6sIc/QLgV35s7ErhI0Iw=;
	h=To:Subject:From:Message-Id:Date; b=IIDB0TkK3ZZARXOSlDOjBZECYXgAAvRjIUwFoMl/jkzKyHUO18F6uJTpvOB02sQH0iuPxvJnzLa+LmaxOYKk46U1t4NpZLYbb9orrCbNT2xrOe50YWvhec1bq74b95+kJW+EorneRqnnxicTYJ1oXGkesKtd7jVlgT2fJ10X7k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1HjaLo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1HjaLo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C1CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750297193;
	bh=156f4mAMDSS/t7K7aq8tWbQ6sIc/QLgV35s7ErhI0Iw=;
	h=To:Subject:From:Date:From;
	b=g1HjaLo4JUMsoREROqIDWFTv0VQ45qALgN+7atxD8a2NtUINE7dtQzWSHQnozuwkF
	 u4WhS+CsBGEhUnfQgSub0mdFLzHREsSpjXP9I5Q84jmikoG/8P7mS4BHidzcazRQhQ
	 cQUpopY9YvfsEwho+KZtadX4ockGsTzfd/CCWE2VUW6M2+rf8vYJSJVeI0aLT2FNxS
	 8hh2Lmj4XbXFRgY/g21fHdYV90myb81KJUFg+d8B1lFRnLlrRN+CEmT9tE8uivDG0W
	 5t7vKC0claQTy2iyEOyLuGw7sVq1ufaZpD16Ji1QUxj3YIjCVvXRa55XcjnHeDaDAR
	 6LpUCNqZyYCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD0FC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029719363.16145.6336405683130159540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aea6514d3c541a77530d277e628df31738689aca09d05550a39d0c9546a21ec
Date: Thu, 19 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750297193
