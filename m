Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF132572
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721797554; cv=none; b=rSyDYhJFbF9HGaNqABob2lbyujqYrg8FzVvQZKiex1OzknQQHdTuwv/iIeopcu3SGybBIkansMu+BOVoXcX0mb4NG2rIG4sr91MCw/RYq2biusLQGqNrs37WlLq2K/3NWNiWy7ncRzQM2MVcPZx8ujs5vPKQ9ZnVj733aGe3cT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721797554; c=relaxed/simple;
	bh=2o1LGx+jowcA6Kc3aGUsXwqI5ilvXUXjJMLbAwf54LI=;
	h=To:Subject:From:Message-Id:Date; b=IlU5rICBS8w8dl54fBW4osE1QVvS1W2k+oFPRCeNX+EHk6k0wjDt7VvxO8WrEcO1XUM+EDyyMmeCbo84HRTmN9XEHraB6scAmi6lZxNhWEg0w7e70kYEcnUNsiLeox+dyQcPsjVSZQz3rrHRw8ZpzKXh9nBli8jUjqD0Cc/fBDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzrKU0Ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzrKU0Ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE16FC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721797553;
	bh=2o1LGx+jowcA6Kc3aGUsXwqI5ilvXUXjJMLbAwf54LI=;
	h=To:Subject:From:Date:From;
	b=rzrKU0UteRvIWINK5hRPYjrovfTqqZ94cDag/bkIe9j5l77dqODIdPWPesvxvgun5
	 +AVGK9N0nmgor+YLb2BCQ3O0Frkva9W6PUA89cJfAVuSdi5CoJaXm5fNIJaVAfuXmN
	 I/pqYfwKdhtJ8PtnVfX1zI7emvaTHTleqVCgQexPuGpSqG0PvI4Dd5rAShQyDqJSMd
	 rLvWNaCZtDXnLUOUuQdA3RYJxxXj+tdsBCAHGuGpsaJJSqPG+rRcLRMFhUCWcHIDkA
	 N2ucp4ugN9FQM4TPQYKUYhjOZLUQZpgYVo6iLHhLfzka1L3HEuMcRLuuuGvtfON76q
	 vIrlotfLswrTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9562EC3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179755358.27964.15318173180238350035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c34d3f66da8216a8deb1768b5c7fd0e106c4b7fd5cb033e5f777dcfd56b8c0a
Date: Wed, 24 Jul 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721797553
