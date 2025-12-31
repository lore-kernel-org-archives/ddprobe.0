Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C6929E0F7
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767201834; cv=none; b=nRU5gnU55WqHsGkOyuftLqbgDVt8yfXi2HY/X8IcuRpKFa8c4VRCzvJdHMT1EE8mK00aIX0QD0xY0jOAYFvuHShwO1Q8zQ8m/bzZlI5WRthNYBHSpGFXlTPF47cnZbwnrdxq9XnL3kZ+fc55z4Yw4XL5YBdkyMGg+B5oAklljKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767201834; c=relaxed/simple;
	bh=t4Vzun8ocfmoXzgdHjfa/kuXyZ7CFVvAAQKMB3FdXdI=;
	h=To:Subject:From:Message-Id:Date; b=Aulqx9GCYop0fnf0Nuoj9yvSs+CG015fUPpRo0Ck6uqBHD34rjyk8FnCBmxp6m0axWnSCr40ahB/BrxjJGm7kOYRpox3Y9btVyC/KL8v76jjuRXBlH/EjREUX5lULb2C/cKMkmJsM0dCFosDBzKh57PKuXbQzGGLKWfToGNM7Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQiplCw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQiplCw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B3DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767201833;
	bh=t4Vzun8ocfmoXzgdHjfa/kuXyZ7CFVvAAQKMB3FdXdI=;
	h=To:Subject:From:Date:From;
	b=bQiplCw7f5t5FUBLznlXBfqrUBxL/4yIjKZL7rg9D0pUsw+QG0yVQ4H5wYH7DPZTo
	 BZ7JuqaBgBS+Effcbq9cNIMFvBdzbnSjUkHIX1aOdVM5AtYEsrsVYyn+Ejs7WAwOJi
	 0IjK/Vkv1cvGvfQV19JJ5ICuzI56Ok+UhoNugnQtIzreCYiZwqRAe2ZfFf96Ff5SqI
	 mAwXKmK7l/Ehfddhraa0OhHBa6wCpk0r21Mdb5laLXKL94OKej9lNcG6l9DcIlMHO4
	 ZbxESr+DBXhh0/HHWWisGdwl6c92nowJqdmEERs6O1p5KLLh3zf/h13BCchkZHfxy0
	 jb5v/q6//Sgpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593AEE645A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720183358.21031.12831752063014096414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0191173107227b7d7f393f1e9d286c16b3ede5aae5cec8736dfcfa9eb38f4f4
Date: Wed, 31 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767201833
