Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8EA218E91
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786771834; cv=none; b=P0u1kL3s/YN/hxMrY1+MI1wBwAEHjF0anuWePFqt6qvImPDVz7wNIYOd78erQRA0DpnbUBmyxHykdVmbhZG4rr0V/SSJD6Wiy6nnZqAOsLvXBuSzKYzxCRfMKkl9N/AY2xDWKFgwxsxRdrMrHuy7qc6BCx1/4QpN4vP1ZzSRWbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786771834; c=relaxed/simple;
	bh=rYAHwkfAte+Z9hO/K5Ppf93QL/sFDJ2Olj9Jb+uZD1w=;
	h=To:Subject:From:Message-Id:Date; b=k3jNoD8nPDpZduFqz3TeftFTmMVxjyz/Yh+rlzjcmHzP37tfBNOehkSaLO6HzjuaC0KstcUTtjaA9M0IXPYzq9a+PdgXm8rjTbWfNJ99OYCGLwQoGthX+dd1OElJ6qyYzlLitfjZoGZF8XeSR6jQvShiLEtWdZmRs9JzUSrMwL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+skIbct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+skIbct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB8AC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786771833;
	bh=rYAHwkfAte+Z9hO/K5Ppf93QL/sFDJ2Olj9Jb+uZD1w=;
	h=To:Subject:From:Date:From;
	b=I+skIbcthyogyVhEftB9nYwaS8DZOBiutCuwqS9SUn3zHWn7rNeCem/qhVe+1tk8l
	 jRKjS29IpdSQ3OLu9FbrQbELFgSgA1LjElWF3jH7YWCuMpgQSMbpW/G2NtXjUMIPeR
	 lJifG2u2Eh7JVFpjRulgdWWXF0PgiRq0oie9ZgHpkxRAXpaBfNVyIExiuovB61uRCA
	 sAbcr5dRVba9jnccu7fCRQFKmTQ8fHGIsKZvVjk9tW18pxvbBaXeZe1Xa3L2Tz2CBQ
	 d57GYZjmqKO0daeWdIKKtdeBPoxDNSo4th1ps++Cmq1i5BFoBdeYaL9pypwLJ0Z3Qg
	 OoBN3krWzDg5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA454C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677183368.8316.15002462088569151184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b8232cf67efcb8699cc76b2977a61ca1cf1cc1191063b9d4fba3e612a125f9
Date: Sat, 15 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786771833
