Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDF52DCC12
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747964394; cv=none; b=C2ko8Z/PI4mWBhvQwY51mOIwpRvHIV+duhWUfvwJl87CnjOTzSyPmjIh8fYfJfaj0bqQ2mmnL1kkxIak7iiNt3mQ3zyYRr7EtX7jKVo/+7rprl7nBqEGgbNVv1s4ONQHshNM804J2R+TSCmjNek2RMFgjBU9opWyaGW5IjX6no0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747964394; c=relaxed/simple;
	bh=JBYQp6fX4gctn6H5pWp2hdeVqbTUcRX8XgugQPmWLqk=;
	h=To:Subject:From:Message-Id:Date; b=VIIZ03cHO0+O2PmUATagQHKU4SlwyzIeNoNUdzW3eQ9Ffc3LJUGS6K7PgTBEdS8xFLCxzQ0YLRYc/CjWwpp1chozsgpSAcW3SBeE9U7RbKPVbDQlOoR9J+RbyYTAKuA4x6AIqmnIbr54fL9mZlmBC1ARc2MVusrRhtRGDnkDMcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBx7D24+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBx7D24+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 991A3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747964393;
	bh=JBYQp6fX4gctn6H5pWp2hdeVqbTUcRX8XgugQPmWLqk=;
	h=To:Subject:From:Date:From;
	b=dBx7D24+ek1OEEEG2s52dwbPXRfL4TRzkrJEQypmdIkMHodIqk1ANZBR6em1Awn8N
	 BHWy9Cjs5sa9ltqowUzhr3wzZ9QArEkl7Xob4XKwBwXTA1rO/tbFokwJdsjPSsxl0R
	 RfHhleva9BcZcQwNmSFppj1NGy6/CiCuN+pFEhdsifo0dxl17KkScE9ooLQ4OakkYF
	 7w5ZMt256isveh+bBEWR5ivJ8MoDQSN4zIO6G4pCNwQH/SsgOxLyN3hrfk5e7Rzndh
	 5Rz0/Vr0zKy7Mc7A/bngZ7taAorDmZsbXWAx1kt0pvGS2W3phV1/ESBxDe3rEwolj7
	 to1trdfaH9rCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F860C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796439357.27337.17214891750368383650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8eac4b31d551aea211a69da7b35708f2834deedceb4c48d3387edb34da70fd9
Date: Fri, 23 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747964393
