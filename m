Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C983BED35
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791520234; cv=none; b=bXqHjvTzFJBqfy4ewvf0rH0oipiNDz0v5hcZ25xYTpTyP90mz0KArSueCvz+QuApOfhCwhXEo6InP0F9d1bMFc+hKRdqdm/kiLRSh7dxadhBbz2fv+7+4kQ7r/UNrmMOIkEgQcukRiTr127WwfVwFTLAUebNQVjqebUP2hr66Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791520234; c=relaxed/simple;
	bh=PgkRUwwb8Gux/WV4Dmcs+R+bmstdATLvdDg/y1oGmOs=;
	h=To:Subject:From:Message-Id:Date; b=JNyv0mUVZRDxAwCfZyTz3svKkhBHFInBL4lwMt1qTQasUcAFyLmFB50vkyLxx5JCYR47k9E2PKZ8HDS95kZRxTm6pO0wD4opVabfSa4zIgKYItSe+zDhUKio575NBJO80Wc4YkurQ7F2Wf5QJr3w/LZm9YS+Jxpb745LbMeinSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TupooHuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TupooHuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1CDC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791520233;
	bh=PgkRUwwb8Gux/WV4Dmcs+R+bmstdATLvdDg/y1oGmOs=;
	h=To:Subject:From:Date:From;
	b=TupooHuwm6h8L4YyeBVhJ3L+RseMGQBYl+2TAERgymgG/cSUEMhoWzA/OwlGlT4/c
	 4kWmm9NcRvtUZqk+YfRX+x3c9X2EQr0wWbLMWhb1DxKXeQxeAzzm6F41ctmu3xS1Js
	 wxbfrVwsIDXJ6RTxGse9MS3GrqJzaWHCLvRBS7pgW0W/QEuT2uukM//qIzPdYD9FDx
	 f5VQb7w8kn/0tk/jM9ndHsIYdjbc8F6kaUU/Zstb8NILrddXfCgcdvlMabz/fKpE4z
	 Kju2JuyZOC+WZILpLnvMR7GpsAWAbHsGYEFKF5kPm0hWWwJANUeaMpGOiuGkb+BeGQ
	 Dh/bT/utg1fHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDBCA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152023368.27907.11835483489031483934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2b0047ad92ec1cd5e8c474191b1409dc56f509bf8417b97ab3c48bd7303ce4
Date: Fri, 09 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791520233
