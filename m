Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02C02DEA95
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773302693; cv=none; b=lB1BMZbVlhYhjlKDpLEKH13ZWycQC9JKrVsQO5N4HZqVbXyMLkgR9zRyZR4mSS96j2jkdMAZcF13n0mP5wiQFgXY/9CI4Ru7nvEIBf2KEiB93TahgSV4UUk0SIl6xFyHLSn7lgmhLgVqXe+ab6POp3COinaBrGB7zu5GCKvxk6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773302693; c=relaxed/simple;
	bh=EPM/fsApWBbvDZSyUv0FqZIukWSMXxzlgKXNvr6lL4I=;
	h=To:Subject:From:Message-Id:Date; b=hmHjrH1kD60NPAhgMsOnU1hEtmo+fzAPSIFI6k5l+yKPppzFwS01UWhF8XpZCd1tSlb6Rh7xATyr2Qi4Jfl5bjD6sGMyow7+mf0TVW9bCfsIO0OiiO2Wid6lFb8EsyyQD84Jfg27VKCMwTavyg3s6DkjqzDWqTT5HTTQwGTiL7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dL+AEiQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dL+AEiQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A2DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773302693;
	bh=EPM/fsApWBbvDZSyUv0FqZIukWSMXxzlgKXNvr6lL4I=;
	h=To:Subject:From:Date:From;
	b=dL+AEiQqwLZnFFHwww8jr8sFPaNtep9zzn53PdjBZq1I6+513+C75C2sW0AiOA68v
	 Nof0wnpo5VTEWjE6zLFOxnm6/69mr57beIT3Jn8bgLCjwLs1EAYq98HDaoKZX67W0v
	 ihJiFuvBnIg9OwWdhtT/Ga+fsMbLKH4vrz43ZD061UCQ8earcioS7pTOc2qQUqQml8
	 CPTi2RfzHdhCJckWnbN0i6O6MYl9cLKqGyeOp6YJ9cIjIzh9rHyU5p69qKIuCXd4Bf
	 pwycd3e2TmSfxi6oRUeiyrdd1AHfq69BobTJ2NjCDU4OjEkR8r09g7czj3HwQEciNF
	 uVNCg+VG74jGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90300FED2E4
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330269358.13995.761557673156604224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4a094ec5a3bf8bcc504578140ce2d0531a71286c7a4b227f745808395f45bf
Date: Thu, 12 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773302693
