Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DF74EB58
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708255097; cv=none; b=o01GMQFE8W/uS6EjZcALHpBGKdFrWmyacisv1Jf79gtC5+eCadklAvuMF0W1wsznv9oAA3DOOgirbnhN2BlqIVzc2MtKWQLOPVDNhxE/2ZFrzHUNttVlgaYqlFCVcPm7TG4DJTrjs/AMlbBLeX6Vsbl0UM+io+5tSFrUbgWp8RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708255097; c=relaxed/simple;
	bh=VNJGTr2rfr5J2De1LIfYDO7lvxHXjTJsN4Ff/hCi9Z0=;
	h=To:Subject:From:Message-Id:Date; b=GXzI/nHLwwXoNAP4rnJb9+NRXUbwIxoY1IWxu27sskvsVU3rhXLHtRbnn9RUEu70FGWFXaXEtPLi1Oa3nPRdluEd1GSiPxozcHREE+eDbwxINSfAGdUml7IU6JHPNPGT4F25JBnxW/jDffo2IyK6j9NbqKGQXZsRiNS749d6MUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FExyo0NV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FExyo0NV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75745C433C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708255096;
	bh=VNJGTr2rfr5J2De1LIfYDO7lvxHXjTJsN4Ff/hCi9Z0=;
	h=To:Subject:From:Date:From;
	b=FExyo0NVARkbhPhQ60/AfW4u6r0xiXyj6FnZqOyakBr4EVd/YciboM0EjW6ReVJKa
	 fPxGwnnAchvQ1aCHpJCvufL7vfzgmHmyrJE5LcPImUHeR/lIeWVbKEEXoHb/MaoXzj
	 s5eO7m2LjYhZS+D+Sc41o8rsVjVwftK6ldTE1wfM6WcilAkw31qRbZ8eGm6T+a7+0y
	 GJta3gk8Q4zTNJEvQAKIbYJZweZFfIVOaukxjBoEa1lP5K7rTuQpxChvUkBPGmRgm9
	 WVLEHGuPCZeizJVgxCsSX3YWW7oMTtiWkqQQbk6LEtPabTUM1qQ6tz3yU/vmuY483u
	 VTDORTk9Zg6mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C033C4829E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170825509636.10365.6061794182896035099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f434eb2137b4d4e766364378217553f8e0da7598e1f6191d29f0feb5e5a2462e
Date: Sun, 18 Feb 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708255096
