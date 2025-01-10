Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2998F1E507
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736492154; cv=none; b=fETzICI5Y5SZDe7X//B7GeCmS7fBns4+UhaR9dTZofQf+pPnuhvdrLf6UjWHX3U2cAMyNoZjYJI21sVgWRmt9DCeTQABJEL/voPAbnzvPk1BZgVJ905i3TmdJAOZBgyMBbsuT8hB31T4mD96GGheSWMOVToPw9f6QTQEUvqx6Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736492154; c=relaxed/simple;
	bh=HNmzL5qXHAa6sv7FDjzn/DIfnWqrkV3qvjKfWOVzg9M=;
	h=To:Subject:From:Message-Id:Date; b=ZJAzs4XxHrHZ5ZDJjCoD9KpVBY7ijtAsujVp7fMmbpuSLeHDgJuyons8caG3gT5qoCvL2QfcQ6LxrwtTH7xbgudEy88drndpkot/xxnJGZokGM/0WB8ZetT1Q0qPGSRwKApnHxnzsdsHA2TcLdwIYecZm2EGh4c7OHzuL4jkSSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvmiNCtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvmiNCtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B2C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736492153;
	bh=HNmzL5qXHAa6sv7FDjzn/DIfnWqrkV3qvjKfWOVzg9M=;
	h=To:Subject:From:Date:From;
	b=GvmiNCtw5dWC/vTfWoRQWIAw2Dp1xnVxIoj3Pq85SlKgmaIPRJn2eaD4aPA+LgAnV
	 /qFIp3/nvsA+ymXpGXIAtoX4M8W948v5Sl9YsW6GlIDb5FZr+gO19Y4ljwOy7kO5kt
	 cZDBWtle1uLbvMZgdDzKgfbG565TPnDD5MfUoWmmQbO8tR9UuIpwFMK9iNpfkQPpgf
	 m+tZ7rOkp96Sogz3KS9Fl0KDIAOjS7hdjpwmV4zxjOBI/7GhXl3ZA0ZWgYtMHquqmB
	 S/tOxhxHK5HxZYFyNkklm2wfF/kF8dwcfOyGYWzRC0AfdSqOCXGqAc8g8UasXGHWGA
	 lLQExrftuigwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93863E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649215359.3825.17593616923040775723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2b5812b28f50c0eb3b37ef71869399859220c86a3325b2943589b65f92a4b0
Date: Fri, 10 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736492153
