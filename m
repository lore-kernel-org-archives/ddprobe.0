Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F512D374F
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761373194; cv=none; b=twK9tBpik8ZzQEYBEjrx0pQWOxfqVQVVNd76cmYydnLOwRqAyGTwZPeRaMNH00f2KLD3bHOmtlfKFCils6sXXaHbumUJeEv0HUiYxP/BDv22Oh5+NT77QVrKPV2ivK9VpeckO/Np2uDbS+i2w8rscfu9chWldYaQeNuwNMzPeZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761373194; c=relaxed/simple;
	bh=uIdttlCbkX47ZHlsi4v0dDvFNa4d6oEwbecqCWSK0fg=;
	h=To:Subject:From:Message-Id:Date; b=Dg1u4N0jMXG/jBgE4ei+Y6W+bbVXL1fDFq8/sj/J/xfCc6kLw01N0oCwZ+NtY9yj5HgO+ZYMnDSKmuAk9i9nppIahO0u/bvlPy9uaVQvnFdYdy6PLSWZdlPl+H8j7Y/CY/9ajuSUFeG1dWfnTtUr9dtIsCVupfWoje2GIgAIGIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPDC1jD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPDC1jD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FA2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761373193;
	bh=uIdttlCbkX47ZHlsi4v0dDvFNa4d6oEwbecqCWSK0fg=;
	h=To:Subject:From:Date:From;
	b=ZPDC1jD4UeCpfpZm+Lr4bewWlR1JU8ejYhm8yER11eR8zH/vfjMjdx+k3+rl5xaI2
	 llXC/oaPY3PXi1dt0VLYg1nSOvalGODnEbHH9QXX8MC1zVOBVkjzWJv/B3ku2XMW3R
	 MhHHWWzjtS7/4gDdr/ZbhGybAzhyV8cuQ1r43uIfr9j127AbkLAm3iwEO5b8vMHiY/
	 kzRfga0ZJGIq7Z6IKeBWFyATO8dvnQnRlggqBv02t4uU1W+MlOTYmN7Bgqw1UV+xJ9
	 G/+rf0E1gMqb56H/en1h210aN1qz0Txt8uqJuY1NvxC4aq2Ln8WjNVvXMFfbUcXU2t
	 JFH2zQPMGcZjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B64CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137319358.14850.4832824399274845177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06192697a4dfbd2aaa412d41d2ea3cfd4e9a8013d76de5ec445f4f5ef5ed16ea
Date: Sat, 25 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761373193
