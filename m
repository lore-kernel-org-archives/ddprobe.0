Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ABFCA5E
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748396394; cv=none; b=ROYYXrTWFss0m1NjKKH6NgHf8HIqPtBxWFg3IJ0w6JUFT7nMf2bgeg0L8STj4LKF6KLbtTxekmvViggeVWzB0Rm6H8h3P2jRgtnuxtR3zfnp5I4wIu+2XpdOeTZoG/0fIo5FKnqHoQvSumCqqjHSXL7LQ36x8priKkBronpv+1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748396394; c=relaxed/simple;
	bh=zeGJi48HPEi+6i02rYPN5WSTfKQMYmjTGy6QiyO/ujQ=;
	h=To:Subject:From:Message-Id:Date; b=DOdU676Y4RYVTQCM4PLKljKrj0nonQPgC8mYcceg2UewgmK/pj0xs5EDyMSO8juDTkRfXM4Ctncbig09FtOBEuoAhlDgy9D11HBIqkxdLH6mXUh49TKJ6UA8jYzMzccs2mJCAPje+tAOLGBrKqe+tho1j7eWJ2XIZMfgnOxZ7iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fS6UKl9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fS6UKl9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB3C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748396393;
	bh=zeGJi48HPEi+6i02rYPN5WSTfKQMYmjTGy6QiyO/ujQ=;
	h=To:Subject:From:Date:From;
	b=fS6UKl9lrPnBHPw3hWraxijSbWP97GQ2FPuLksWgh3gI/nFMAz64wp5N6f1ZyWLti
	 JIMxTDNbU9tJN99FE5+2uQO/XKTXsdhIa199bmMjgGlAJCY1IvkzOWzVzKAOhvsD1j
	 ABjMKG2hspY+hacxFeLqRLi84z3QQWstPI7GXFj5qcGmQKV3qtj6XiPXKeoOV1uaw3
	 DzztKK7i3yxRnQlNku6u8hQKH6tShKXgyTJZFZuBtlKB18QizwPzJ5bsyueZNhGGWS
	 tifUvMaYW9tJspn0rgK0psMIPN+lpU499t35AeED2Ne9a/a4HBW+/7SJrdHMjjy4uG
	 SKCOyqxfj/hAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93849C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839639358.3673.4343050418420514883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d176b010fd5980254b2f4ba48113d8579568bc1a783df8b27bc5a1e11499fe86
Date: Wed, 28 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748396393
