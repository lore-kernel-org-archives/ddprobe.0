Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF0E2D94BA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768476234; cv=none; b=oXuXbYy6bBgke/L2RERI918KrMRJgJcZkzMxgQh7BLPjxKEYBKP5kZfNx0tZnW+hz5Q2b2CsssvAj/y9xhp6cr64jlXLXjNSSrDlvoOEh4XZTMr/4xooiUYO/44zHI9Yx0PMZ3w3g184xvf79zW6YxqKJKDKwYndKWyqMbkiLx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768476234; c=relaxed/simple;
	bh=XH8/JsWHu5QbQMWofU29+Lhji64wMglfh0AwTFTzytw=;
	h=To:Subject:From:Message-Id:Date; b=T5sEq06drnhWDXtrHl++aKQkchFWidt6ybWRUzsvnAdMwIcEAxFeqkRx8sHW7tamGZZsV8hnmtpmZto0l9cvb2kmmnaUFUIKOVqda26/PCNMEpUSJRM8+S3S0cbxA2tUQBH5Xt3r/wct/3rce/+pC61+o0i6hDn51zveDIoicdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYf1DpZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYf1DpZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA9BC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768476233;
	bh=XH8/JsWHu5QbQMWofU29+Lhji64wMglfh0AwTFTzytw=;
	h=To:Subject:From:Date:From;
	b=KYf1DpZmMaic8P4ysv67A2+JxgSOBayAm02rLEre24A+Z8+TQTPlyz44CqqHpXdZQ
	 JkZODxND/4/qgFqfA49gQ6Z0iZKcGgqFGQlYEkmnL8xyxpHzvuF7nN5pPuwcQ2oEpw
	 WAxgLUhwKJlYUjZpLElt9XZLcO52VzLPpCwhNkIW6Y7MWwkdKxmKJt1AgdkX1YozuW
	 VPmf/cn3L14ieo+SUZnKBZ7W89NP6SuyAJjvP7VDlxBnvRLbs/8kpk96+Nj16qs4zQ
	 0qEV79SZFhu5AxVE9ZVw5t9mNzWc39Op7QAlEG8PL3ZZPV/ICdMFkGdpHa2Anajkgt
	 yzmbtsmPI5eFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD94D41173
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847623358.22214.6545028659302127882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f04c6b805f8060964e4eb5bdedc2e1ccbb4725748ed75d9e832db303d6c645d
Date: Thu, 15 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768476233
