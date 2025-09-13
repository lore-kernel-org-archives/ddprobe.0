Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C305283FFC
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757803795; cv=none; b=Ez6N39nseM9J7btI/8kWEAlfxMmhQUh6D8dKZE5EyfyCapqJgTfIsG6E561IjyM3a31T/TbhmbTiIOX3ZjtMRI+TtiJaXS38EI5fkwdrKyhbRbA5tsaHvFp8n3/xo0DuVnx4VXmVo8+wVBA5ZvGZ3Stfcim+qwDi9YdFkXbFnx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757803795; c=relaxed/simple;
	bh=nl+DM8yC/73xyno3iuwOWFW3+F8irBKjh1EyDsOTDFs=;
	h=To:Subject:From:Message-Id:Date; b=hoyTc0jyEy3S60sYgugs/iWEP5aQ9BrfhDkcZS+V33TF02UbHl9om+Q4bQNndEwQHeJilSQZZoo0NfApO8EAW6On7+Fzjf9jA4QiG4aRjh1SPj1J80IIQHy6g0goy+x40yENuDVs9aRAq8yyXgrVK5iwSjk8FmMOTdISPL5hQzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUnC5T0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUnC5T0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44E8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757803793;
	bh=nl+DM8yC/73xyno3iuwOWFW3+F8irBKjh1EyDsOTDFs=;
	h=To:Subject:From:Date:From;
	b=JUnC5T0+9lb3PRxs9e090gV8/BG1vziSza7oqw9nDkYA9hNOMdKyK3BEHjsMmOUwj
	 tL2A9KminsT3D10skrUVmNPkQmieJcPFp+VNzlJetu3efxMwHdY8KNMFpO8PW8M0Pi
	 o4wMDv+usAPcq0Ahsjdbw9zyRFOkB2XXDo348xPBEZhwM1TbdygvkbMQLIPi5/oS0s
	 4rdDjDwBISEKNNItGh4PxyVmcVp/rs6s6BHfjVkOd5D/q/vGP1tfwink+675zGZeKE
	 wYkgQarl1Gw0jqoGuuhfXXfA6JBNWKfLXn4E/akeXyVNuOUTM2UGcHQwHN74uFb1JA
	 kYaLpDnojn/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94812CAC592
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780379357.3731.16706739467076892537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b326cbb88634d2b83dd29c6e2de8022fee94762032f0dcc92337efda00caa07b
Date: Sat, 13 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757803793
