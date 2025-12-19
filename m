Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05AF2264C9
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766171033; cv=none; b=QNm5m4RE60XFxnCyJROH8eSSEXv0XuLr+cFF1ZGQ0A2SOEEckdBA7bVKpgUBnNzctVZtuyMGd04FGLH+Q1irYI4Yb0Xo9BORuLJa0B6QQoyAgy+W8lbJhAynWSD23e4lItu1Pzk4DWLs7XTCyujhgEptGYhiA2x+HaJf9UDKrRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766171033; c=relaxed/simple;
	bh=JxwsLN1ugZB7AXo/pjVXuLfbPrM7k9jrBGQBrmg0V/s=;
	h=To:Subject:From:Message-Id:Date; b=Rq1+vtc3TI52aNW2x69YMxk6nwZ7cJzgBaCYB7VJ64PLQqRYCN2tBIMSBQdzya3MrcIZW0c+Xfp2Z0gOZqJzF09DVpOg1GbvneCVNAaM4hPDy4fioppvP3jIO8EgzsCcNezJilA1KkJqojsjDttidGVfjOOBxI29XmfYKJ5su2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtjgEX0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtjgEX0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C7AC116D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766171033;
	bh=JxwsLN1ugZB7AXo/pjVXuLfbPrM7k9jrBGQBrmg0V/s=;
	h=To:Subject:From:Date:From;
	b=CtjgEX0vZvV4M21/gjLOC8R4N4QwZaiqLs8hzpF9p/YVEZepF1kUduNvODrZp34NN
	 10/GKlWppqOdUM49A1mXXKJeb2sbxyzaIF2vITo9ZW6jzQKXN6eL88tMgJpGqi6FMi
	 PhmoUMSxmin0A1PwXiY8yBZC850/aojL5pYGiIMWpL8CBD+keveu80z3vYXmyddaOr
	 2YmQVD09GAaPLN3knOzJQM4AU8AGlMlT63VcQrLzeTSmDVT5xlL0z6dKib9NWnLY10
	 /Z6rZNNqMvY4/Rjkz8oEddx//APeV8ntafLUCk1sJQwcZsvlaN7MebPl26ynmMH50T
	 jQMFD0o7PkdSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A5DD78770
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617103358.11935.9797559838853802199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e661a7675d0886abe444311fcd9489b45b527997385cbf611fd5842bcdcb666
Date: Fri, 19 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766171033
