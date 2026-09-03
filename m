Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F7F391851
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788474034; cv=none; b=NFCnDylIw5kEtZw10fEVvydWCLC1TYwY8dh6SFEll8NbEw+jpRncNv7dhEzZm4uh4uQ+ED3GizlDXm0AAQKFT7drt0OJLakk7gc5r3Sw6Iqca/uwApNWF2/V+XytHhZr0noIB8W9jZETg7eBDGTX8GaCb9jI3fmfUUUYkq+JgrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788474034; c=relaxed/simple;
	bh=sejO2JS6NuPTuQkbenP8+oFLtJmKV90q2dmP/cJ5rAQ=;
	h=To:Subject:From:Message-Id:Date; b=RKHhVGHvZUmOu0Ti9+I2qyXo+e6/pM2ahkxCVfeL5JaPT+uVxYn7fZYVGcGf70qETQ2JgM7lvhKC/wkmVmfbGgOeAnDBvdYVZq+CSsWjIZj6Hg8C3WJrtLCvAc4q35h7RBHJ2bFQAuccSzHqUNmirOr9FETe8UzahmGhzusf3oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q628R05B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q628R05B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4E0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788474033;
	bh=sejO2JS6NuPTuQkbenP8+oFLtJmKV90q2dmP/cJ5rAQ=;
	h=To:Subject:From:Date:From;
	b=Q628R05B8KVVo8cLKbGT7QeU63H0jE7CeZ05iSlM9h304TgKeeC+tuXjuUwu/N398
	 BDK5BMHnyTtdNwSefiohZXFWiusBHbdy+pIfZ2bv+fBTrR3WmEFnwFaYdwUGPf7L0c
	 HnrxsR/veemR0UndSlS8VFxZq1UdJNEibqAKY8hi+/SPKktwMaBzK4QfxZmUS6qo4c
	 c4q7y6IeroKkCQ7bw90d0JgProuuLA+YCSXt7oaOctOLIhiezpAqjHyHRpZasaiUNR
	 UfP+Mu5lopqidk35ocDiNCz/EbI9OaU6z6O4SMvpq8mwCvbw7tchXeLUXOx/IjvrzC
	 uo8sX6Q0YBN/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA503C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847403368.2817.16744993227061821035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e443195c35108f3a993d8a098e43dffe360e617033c5bb6c43adca292b3d337
Date: Thu, 03 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788474033
