Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216301A5B9E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773102894; cv=none; b=IQ667eVDaWl6smgu3uNRMTLTN07oAGrRuOXKAH7fID9uiHL5339foM+4opHTN29G5A+vFAZlSyBhSEZB47kd7eD6HqmgfDe8dX/tgNxUxJj3IEp6oE++ynhQa+Z1k+OMz1C1hr0edN8qCxgYp1mrlwZkFtaKWlVRk3kIwPGbqmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773102894; c=relaxed/simple;
	bh=E7fUJaOkKwGeWoc8vLTtOW33XXp7bUnYeq0QmwlbKvw=;
	h=To:Subject:From:Message-Id:Date; b=ddJCSuSE+oq8TohGphcZ6oZffNpdp41rr/45mdyfRYeWr/GFvK6cMvDoiG1E1C1u+zHI6E6I+ZGYpevHrxwBppgnWYeK6WXG7mf4byilpOC6hYV+fSeghZuSS+xWqlsGE3LjFMFFZNXe249JFr+OOV6uXL57lCDUHj+IfeoHin4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJ5H+HPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJ5H+HPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22ABC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773102893;
	bh=E7fUJaOkKwGeWoc8vLTtOW33XXp7bUnYeq0QmwlbKvw=;
	h=To:Subject:From:Date:From;
	b=UJ5H+HPkazVErh0I0I+Wtz8NDbfjs5tALlitSX7WfkPkcw+o+wkufXHHVuip+T4zI
	 axeRWM8VBAKzcvoUnN7dG/DfyVG4eb10WLJDj+jPG273IlfIIu1MxmqCNQvRm8TXsJ
	 6jG+s8uQJrvyQOJeEqlLXbHQvOGBkXAb/pH7W67afGYqwycYOiGlfueWYa7FkbV6ws
	 ZG3EYbdBDSQzlZowk30qvLhPMtn5wzIskA5dNDaeboZnGr9vgqeYT4P23yo5+knQ6/
	 Pxg5NHjyQ+Nc7THrj8KdeFQGC+OENPhdOneUKbQZsWJ5fW5KBzmgKyBX9IJdXANF6z
	 ExdKsLfy3SFRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F228FCC9A2
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310289357.11270.14813387026883162483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66f811579799bd1e97a8ac3dcea629787ebf4ec417d3aa22c7f7456eb117c09
Date: Tue, 10 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773102893
