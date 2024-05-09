Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419812A1D6
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715277743; cv=none; b=pVfUzjJjfEE3SzMrrOckYfo/SkpXu4Bct3KXnxcDR659pAax3y5TJMmQJyh7mIGi2YF/3ssnKGSsPFM4MCwGJ2xifV0s8+27Gkzs6pSW/q3myvgWyqZPXa/vTUf8rxYbhGAO4ov2xOJ9K0M1PPKRQBn9xlpRpwEWI+CI1U2OsPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715277743; c=relaxed/simple;
	bh=12wzri9qLCoKbETtw5TvHZw24tu/5mJvMhEXp6C0dho=;
	h=To:Subject:From:Message-Id:Date; b=gmp7ehXzHmv8SG40AKYD8Z39pNCde7enROO9YosFj5/M16YqsNRWEqZK2hCF9/SocpSFY74kvAs86IJnV1G0rLCcrzLcWJfxbAeVCqqjqVcxqDg8YzsZv+lEa7omwVDfXihJ7zJdZ5Brsxb+MhcxWmI0Vvf2a7EIobdk003gzHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7oK8vki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7oK8vki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD54C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715277742;
	bh=12wzri9qLCoKbETtw5TvHZw24tu/5mJvMhEXp6C0dho=;
	h=To:Subject:From:Date:From;
	b=f7oK8vkiPMj9Znh9awTVXgBixDyPtsitIjW3kmeqNqsEsHsi80XuNC8i2+kc4yS9G
	 mhui7LWiqXB2bo7Qf97rGqNhu4n6nZdib18oOlT35if8eF/lv94oiVhHDuf3KTnzFH
	 8DWjXJ4fdJBW8kwhmAm9N86BErxld2EXUiIfTgBdMzxezQWoAcq0E5Dv6/PpV5pQJ0
	 K0/p93IsE4tdRI6iEEhfjU/KPboqb84rTddfw22GFLTmfev63klov7+KO/ZuZ7bCM6
	 cfkpC3XrFWEBfZYDuN3zmlhOQ7chVdKblM2kQN/2Y426jluFUpFv//OGKKz5DiQZdI
	 U+7qAYDr8JNiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C23C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171527774279.19734.10948264154891841453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b09ee41d91bbe875e9017b8b499089fb73ce16d707967b0dae98bbef37dfa5
Date: Thu, 09 May 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715277742
