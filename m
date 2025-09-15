Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F642D5410
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757921395; cv=none; b=N6KbLedbEDn7wSRRHaMnOI7ESAUmFgHzHYpwpXvT3/Hi3PPRhPoha5Vhw6Z219g1lyL5bJA74uwkVJo8W38qcMSWn0EcxRx4z6SX8e9Pj03m5I0TVKPTDPAR9VkVQ8UWQtmT3bWuEq6plTzgCv55GmWdaq3SRHosUaNT/qbNyO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757921395; c=relaxed/simple;
	bh=+Bo5jM0ejEgp9ySi8lkZKmb2hr3g1tUpByAcBklXABU=;
	h=To:Subject:From:Message-Id:Date; b=bSA/R94L4yFt3vPPyazXC6Hw967wb99bcJxQ/os+hvJNdBeQyt6gCNUOOdMZbPM2GU54+h7WeIYpOzIJ/GrJI+/Y+HX7pHsCFXgTgyPl576nUfp4WvBlE9HyjMPIHwlOnfrEyjk3BApZPRbMPqyoZZQAiriizCmlfBF2OgcX/8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PP1aXjme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PP1aXjme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99AC8C4CEFA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757921393;
	bh=+Bo5jM0ejEgp9ySi8lkZKmb2hr3g1tUpByAcBklXABU=;
	h=To:Subject:From:Date:From;
	b=PP1aXjmeCI9iY9X/OOd+ejxthc9/knh7Vo+DoCYmOXjXGxvk0a9GdTSPGYf8Zf5hn
	 oNLfAxLHJg2dgKgDHm6JrPNhSOUqAxvPqQ/v4pc+F8pSFJBRLIviidIl4/oeEEhoIz
	 +bk/uFwW4QF96+pWrXeaTu5+xtJoz+RiIUIJDN4Dq/oVqe0pq3klqB7P0fXBCOUqqw
	 3vxEyOxRX19uxS67kyDj4At8rzaUaVegDM+sr98BOGpzqIxqj78ke07MiQxrBpSlhH
	 4Ry0C3UhnylurWSmvL+D9tokmoCvw5O/yfn7PwjjDP/wjYCh/8Qhmam6xvcpBI75QQ
	 QuKUQcS7fjkEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F6CA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792139358.17287.13920814020450827381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6d8b28c680fb54eb9a6fa6bbae4cd36819abcb1c26226e7d68f124f88d5bb1
Date: Mon, 15 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757921393
