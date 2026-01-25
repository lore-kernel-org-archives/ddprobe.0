Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E053BB4A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769365434; cv=none; b=ZcaXob9we1HdYLlbcII6QwLTqggDfl0vw9vEqX1DNVS3BJ4gM/7kgEb6ccaXnZWhMzY9Nx2JNCJ5jXz+9q1bvmFQeuOggYKjfeax7LirNw/e3VkNWtpcn2BDPKLjBT7/7/g9TqlJnENJBfs7RSBnjrM6pNPBPP9gZXwr68r7Pms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769365434; c=relaxed/simple;
	bh=37CGnXnUJ96BDE+w+ehr/pH/YuXlzxSzCy4l8txhVyM=;
	h=To:Subject:From:Message-Id:Date; b=WAynMKnF4XBwv0dqFB70G4i+87BgwYxaCBP15gvaThbHwe0aDIxq7dgjGA0r5auJOzLEmSLX1YTui4ASR7BXKlp8E8WcE3rE/xtqolHQuj8MID1i1Tt1O68T4DhyEBpQC8t0PsjJWFLWTuK0B+I1qNp3qRElNZ/y1uwg3UsD664=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXqmeC73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXqmeC73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB13CC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769365433;
	bh=37CGnXnUJ96BDE+w+ehr/pH/YuXlzxSzCy4l8txhVyM=;
	h=To:Subject:From:Date:From;
	b=OXqmeC73sH9NuhYqJGmSHbXkm+Yf6IFCUX9YoQ+f7SbvzVe9Y9lldKfiIl2plj6kf
	 QQELtKkFNAohk81BMGYrlfvmT7Xykr683nmP7r35d7YQFlQx1pYnRraSq6DwDs2Pvn
	 d2y5iuXOvAeSXClw9+CfEzW7JN+Vx6lHnVJoQZfSc4/8FzzbUX+XFlP9T/EUq4A9a+
	 7JooAWpS/c/yMtXqyCYMBjA1CjcaovkYB5Fg2SCd3Qj1VC2bw6gM3qrsApkfw8wzsg
	 m7z/uHr044pted+CB+y3Jr6t0vwu6TSFRv4pj0aExIFyTDoyhNhP1TlwX+Y4Q0vdCW
	 QyIpyGNqf/2Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D42E63CAC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936543357.19903.2629923464918305054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791205f4ca0872cb41f368ed86f42fe87aecf97eea183222c63e05e7030849f3
Date: Sun, 25 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769365433
