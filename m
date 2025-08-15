Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236BE14A0BC
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755264594; cv=none; b=WRCmwrGBq13K1ZglVn41wPigrIA4IQ8CBm61T7o6PwBb3gp6TaDzztrj/WVhRdPYpLUy00DaAVpYaDaqtjoZLqt9gvgCDvbF5hftQmzgfSEyRTV5ewYfBzUB1mEa/WY72pZWc2NsP5XGtIfxvsLYG7puDcWbaQXmtv3d5LESGHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755264594; c=relaxed/simple;
	bh=M1PtvLQDDFVeW8LHmiP+fiVC1NXupOmV6QzcKK3+mxQ=;
	h=To:Subject:From:Message-Id:Date; b=nXHVrcC0z5XrO5NDyDDFr3m7+/iKrMesER/l0PtRWxq36ulEPlRsgkzGb2dyQp7GjmmtGvtIlIZ4pse+GteXQbqZh+a+KlhWvuITA8FDBT0ReCsX8DfmKK6Q83vKirruINbg7VqfBAgfpRDeL2BZUtizur/d1g8F3Mfry0D+SFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g78LC40+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g78LC40+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F12C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755264593;
	bh=M1PtvLQDDFVeW8LHmiP+fiVC1NXupOmV6QzcKK3+mxQ=;
	h=To:Subject:From:Date:From;
	b=g78LC40+Z1wxZrepPSNa5RONPnKyEGNfcQXOlDxmhPIeDKagEdfeEXBfTt3SjN6/m
	 2fQBjOvxxnhrNW57VINSNw1WFEsIGioIl7lFAi4RPip3uaIF2+iH83+8Xl1KIdv7tA
	 tuScgykxIeySQVb9zTNkdTELczJxYv4AUHSw1PQfMjFbZem58H0wZectYIR3KtT1Hx
	 L5tcvtFurnICEYYfKtF12B1Sd5RcWU7pN9oerQqt9TQoqYH3Qy2oGPbPZm+9NaSfz/
	 0rW1Ol6VP4JLSdrDW+eoabxHdumrFywyCt0YeIuZiGf4fj8fln4vybco6cqWvdr0Pa
	 1ADh1wSfmbUhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F89CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526459358.19113.1689276577657893353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051ffcc29e34d76e8937ae74cd30e13d1fb11bf715d9de139e0a014bf90a91f4
Date: Fri, 15 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755264593
