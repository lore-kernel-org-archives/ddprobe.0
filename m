Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575062E636
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719979523; cv=none; b=JLzobyv23NMG9DnJ1IOIr9D+mN61pexFNSzF/0YJ1rYlEUT+W+snztMsP64CV9ITe6n5pWyRNWFilyf0vBgYt0Gk37geC+8VplIjObNQFCvsCLdKFcH9gygTrB32lk7fiOGjL4hFrKmlLOrcZ9tazklVTiqfjunE2nPakeBsmUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719979523; c=relaxed/simple;
	bh=pw1OQZVhqJ6ysd5rtNkbrvfjBpCYmwJ2WC8+luOzmDs=;
	h=To:Subject:From:Message-Id:Date; b=P1mfvMlF3g0YjzhILKxJK7ibHCwEDKgCSFXBjRZZd9mW4ry9JYjh4rKVTzb/w3WVR68BpRnO8NlHqVGWrxBPSHzDWmNlIeZGdejF9cyUxw0LDXn1tq5pTJoMGHAyVAVI8CiiucyV/1TxGUo+9UBua4ibnusW2Rtb/fO2WYuXmsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VShpKbv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VShpKbv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6732C4AF0A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719979522;
	bh=pw1OQZVhqJ6ysd5rtNkbrvfjBpCYmwJ2WC8+luOzmDs=;
	h=To:Subject:From:Date:From;
	b=VShpKbv8DUFGXqGZNTm4dYBEyH8TZYJmHHS3+k8c/d9CZ6T3k7W9QFPzDubQH4WtL
	 v/X4jwuEN1Sw+v6nPckEWPddsdzzWCUgmDyaLg0IyXP2DC5BI4+/clBBUOpBGFyfZN
	 GXYJ4c4osUUS3tXfyRFoKpfuMtWYfJXwCzM1P0/d6ByJ2eRu2zVtzIChb83f3YxPFu
	 eaLTInbMVv+lLIM3FinwjlvLXSUpvzh6kp/43T4sCcvJS0Yt0Gs6sSoYrc+n9CHiaW
	 pK+CE23kYmWn3ClR5LC50CyxGKzTGYJw5ECBdR36KQ9KY6lDBsMoFUUFKgCbOOmc+u
	 YoWOkbcRqST9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF849C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997952283.5633.10939664091831943909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0788e3b297af12c02cdc4c788c4c5dabdfdb8355b5b569372b97ba86d0e8b7f1
Date: Wed, 03 Jul 2024 04:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719979522
