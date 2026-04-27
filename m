Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E17E3382E7
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777325254; cv=none; b=jLlY/zlMXft8GyaVg9ZQW8Q4Uuc4KIYpKK+YCY8ZQxotOLSpO/Y+D9PYOqUXspJeY0SKrgBS1d2sWppxl9Op0fiRtTjc4ZZ/dhsvq+H6XlVe3qyroXHRpEx5JXiZ9PhV6ghBbwJNUH7/MN2YvGl7K76gKgE0HTXMftId0IZIwf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777325254; c=relaxed/simple;
	bh=hlZNr8fvwyWgK/ymfztV0IZg7I3xNaz/SNLEqVGJ8uI=;
	h=To:Subject:From:Message-Id:Date; b=p2hJDVXgEVP2oTrhBM7tvd9aI6KtUuiUd9gKddmNXcNz6mBl/LJnWyC0VBtApnIO4tsOPQdLP5wG5NSOU5u09CDc6vNRxibxc10SyPmAETMpiW07Y3rBhWzpxyqFMJSwdko7XJNTjE1hQHMC/LQKuQCSaC1aA3yj0qbtTGwA6VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pauMH0Et; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pauMH0Et"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF04CC2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777325253;
	bh=hlZNr8fvwyWgK/ymfztV0IZg7I3xNaz/SNLEqVGJ8uI=;
	h=To:Subject:From:Date:From;
	b=pauMH0EtBAS2tiVV+y4qVmNrRrhyUV30iWkb6051IT3/AYXg0JxNSEJ3Ryg3pSdrG
	 Rxe4yGcesA/sX4T/3jRCpzssH4xDyyQ6dAjloYWWZNuV9Z5lJJAEGJEXH4plfyDMXD
	 FSgslfScL6L56c23bWR8o0D4H6fCazvg8+P4jPwjr7ieDZuc/ZRtzPkG5KpBpyK5d0
	 DOIfUlLrlczscmY8VBHhU7sNZvaNS+fSO5dfHUioV0v6dXcJM7vxwTdYMcNZkV5a4y
	 544M2nU8GiVM43p9ltG0hq2jAc0OBY/CTa0cOBUQCdKPB9Vcw/GqFcIrZFSF5Db3YN
	 PM/p6cMKTgJ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00E9FF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732525368.31869.9075355686593809849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80472358318c3ad9247a46b1bfbe6846bea5b136dc78fd8a68e0ccf3195d90a
Date: Mon, 27 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777325253
