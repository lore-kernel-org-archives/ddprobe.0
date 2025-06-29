Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141606FB9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751215794; cv=none; b=arQfgrvf100b5HFAY0NEQW8sVVy67ln2wiPAh6I9OYZoguykcQKYXAvNWYe8kSLb6YM2jHjemL/aLhZbEEK4ZWhaWJj3gfN+3cPB/q8ZZ3RoYL6FeRQyPE3OppczPZhtQWQF7sTyRuJRWowAutUSwR4DtcCC5JqcSYjlkU+VbGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751215794; c=relaxed/simple;
	bh=GEyaqKUi3ewIMV1kQcnoDUpspHJZFmhrojWgNuE2RA8=;
	h=To:Subject:From:Message-Id:Date; b=BPt3rkbmxQJAychJN2WjoqIrOgxmHvwb6DNDstKxvzJZ48+mSd6gDX9LUTF9PU7PajTO9FtZ94QG8NAW5/ORHkSsy828LvIf3jF7Pp9bqpUGDAzEkejWIobCD7LJ2utdjA6Zol8XpPycMWRo6KEWez4wpuM70LKlFrrYZdXU3Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbiZqvMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbiZqvMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751215793;
	bh=GEyaqKUi3ewIMV1kQcnoDUpspHJZFmhrojWgNuE2RA8=;
	h=To:Subject:From:Date:From;
	b=rbiZqvMscdiJLZQiPXUbmiAqqHZftC1E/iZjbKFWdEviXwpUOPcTYwPzVjXMmoq6h
	 M+/AjshmaVXtCn/1rtcdwQkx5LnZNytJ3nqxJotU+O+Ow6+09jpiNMgD9ygx21ALzT
	 syymc5aSTZzI/8j7S9sS1RNtetQASMg/URPnPdRV6obeR4ZY2+ZgytHQHggHdkXNlM
	 8VrBlrbJGqATYjjxStRMzxAaTxXMaFM+ck0H7GP1I1UL2w3XMa4pohGlA03EymiVjP
	 96tHbq2MpRRlmPOW34oDfHKOnj+hipyL6Pbr70rN0OqTQhmN5RpGyxSELQBg4U5P4H
	 n14HThKLrz1tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E56AC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121579357.14028.5751359212800521542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a55e85a7b764e1f1f61853db010cccf500a28ffef92371898fb681248ff188b
Date: Sun, 29 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751215793
