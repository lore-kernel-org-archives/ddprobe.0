Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C1D2DFA28
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749800394; cv=none; b=UIA40LUSS7j7k3nRpf5cjS+NRGhZcZuhV3E9R2+L8QRHEFb4/D7kBxTH/BtD5kx43x2r3Wu3XjRRRNKk9zk2YOsZ/p2MNAnYWUPLbeLILcSwr03UtwxK8QhMhzSXV+44FoWWa2Ic6YVYJqmnQienznd3h++XNhsir4hY8T9B0RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749800394; c=relaxed/simple;
	bh=KjsgE1USZQBqMNrE1DtFktFVDw7HlO5iojDGdkYMRt8=;
	h=To:Subject:From:Message-Id:Date; b=n6cCYJ9g+pnx8cT+qR7ax57xjIdyb3c6fuvgW6QqHO3KvfHYiJBqB9XW6P6VuOXM7UBsA1+3b90d5utSxDxXQHhtyA4yc2KlBJYtlKgZOFtieSkrBZN91X0XSwqd0HBcPIVL3ZGL/b4rjKMK9ElPUzNWAq3onEB/8Edu2ajvGCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5ZSUWnD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5ZSUWnD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA8BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749800393;
	bh=KjsgE1USZQBqMNrE1DtFktFVDw7HlO5iojDGdkYMRt8=;
	h=To:Subject:From:Date:From;
	b=O5ZSUWnDuFjDNQHLYL1C/exThOgU4MsUeepXi7p/XJI8RRyzIWt6sTr4p/LERByfN
	 tJiFuqmNsfYcRYdqZp8X83qcMY5507JKqJxoZVpQQMA0g5T8yPXJZyL1gYSHnzndZ2
	 QjxnJLqMtMceI4pZAeXmFfwlfpGbXuNOrNLwNxg90KJq7lo0tt2FE2mq6tsdgesva2
	 as8bfgTzfDAua+ByDFlkBH6v6JFSIkZpOhzzqSTGdLQrV+UbXSxOgwQ0me47YMwWQU
	 CK+Uh258kLhT4WlQGSicDDbXqnA+q4/TrCY89dHurIHmcvdaPsuXLD6/9ZtuUZRz89
	 iAKbLNL7PBstw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF3AC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980039357.30628.14760919973133191693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473cf164086bbb9301d8da02ffdbf66d0710ab5b89e2c7ce99c5db77e4241156
Date: Fri, 13 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749800393
