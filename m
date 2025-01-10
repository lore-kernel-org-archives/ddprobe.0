Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1161E224D7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736472354; cv=none; b=mthVGGJSbISxSaf9RMQqVx009iRID/DI2ZP+CAf3BAzT07bA6F4GNh5BCka2G+8lFuT8CVYealIjfCRWMwlPypsfcI8pzw3dS+lZzCza4FqYQAlsEoAvq8QhHHtMrlnJXZl7g9ASrrYAFcZcOK3wO53yaZ5DOrUu5qVtZ4T5DBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736472354; c=relaxed/simple;
	bh=NDZ3eYwIGoAJo1CSavh7IdP8wa4sMFhtQfEu5JiQVs4=;
	h=To:Subject:From:Message-Id:Date; b=oG0HVJAxD21JddoBGSNBKAX0NQVaZitpGWVF8+kcZabLI1SQ94PKE3gho3n5oDhTokLwW6M7MW51iYMld197x/XXmnXzKCsu9Rh6uJPjxrnYFK/PuOYkNyKC59LaspW4d2DfvQF590ri8W16OuaXvFsedW/g6r59QAdNTvJerA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9dxn2yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9dxn2yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0997C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736472353;
	bh=NDZ3eYwIGoAJo1CSavh7IdP8wa4sMFhtQfEu5JiQVs4=;
	h=To:Subject:From:Date:From;
	b=k9dxn2yb6GiijCeXm1UqzuErnXWtBaCmFvs2h38F39ZZxDl39wbdJnZoAObitDNqL
	 ymGKArbgT2qfbHUjlTvJpFRssfvayGMYmhAXdB2tvTJrBvlIFhoc0bMNvAJq5qgryF
	 7ZYwvAfo1osOOD9ikJZMvVXiC6N6sqm0lrCyoohHsIXO8+s+THXVJ2ZjjKvm+rBlGJ
	 nmtFKIAF4rLaHVQcqNDS7ZzFODceW/wFAS3b+unX7Sgpx/rrRBEyWpf6svoq13fJqp
	 iMyccupIryBAICRdpU1650vY42Hyj0jF+Hy4s9834IRVYGKe+nB20SRW6ByKT+BhM6
	 +fWios+Vgh5hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD0E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647235358.26306.12060474380796434787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c440fde4d80ce21c927bd64ab76641c76a41fcea528870c0442b39f213a9b4b
Date: Fri, 10 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736472353
