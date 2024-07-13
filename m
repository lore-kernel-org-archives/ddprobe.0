Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582183A8D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720857623; cv=none; b=XoV9vsi1UxvAYYOzUkaVtdZcjos3TUKibItq6sV4UHasTYmGMq24yiSFks+8B35N3GUpvm5HTIf0b5sOObHZ7pBw9h8Rf7rYxXNi//h7B8EVSIaHTycgGQkW/aEs9Z0UZlQllqJF1Gao2H0bAeNvf3Fh4YW4zkaD0dRW3pEL/ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720857623; c=relaxed/simple;
	bh=abFOa+npf6MZEZTFB0BZX9rnijMn6MY7SMCAdFrj7UY=;
	h=To:Subject:From:Message-Id:Date; b=HFvpL+Grl1wHzQqdAsCYcELHpTgigmY8gazyYxnv2reXiW1AMLFSEiWDy19hMgqU+/Bi3lQI6WLyN/HIMzQUjqHLzJgJc6Vjoz79BHkj6rA25FrvShm9jrdlfgHs2IEKyTSBmVq203yUCP1ZVhtTyeDDZlZ3fJW9aUjtR8CkElU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6iQe+xT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6iQe+xT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E331AC32786
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720857622;
	bh=abFOa+npf6MZEZTFB0BZX9rnijMn6MY7SMCAdFrj7UY=;
	h=To:Subject:From:Date:From;
	b=b6iQe+xTxjH8Bos3k15QM/KuaVOH+p8SCfBKCammqc60uNt3CKajGTRD/eL0BHKiZ
	 dWAGQoC8vBBvO7jCGO0k/gaPxr8nNdvjetZsDfYaGXhgHisMiRQxqkpW1EYA6XQEu0
	 +TMeYdJGrTWvfgKxsynTr8BuDQs8+TEh4WwkgS4hQ/XK15ORUOs0gzYfJCb37ph53u
	 gI+sfk5CXjS/nC08DC/XitfZLXE7lteClt2Bdbgwa0lOmkoDZkEit/5IG7qLgXslxI
	 dknGt/ORz0gAlA10ntc9M4P8zvCMX7vWKZimkaG5t2GnpTLJwwLAepyzvI4ZLT7QwF
	 /UHf9C6c3F99w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D171AC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085762281.21526.13989074908601373834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9300f8eba2ab56ea5cb2453330c4df5af6d31366a21fcf6c933ee1131e1fbaa3
Date: Sat, 13 Jul 2024 08:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720857622
