Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B9C22FE18
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759573194; cv=none; b=nX1W15WHK8Evtj/6q1uHH+w65sT7gFdNCL0fcHpWONOW9SgxikPR9x9sI3xMx4Xkj+Lfv0/oMbucvrIh811CsjRJp/oXZF+x1hSWfirP8K3PY08AAdy0IkbBAlAd6tiptQJV7OSFa7UFQe5ECMmfSBAZo7D3Mq01n6X4UtqFSLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759573194; c=relaxed/simple;
	bh=c/MnN4/tE8OeNu/mar/XovTd9wLGU4t8lxFR7gaLJ44=;
	h=To:Subject:From:Message-Id:Date; b=Zj/Z1ydN2eWYchdmyyMeRfuvYIrqrF6eCoqhdmvn/mkd9PeU6gDj4faKdK4goHBd1bdiKtrXr6lIuc2v9EnP1pIw4f1FBWirm+tG3Bph8T4Ru3X957MBYPQKAhy6LkWSvlqVsddkNV2DbWEfBpNYAN0jvkpF1UQDlJqMDz7Zo7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZg9mEXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZg9mEXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A536CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759573193;
	bh=c/MnN4/tE8OeNu/mar/XovTd9wLGU4t8lxFR7gaLJ44=;
	h=To:Subject:From:Date:From;
	b=LZg9mEXh61DInH40qlWyCvZ/vB9DnqCv4xaRfLfWcubotMt7KgSvUu2Gs8UgVEH/B
	 u5fl9zS4ARHF/R+6s2BBUanA99RzxL5k/S2s3kqD+5wVKeQj80UDMsYsssR3bb8KLs
	 74M+7oeKvp1vpW835HV5IWP4NJ3ovsEVdkyA+0dYRNc2Fzy7+nOAbEyuHe0T/DC5R5
	 S4Uvb8ftxhjWh9UmB0yuOtp7m2P4Q20oyQzu7Vz7BzFh0XlAw9xd8eGDzKhr5anXIO
	 eQ5gYKhZ6oLyMbvavPf5JUZC4f6HBW/qy3e+fgTducWBSK76/R+KTyFms5Es46aUuZ
	 MygU75ZxaEy1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93330CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957319358.13724.17105691685229805498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a99a87dee24736657a99a6883f64287bd994226f6ec83bd6c1e49cd53600032
Date: Sat, 04 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759573193
