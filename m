Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467DA17A30B
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744769994; cv=none; b=oL6fZ85fJ/EH49aWc+g1cGVk6lGn7deXvknQiWhCThjnw+WCDhPWpUt0k/rAxSCGjVYAMeBq8hdbvk1HaBuDEsqKWBkI3mESZuXrWRkpUZi+wotQFBofrj6hFIoTdhaeR4mmIOBA/ThvrOD78VilsvqayPKEfZ+9nOPeLVm2NWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744769994; c=relaxed/simple;
	bh=m2pNtCyYQppMwuMgEgJ7tE9E82NcCn06+ZOUNxc8tVk=;
	h=To:Subject:From:Message-Id:Date; b=LiSQXK0UkIfgKSX/G1q2YHjuDH0/6J9XDL6TTly1A2lC/aJLE5f6EganTbolzq2S56FidzNZTeO5IMnaIkENcNDYvDhZGDmhyEaE5v7IRAarWOa+jTc2jpLQ6NOoZSondSeJUD+2F1LY58AwMMO4pm/hVB4nmrlEJEsYFVrs1yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzp/tMu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzp/tMu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9295C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744769993;
	bh=m2pNtCyYQppMwuMgEgJ7tE9E82NcCn06+ZOUNxc8tVk=;
	h=To:Subject:From:Date:From;
	b=qzp/tMu3KYFpzYz96h7oBMwQpN1r/3EyddvRnG7QHIZkXhOsRVLQjXHw1HtpC35p/
	 c77IRvIzKbx+fk4qwGB2BqdGwXcoHVJNr8p164P/6B9Xo8LlCi6BdbpB0FxqnaJZ2R
	 vduDLH9Gyif2//AVGUtzOiqCCEiO4eCgyIf/G2mDdqHDE0wfqIgvG30eaJ8kaHp9k7
	 6pUWUHrh/PlmTYF6EezJu9C+AlQHb2V7KoR5ZDaVkHl0nHbeE+7hq7+JWtWtbZxRId
	 ot/HcV3mLiYgl+b7PKVrAAzRtVaP6tjkbe/iw6amdyjaRCu21U7XcgSD1uOR/wm1NW
	 cG+IZnIF7eo2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93964C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476999359.12760.15046906556998496345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bff9051a9956986ca9f5e36ef8a4499f224642c29f23708f54cf27a96062374
Date: Wed, 16 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744769993
