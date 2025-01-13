Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D2E1B87E9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736748354; cv=none; b=srmcnlxOPyktQ0rTg98ZIjZ7ZfwHZnAEFJuEBjvqtZsfin1KaX+a0YBo5I0GShNiX/ouy6ofh6I1CqDyZSs8YIk45hpfevmmMvD8KbieH1U7NV2t5AvJGDVFrxta3BRIsE29oE+YoVw1FNn7E7M4beNlekKv1vaQAXV86tbBKcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736748354; c=relaxed/simple;
	bh=R1nJvuFDbPqaqeNLbN+D05Kb6fw4amYq9+1cJzkGGIs=;
	h=To:Subject:From:Message-Id:Date; b=I5LkdhF4j0aJRbDrWH4a2gVhykH/d7jDnPR5bkV8y9+lRxwhHJR27IZSYMB9MQEX141nYdhYJfrTS+PXvZuzkIBrqsvlMViUNbqIupBIa5Fx+eanDe2fd6m7cyLNzFo1yKFGnfqd/+q/SBWWpxoBqa80DPxAeVDooM6qhMtuzo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXudYczm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXudYczm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8FBC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736748353;
	bh=R1nJvuFDbPqaqeNLbN+D05Kb6fw4amYq9+1cJzkGGIs=;
	h=To:Subject:From:Date:From;
	b=dXudYczmW7OWw5UpwEz3ltc9q0qg37IKSQN5MyGN+jQJACH5ipWo2sQ2BP0GK1TMA
	 V2jW3cIOul/jtkXgh2Ae1PToS1jfETUiG4XIf+lp72yCgzaVQ4lRQuGSCk8/FnT24c
	 G8fEeQXWXM98CjBJbgtL8hZKWnv60rCa3zM/g67h1UX4mb9hLlDhPC7gXycYM5K156
	 7FTmW4+tte9Sv5np0QmJtp/1b6UH+gVp+rQKu4UuxDbVjj8J6GNgDGyz2vChY6XN2B
	 wb+CsxbKXc/nDancbLXoiRxxglKwTsgSVPIX2ONTwwhyk8up2vfoB6cSPqI9OzR7VI
	 S+NUPLpWsa0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96352E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173674835358.24578.3844613779542514637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6738ded1f43f4c6fcc4d633a984bd4da72849ac3a904dfe519ca8c542299afc0
Date: Mon, 13 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736748353
