Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C65918C2C
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776636454; cv=none; b=t4QCECbPm+vs7vUg7WPn3iKCRwV7e9QbXpUufs0T6maWbQipmScxeEwi32M/vj5dhO47xsFKAUvRQtzbAx9N7hhxUSsPOlH04HPG3mrXgrKKkt9KbJ5ARPFgXEu5a9t5GbQN+oy19KtYQr1qMj2ulnIUUXLsVnXZAYMbluuk8NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776636454; c=relaxed/simple;
	bh=l9BCMxfW+anznyax9AsLs62NDfeI1nXbmqz6AelLd/4=;
	h=To:Subject:From:Message-Id:Date; b=cV5ce3LlrQwlNpRV76ivwWbkUfhkVPia2Q4XwskWAun7u40kTH5OpDJEV9OUMuHGcVqo6zRmY/1YkNVS1EH6/PyMAoVvWf/N21q6xPnvz7I4jOyd3SurpYmuYqINOpwrPC+/r58IlYhFRule8LyQvYy+ZTrwEgxxEPpPZ0K0qbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcT86jKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcT86jKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF086C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776636453;
	bh=l9BCMxfW+anznyax9AsLs62NDfeI1nXbmqz6AelLd/4=;
	h=To:Subject:From:Date:From;
	b=RcT86jKlll2+Gh/rSToxPHO8GVxLog1rq3nHUCmfC10KM8SvVkgES96mKnttiatXI
	 nsFhFJK2BOtZbNUwy+rW0W332AqvlozJr60TT9hTXKTkFkrOXbAU/PK5iz8jugd+Ei
	 EPeFT5e7GwNSVTG2PPewqYvsfXI7Kvx6AE0ve3c+F6walHF1vHhfrcPh5kGxcGqurJ
	 6fdg2/0ngmWw8pqrgZwagqUixaBfNJha+RwygE1HTumhztvWLlVrr+4Kyd16ykCcJ5
	 V7M8E6cN9dzt9kga3leTyi/iXOGtFKXsOlXhVPUOL2/JXzqFxc79Wago5Z9oV6P15O
	 43Ady2oUM1APw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD29FEA71AD
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663645368.21678.8409448482726623024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe2f2c6d9d47e70b821d03c71774b419e3c487d954a16f53bb46127f4382d08
Date: Sun, 19 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776636453
