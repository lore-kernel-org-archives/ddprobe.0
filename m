Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2702286334
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752122994; cv=none; b=JBHvx3cmmFRFY92UseCOMPMBW/LSe/8FLYw6Mdm4whpX5pttHk9kZHuJCMHudFrcOQQ/VgAtJh3uBwoPKRqljkpe/cEeg2A4ZSutM5tmOhnlEwoyPsSoUzb2UfLYLM8M/cLTZkjSW+JlDNSJRZbwZO2qKy52dn751Vv5s5wV3tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752122994; c=relaxed/simple;
	bh=RXurNs+V1kYniJ5TfoiuIyp76N09WV1szgofC+PPmJo=;
	h=To:Subject:From:Message-Id:Date; b=OQlZi93VYeUJOKDQ3Bj72Xuw8HFsXXM0INtcjK5DC6S5Z3SbmwtPy49EVIZKezQyQEEIsIqPfC5fbGAIfFW1Tb++Grrk6J0c8yemtTWU1OZBsWsmV7caxZBVN04+o/iuFblu0l+eorD+A1Na/oNztXlF9FlueeJGXcH5ctFJctc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/lMrlSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/lMrlSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D329C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752122993;
	bh=RXurNs+V1kYniJ5TfoiuIyp76N09WV1szgofC+PPmJo=;
	h=To:Subject:From:Date:From;
	b=m/lMrlSdd64snEpGu3/rkuylNzPkBx3M2f7OmusmjAS1xcFlguF9mDj8TorVmq1Mw
	 3tx2X2qb31ry++Lw20/JX8QSsoy3d8jGvpYLvOQ8ubXHcOACLtKDvMmZA5uFSr5E68
	 7WfBZq5Rk9Hgs6TjhYhugZuZ1Ue2poNs3OrPGnnZIV78bkdzZlRblwBpubUyj2gyx1
	 HG7VsHRUFPKhkBYNNaud7R/yYof0ELV8DLMMdTPnj4IDs4ZwE+g94XoTtwcREEHmle
	 uTfECCgxyz9ah6cIgGg0q54L6YkUviwDCFb1uP/DJ2JDkcP7vgTnSjuLA0ws5nXhBx
	 7H+CGU4Me3gMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E82AC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212299357.20372.14469547263680527031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c80fca1a22d8f9d6f5ff2ca328305b76c0bd2e7083cc06825fd6f9a8c76532c
Date: Thu, 10 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752122993
