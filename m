Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4599618C332
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792299034; cv=none; b=spafLysKe25iGDoAAhB5iGwPVSskrg3aMctZLTVMZbKQSRCKhF5yiNHictC+DbNvVB8S6KEPj7tuirkrNWl2bcFsSdD6N/m9bUZR+kY92dVgdAi/yktROnnFQ1wBBPCZ8xIY4cMEWVfnp/LkrgzndjL+63QDkwgwzdiE1GTcSu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792299034; c=relaxed/simple;
	bh=sv8notOytV3x54gUkT496+P8HqERQGFMmxZVNeWa4Ls=;
	h=To:Subject:From:Message-Id:Date; b=hlIXh4jWDpjDr3nOunvpSGXtfZApS5fCagrPUshkmOC/3iI+W0tqYLv0MxIFBdlLAoW12Hk036xhcEwgKZG4oELNwI3we4Oc7lBLORu6DZbnAUwsh+QqaPdulRRf8pC6/mAY/T6fRV3vQdAI2F+eRnwna6ULq93nFOVwFWdjxWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqNrjo2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqNrjo2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAD0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792299033;
	bh=sv8notOytV3x54gUkT496+P8HqERQGFMmxZVNeWa4Ls=;
	h=To:Subject:From:Date:From;
	b=HqNrjo2LlI0X0VBrdYHl4785aQLG7WVGIK/a/d7KnT6EOfApGgudwUuEe6qi0KgC6
	 XPym3H2OfWovrJMmguOzhQkTADAvf8SHURWCu08tFx/2fgSZVnLse10z/Lv6Sv0+7v
	 xcH4TLvoBMe9V+eI9ymhl965KdQIp00xlwoTDFHfeeZo1YfmfVY5kSPu0SP2w+1CuD
	 GI2asKGeI+oN0ijymWlyvE/yBSqTmBRcfC4ik8icBRdBL+Gfa21bJk+x64CGBFuOpc
	 M1zJEzn8weN8bAJ9trsncToQWczwTpujZHlNV0YQDiBKvbFqXMrbUl6cnQMQ83vweT
	 G77IFGm6gctcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4ACCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229903369.4199.13372523742102558381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1fdf3477f6a9aff7f92418f8bc09e5d9d423a846e03bbaef0280be1532146e
Date: Sun, 18 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792299033
