Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855AD27CB35
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781000074; cv=none; b=bnVvvEXfHPUNINj8Su8Av7vShxFrU2XFsrvAxEKrzKt/ds6AjXrwYeE32h/4t35gqpN4Rej/22xkkAoJsl7kgVJ9Sc6WEkrg3Dg2C7UV33IMk7J7UU8C5A8qtk7FAUc/Is5os0B6motaeBgk4xF2mf6e2Rwmi7/qI/JPvXKh89g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781000074; c=relaxed/simple;
	bh=Jdb3+qacgGUvhLCE6Qo9PCMWpLfgb4DhFdlC3e7u+Dg=;
	h=To:Subject:From:Message-Id:Date; b=HuXtE6535iseKFpey7nQOz+qVgAh87W+3KcAQ+MqAiMGFjUDsRNLLG7hCSwOHJAmbl9PihTLXf40FKBuef6/MHoWJFtCjdD3WAPYgbGwactTmhAC8sRyjUJi9SGC1G5HyasshI8QPeuaOE3FEb7TAhZdFWUA+ScfFWqWVq4y9jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJsy/cUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJsy/cUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2BF96C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781000074;
	bh=Jdb3+qacgGUvhLCE6Qo9PCMWpLfgb4DhFdlC3e7u+Dg=;
	h=To:Subject:From:Date:From;
	b=WJsy/cUR8LmZ3NXqIFndpb0WqSW6LTb7084tbcfYkYi9ZTpVHEJJtWIv6k4WVyPWG
	 E6A1o8ytJYyr683jQ6tws8EMy00z9VzLJE1pEsH6SGU0OpMaNRgOx1LNXdeJTr9WOk
	 X1BDGKXcx5/Wm3D6IG4DlCkuHPe+tZyiNcHiyqTd1q41bZNS5jiWXKVvBkwaJLJJJZ
	 wfiLNusbJbTQig7jlhJ5eJzoSYI7wpI3wIrxdJGMAv3g4Lgk/F/A+wf0MWaO0r7Osy
	 PLk/8dxcgFfwVG/uudpG9+oEXEZ4UKw/exhkcv+4OJHq4H6CIQRCgp98TBW8n/0DOj
	 QIDYv+PRAku1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12DDCCD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:14:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100007404.8372.16828798805275949246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabfda75e2831e225a65c7273396708d38867105256fa0fa61a7a1f6a48d2a82
Date: Tue, 09 Jun 2026 10:14:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781000074
