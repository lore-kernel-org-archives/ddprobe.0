Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FAD2BAF7
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754221794; cv=none; b=PDiMdzRQ2E5s5HPEbmD1nmwA85bcKhtudHPeaNO6mREMs7wO4z5ZSnLDUOkFgS0kyzB7ekja+jQ0vfEDFA/ASZc+QMiMyHsQ6goULs3UEcVszYsb3NQTN2PUpsj6HAyUb6fF+ou5X/RATvqNn+DnuRV03sDmHn7RvEJRarD6RBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754221794; c=relaxed/simple;
	bh=wehOdNi4lsg/crn7usonKOJj5GqLqvl71suT6QHKWO0=;
	h=To:Subject:From:Message-Id:Date; b=Tkapz+R5iQfvJKN+bTc0OjZnNfszLnw+fayp45g5GLw1L7RPfPevjq0Qah9YRpqq+8h7hpoFz3AtPf1xz7P+SSRJ6Q3yphXEoGt7eTYhi1OM3uszwwiavc3gmA4DM8qCs6QUfsKEN73bFA8f97vjVIzxAAe8s8W25cnvYU2YOjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aO+PGDB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aO+PGDB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3304C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754221793;
	bh=wehOdNi4lsg/crn7usonKOJj5GqLqvl71suT6QHKWO0=;
	h=To:Subject:From:Date:From;
	b=aO+PGDB9HXXRRXqhVH6DIky0GLdUWwN5sjUKQMH0sEST4lUdraG6zfGKILXFrO6D4
	 jKfdU393Y7IKXQfzAk1CShSi9hzZ/6XOcxflF9OJ2j38zJMhzAzRXt+FNVrMdOUSia
	 hnIuly4P80NWnrneO1HVTWQo9uLNhEFEBZ5bn3Bv1jLppi6O7563Pl0emAJ8vRh3TO
	 Dl1WZG7y4oN/Otr2UeLpuvy83rR0r63EfkvNMtLyM71q3Bim2O5QA0pLMr/qMC8pYu
	 aAFm1AJVtrl+K37kwV1GsgXAfJwBv1nyYeMEgVFNwP0pd5twrFaozyPgcPx2x9AUmx
	 eYGIk1LCuQP8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9124CC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422179357.9822.16400454360893420511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94db4613a5edd1b8a8f6ae963ca72fcf6faa384d9cbe0b906ef9dd7ef2accde2
Date: Sun, 03 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754221793
