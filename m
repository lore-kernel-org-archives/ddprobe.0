Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69273BA37
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712896763; cv=none; b=A2B0L4yoSlGcet6JHzLIjzQEuWHjBrrOeueTiRsTxWSeLHQku5xZizTpOwikgKhiTA0/e2bt6THer7TjGksP1x/gz9bdCYtx7gijwdgnNxTncmoFCVLcP6wQIB48+1kmagQSZbUeXrvJVSc9q+iXz13ghqz4hs0ttAwcNXLHpdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712896763; c=relaxed/simple;
	bh=fIOEW7/pcrNK5cAApB8Vu1+zGEKcr1rW7y5aHWKlUaw=;
	h=To:Subject:From:Message-Id:Date; b=WS2jhjN3HDCaWfG2ueQSqqFdJm9Qaquo+427uWVnk0EJNyQ6mrlhEtoBdsYp8cpz1R+4FB0OMz/OqLmj/VvW2KhwkTZupDs+bKzD24CpuFiVRnIyqb99cCqptAyOG500cxzLTEI1riCDqt+LHlVxQOeZXnKMpnr5jsDMaBYGFqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2nvALFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2nvALFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE16C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712896762;
	bh=fIOEW7/pcrNK5cAApB8Vu1+zGEKcr1rW7y5aHWKlUaw=;
	h=To:Subject:From:Date:From;
	b=E2nvALFrvSiXlACWFP/KVypHB3rE9JPsBoNPa+LurSYCts7WWs+ly/lp1T27zS7kG
	 2MnSL42yisU6kxAEESxzNulcgL4D+LmqoIgXA8enW9FuDZXfDLX3W4tM5lpl9Nb/y3
	 5jGmzgcWSIh39xZJiJEwLRdUh1ETYc/28Wg4V8+/Od6Fqp+teo975+srIzcDOq2HHT
	 ttvkvR0h0dDbWZTdSTahtWUA6BsuDA/Bkq+pMhEYfXWviBN9mp7p4UMpeWZac9JmP4
	 mUHsEgLuOPFeCDTvCCxG9rZ1vMIJ8dtswB4vma6HKxFbCvRjcThisrKIidqi0U1307
	 LLc7eUEd332XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7008C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171289676277.571.4785635080156894885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7af4d1be9ac3dfdd1d01d0780e2ab105d022377bbe9f5cf53cd4600c06e5441
Date: Fri, 12 Apr 2024 04:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712896762
