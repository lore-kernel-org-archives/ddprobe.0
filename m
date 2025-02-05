Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4631B4A33
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738713954; cv=none; b=cO0QtDhKv5TmXqJOVJJB4+aGnwb1oOiU5SKT83B4rMFkEN50SbMx2pbxWeJztHzQkqQ0kfqaSnZw3lIdMO4Aa/zVoDLWCpP13xp9B8ujmx1M0jv+5+TazrW0KQQIzNa24sQc/s9yxX5WkpezaUhC4yBkhXIseL3pg8WmnDfW25c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738713954; c=relaxed/simple;
	bh=UyNknNM/6t3aNs1tYvFoYCPdjvLzuGj7nlJtKHmuzjc=;
	h=To:Subject:From:Message-Id:Date; b=jsvLAeZ7nharaNMqV+1bqd6C+IogZyIzq403Tots4JTkwkBl/9JYKqMX7pPAzxHdnYn4I2V91/Wq2+xdNpxsTYAJedK2HLPDPErP8BROYfZe13SXGpLH+SdeXG08H6gDSmwsOriul65SnmA5eUKRwnIxAdgIKOrb7Lgld9GI4vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBYual4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBYual4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A5DC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738713953;
	bh=UyNknNM/6t3aNs1tYvFoYCPdjvLzuGj7nlJtKHmuzjc=;
	h=To:Subject:From:Date:From;
	b=hBYual4GsEQYH5myc+XmsbS82xT7pne8iiYBwZNf/SSZjJaDBHtB1kkxT76KFjucZ
	 CvKQ+0OjTB31NXmr3b/K/UlLgot8bmRXYuXD5luw3O0fSAs5PalQfC7bgEfsJZo1Bx
	 m3z7zcW34pnBQ5gACpuJ1EUycCuEi/ptSddSxprRphHBhh4RKdV7xcG4va+ZV5GzUq
	 UheLTpoPLxy+fx2I4ucWrE3fsjlbkRpQn76FZdGZ/axmvG16yXCW/L5QFm3S4Rd8El
	 aqUuABoRd4YsR9U8F8f7gHRa90LKjS9IMv1Aj9WX9lLasHkC3rfrdkaY5s+fWyN6/+
	 0b+JYK5ERU5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C87CC02196
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871395359.4283.1539509816461436421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330aa881d7ebcfaa36a4bdd2dac5d9698e8172f62cbdea022bc556565245dfe3
Date: Wed, 05 Feb 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738713953
