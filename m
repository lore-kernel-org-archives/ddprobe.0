Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233533093CD
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770240234; cv=none; b=jPmJ3tUFs1vn/QC3AsmTb5cnItTWEXHXojvdPMVK3gJBj85YhRiYrwYYjeG+kIhS8nWT6Lvd+u6BEAQzlERFacrkl3HInOaW6sNG8ps7t4/+tiTFbi7CzwCi4dFlwyWlDghW2Enj0PGlejxIsbtii78qZpd0hzzF7fCxASpaojI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770240234; c=relaxed/simple;
	bh=WSYtR7zEXHwli7n70ThA9LESibaNX2iKOqbgXPmSP6w=;
	h=To:Subject:From:Message-Id:Date; b=DClBeq82uJ+jUP5it3+PFfHA1Ho9hJZ+9MtYiOVTmXCGF3BsyYu0C8KlZ4wbbyDUaTigLuoEhPKeq1+fPPLp/G+bE2JV5xbdWA5y7FNbAp2FPkX82TPe1MkAk/t3I84pKxmikSbH/wI7agC5SXpyqZgvjPB2muVBo0cMIMNdWmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or+sw76O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or+sw76O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F85C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770240233;
	bh=WSYtR7zEXHwli7n70ThA9LESibaNX2iKOqbgXPmSP6w=;
	h=To:Subject:From:Date:From;
	b=or+sw76Od9s6ASSDrTQ5Ufo7QjPC6oKQIY+uZEU2nQpwlGhgnTM/Uwh266iq2m+xv
	 WgiMxM9I6dIIJXhdpSb05fGBo0Cbsq4iP4O6W7IrzH8sIT9ItM9HgtYyqDQ9yAZfU6
	 cAELs9jMBqG7bwLVu28EHTXJWjcqtrfsgVH4TTiz8eA/FGfji73wzve0H/zMu3avOZ
	 OVkyzKnGL8aWNrtYHyoQqds+UkpK4vgOllrVzDnb+x6FPYBvRI9wNiM+sdNiVKKR8E
	 UAeLSuU+hCyqEKAlLlqwMqTK9/6E324AZJmOZm/9UZH2Y08eqMdFYk6h4AJnm0yGiB
	 KApEkvIBwYgBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C02EA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024023360.30933.14560174329311844609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba85bf110b15ee89a8b9cfa2613a03a567807e0d77ede41769a30c8fc665417
Date: Wed, 04 Feb 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770240233
