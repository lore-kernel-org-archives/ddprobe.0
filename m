Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394F23803F2
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782761914; cv=none; b=WwSaemyJ2n691Im2NQ+GIPl8MGB6hVsD1gbOtpuk/efHZgK7nBDkZyvr2jcvZUVyXZwn+ixhtGOXK+w63w2T1co+34vuA5p2fDp2gaIDdZX3mctEVl3hSpxrrEmp68e+RXWDh5Hthp/Ic0tAJxvrKbltkjZAyCzjIxEIoRr3gCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782761914; c=relaxed/simple;
	bh=6WDMNizi+X8q7Iu0YwTqsmVRKqJ6NOSZnBTiGwBvgg8=;
	h=To:Subject:From:Message-Id:Date; b=B00zbVU0/CYp+z7qiJalM2JUAA09bl+km54N9U70ZJHcH0qpsrgML/4M8LrdLKmD9GqE3k8g/N8lC8upbUrzeh29Ajql2o7LdpNkBcfySaugnl7MLcVl3rNNp66kp7XL1Y3K5OoWbtOCX8UK+ceosgcFhjzcFoQg6D0BHaaabR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSjrNNW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSjrNNW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB03C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782761913;
	bh=6WDMNizi+X8q7Iu0YwTqsmVRKqJ6NOSZnBTiGwBvgg8=;
	h=To:Subject:From:Date:From;
	b=FSjrNNW/OKY2Cz96hFnqmB+8sAUA3Mg2Chf7Ykb73O6wM1RYqQk+sB30j52iKxG0k
	 OvfLoUqiZYFjtz03CEBI8ShWxA0jumxMfELeXYvSPi4N2Brx6cmwgReuD8mtZMDU5g
	 ie4+qI2PVZ0yXHuLo8BGMERmUDmEBO7aeL0JRuOVGNCpp2sGOHSrxF2D7gwutUWRGK
	 PYWzF0VcI9FIEwoylmgLDAVhWsSrprMjxRXA+1WHe4JUiT6NmVaexkkblvcXYXF56G
	 FBGHmyWJdyTM/uePT6uyp+BU7z8enKMBnYIgLhUx/hcJPtrZ8rWfYSiryKboN1rXSS
	 jS8PDVdxzztZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB26FC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276191369.20944.9035957746512656501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e05e87cb984e6473bb731d9830c8b1d8f7119b74e3a6dbdeed61baf7f85b25
Date: Mon, 29 Jun 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782761913
