Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCDB21D3F4
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764615174; cv=none; b=gQOBcrj+FjBW8CoVwF7nquc9p8GdTxfCpx63V21N9XxTNqulDTNj/QOgqGJMUJ6u7MXyIUxpbznXjfUCo8cbb7+m+NM0BehnXzQLSJTpioA7kRpTnkBBusmVh2FXrzBx3LLzPDKqFlManxhlRh9isr2Jr8aACK6F32wV32iZy7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764615174; c=relaxed/simple;
	bh=rsjZQBroV58rRUaWCLJcxO5nQ0zan0KmmL2D6bbq2Rg=;
	h=To:Subject:From:Message-Id:Date; b=nF7eadHNjjgEMJDDZ+MpGbdRFiDvnqnD3fkeRqUZL06PnMb43is1bQQHTWB4Tddpr+7zqSs7eei6NIQsCaAU3qEOTUeZzWBECfAZpvh4xz5EJBoyXD+jcHjTUJNNHwC8RhowWnqubi7gGy0dL5n0trgeglT5QU0dJIbk5ML9VfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnXxKiVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnXxKiVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9323C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764615173;
	bh=rsjZQBroV58rRUaWCLJcxO5nQ0zan0KmmL2D6bbq2Rg=;
	h=To:Subject:From:Date:From;
	b=tnXxKiVmMjMFdGHrHz5K5sUhlPoMaX+0vitapEPal5sq6Fj5S9byK73c/1yD/EH+B
	 K5lYLsXkj6ElPlV+14RddPvhciypRglOze/zUOT5Gv+BfU3Fg7R+Hce5/bjOq4gns9
	 ixECQoC86avnEPRwQ7AGoaFGBlxutSRhR5kNffLKWu1f00FdoF+JBtG3orKqZwPh/D
	 OnU7AxGJfhARlelXH6mbmOZbI14+2EdQ4PN/pWLb96O4sMrEEKOpGcaeBqf88SKe/X
	 NWe9pvD5T/IJhXPc7NGxSD/kYeZbFvYP0o3inVlDxgj4IVROxHk+If3sZZEZbTjgn3
	 VnTWxTdy8AFfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9254AD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461517359.9561.3638363403184102151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32fe530434a8923ab25f24892f2dc4a3bcdbd80775d1a5501445d27907e9595f
Date: Mon, 01 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764615173
