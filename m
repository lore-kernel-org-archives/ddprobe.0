Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB57187321
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721041463; cv=none; b=LzSrKRDr/2mxOXTOMqx4OvhKoCgwWGSIk/loBusjzx/dQxs4KsADl94BFh88nXJQ8XwXNf9+FzYOxmE7eYZgfRBKONxZ1h9L1APhNf/4ZX6Mfae0joruL0BjabPLSiZu4+096Ei9/wn+IGMUMb7cmUYFDkFvOA8n9nZ+dQeS95s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721041463; c=relaxed/simple;
	bh=tlecthb3vp8vGOLZluqFsjrnPizIEQvM9SBaOA+ebRw=;
	h=To:Subject:From:Message-Id:Date; b=R8RyCDcSU4fbbvGU+K8STeyecjTu1/NjlQ153t02yxcPqs6eWFOVW59LOHeTwxjh03YvJLqjC6hJstgQx6dNvphC1vlRNnvstQaZmu0KbSZabZn3chQU/4PA+VSPDhOHYIpcwAJqIlh5kmzkZJJvYeSfgOMOm5AEm6bYCaJzu7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeSKeSNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeSKeSNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27DBC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721041462;
	bh=tlecthb3vp8vGOLZluqFsjrnPizIEQvM9SBaOA+ebRw=;
	h=To:Subject:From:Date:From;
	b=jeSKeSNboASEEuyxKw+frZHokAKce3I8jG0LnZCo0OdQ7vZc4YlaYKXyPrtZ5khms
	 TE380jvwMns0eYBmZLU6uyldQBdeHRNl3JXXwp6Pt8rYMNALkNnaSsCfzIdgmFu8eq
	 NZp/PKeyu1FSTvcee/GO7WlBbD6QikIo+neqI5efvEBxVKfhQer5Tv6XMEBhpHdIq6
	 rZtQjmRHdbTK8G7Qz2ECvSduyjQ8MxcgEZ3el44V+hqA+I/Usn9cKBPjbXnesUkhJf
	 sEERVsYpzIMbr/WZTlE8onJIf1l4hwNZi122QGu3FNkujFzQhWl1XxRijU+60QF8w5
	 C+li9OfVEgO0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D5DC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104146279.22284.11808078074793976117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f695d24a17eb36bfda76391fa700eda479c97dbc69300b707feb6cae29ef957
Date: Mon, 15 Jul 2024 11:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721041462
