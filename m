Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A7B313E1D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775826454; cv=none; b=h34BLFFh28JMgMoWdZnwwKXELC3mlnnHYMiadJkb7ijnu7EoYqq00OrG4K9qIAdMXM13rSaOSleil4aMsaaVKP0pYpTuA7Xx8RIrQzwM5pl9rEcfB7nJIgGBxGYNknVbKzI+xSEy7/Waeums3CxW7xFvZQAPA3uRQ7d1yvriWyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775826454; c=relaxed/simple;
	bh=i21wrv3vzgoTX7sPmpeB2E/uNv5MqTCZdtmZ7x0wxNs=;
	h=To:Subject:From:Message-Id:Date; b=hURpL3sgOsubmxkW8UJCYWdHT+IaNhgbRE0nAtxHK8pyy4ialjpONWYqpP6lXLCSy18EpsqVi3p4WRSZnnVUFmYNp1kDEcaCaDLw2Xqmqqp3tLfc7FDEUGw2tqrGP8qQZS7+BFXu+Id8OeoF0FDEa/2ISO6HulwFS6La3eIvvw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhW9uXiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhW9uXiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA240C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775826453;
	bh=i21wrv3vzgoTX7sPmpeB2E/uNv5MqTCZdtmZ7x0wxNs=;
	h=To:Subject:From:Date:From;
	b=YhW9uXiV2YdIeMWRC6Pc71np6WoYLBJliNx58elR7EhwR2O9e0iqFH6xLwcuFjMV9
	 nzf/zCX+xCxa5D454X8LSwxPJnMshF17RbuMtd0PU/fCloghBhS9TJX0opY4V5tRBX
	 rPz7KTwiKxaeU4fCuY1yS8wp4b6x0V6kgYgLgS/5BtUKFq3CGP0Qw8boyKWDCaBNsJ
	 atVYjTq4+BmMH+jIHKDNPefLC+bP4oDnDEM8nZ9PovNY5UHNSSBTttQcW6k4bd0Wa2
	 xoBB/EOTk6LDWeH/PUn9YCZfy2T0qRjU6Qgr1dWmrwgp4OXHXsSKUtIwPR6td9HtfE
	 AAnr8Y16MU8PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E3AF44855
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582645368.26395.11806374356289955353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f78683990904d8175f7ccf49fe7ac173e4073157113b9e1e9146dcb667d9f4
Date: Fri, 10 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775826453
