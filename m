Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3EE23D7CE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770498234; cv=none; b=ZisTOJBFqSyNpgB7pS1zLEEN7BFZs32G4jIFcmmP53PyR8fMQWClmR9OpR7KKlpgGPEIhOq/LK0ib0/kDZ2QoHsEglU6j1qKoNEx8e/+oq76wt9JhrcJkM4031OufKJo9HpTWtlKrIQ8vAKhtagBPLotzTDJmgxgumSmNJE6xrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770498234; c=relaxed/simple;
	bh=lfyVi3LACm9Hal/uth5hQv/5HGbRCBgTcieZ96tyTyo=;
	h=To:Subject:From:Message-Id:Date; b=TbQ7tbpU8yShvgM3JAnpkfAqwIWRlv9t5dAGm1i01vfl0dVdWwaEkoOzrbvYbZWhaBwanvn/9hWV0yN1Gwb15SVXsdcBRzoJp5ysmF73AJ+eP9bDor/WfHGSvFhaeJaZx4vDQsrGaudMneZovTxud+BispBj+XaMUvhB5OyZM14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0s5xz/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0s5xz/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B853EC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770498233;
	bh=lfyVi3LACm9Hal/uth5hQv/5HGbRCBgTcieZ96tyTyo=;
	h=To:Subject:From:Date:From;
	b=K0s5xz/VrsTnQ1WPdt4hMoXsJ0cTdlRsDnmSYPhErv00ACo4OGHND/ZwYcTjaR6TF
	 REbDfVkaTCkjpQREH8CxJq0uW8Un9ML2kETbWvbP0W9L4ntybV6lYb5+U71ZueCsJO
	 I3+b7pTQv0cFVH/+TENz+ZZFQuMg+xNiJ35PPty0wYHJ6vcJ2RVcIQ+cHYwLXfVq9u
	 NotsPIibPDX7u8LVZ/O7q//WbVVVKFtXZXonz/kmoyHm6eo8tbIQ8WtBO9Pr/Aizsg
	 UIxQSQiOj9rVIs+PFmxKlKIajmoJIWwGcJm0UdmTJk7gd9kOKU8vXWsksqew7bv1xj
	 cj6dwulO23oWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32B0EE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049823362.32394.17333242771916176491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b2fae109d6baf7992a2f08e8857eb68444e4d8184f6563add2542c8ab37503
Date: Sat, 07 Feb 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770498233
