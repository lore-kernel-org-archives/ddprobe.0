Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A810B3B0AF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789697434; cv=none; b=ejYA9nuewX107mpZ1hc/S5+K2XmFqe1nQaQYTW+j9RjsE8jKzrtSDPNc5r11y2SAd1Y1k4a5eTX8D/SQXsBzpS7Sfwj9fRM7QFpfo5vbHAnu1onSNnx6kW6E7tNH/xvxQlf+kBBIP9IM+BzjJBkOT6kxlVdzh7W0aDQ+HzoPmSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789697434; c=relaxed/simple;
	bh=BUeLBcJ+hZJ9qn58iwRteH7+6Eimoi8mKLUwfXpO47g=;
	h=To:Subject:From:Message-Id:Date; b=VmCyRtgzJ0yWUK6+jzx/KKzpoh52fVwmADozajGPH30v9q9dqiJT2WN9KrL+IZmQMDMDUgFcFU2G/LJH8cGQK0hQjN2GDAwalyKLX2o2jEMclyNhzeo61tHuCWIgzIVutASR3ZAI0ZWs2+ZLkp+3cIeHa7hp8wTDWk5vCsmlu7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cr0xAEd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cr0xAEd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC38FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789697433;
	bh=BUeLBcJ+hZJ9qn58iwRteH7+6Eimoi8mKLUwfXpO47g=;
	h=To:Subject:From:Date:From;
	b=Cr0xAEd8rW9Z9dHacZBbUpAsGhEIEZGGeQkAksKE+0XQGPXjeN0BqH7XXUNkPLe/o
	 xWKZtBIVF9ah+JemqCkj6oFSzIKO5lkhxIcnQpsMrCAuZPLyFvXcOpnZ4qyyvz1h2p
	 0VXaQepmxpgqIsZ/93y1E5O1n9IzQD3BNe6pQaan7aOVthwOBvjibj7G9r/FkmOyap
	 SJx/MQa/axNJqbkZ1atJT9+HNjB1dQpTFtIx8IM3YLNSAMddU1DP5sn0m/PsOceJDZ
	 bwXyDh58btAv7Jenb83UDpzeHZkYOlrbCJQFFKtDyuZAesZrlORxqwyPRZFtsGZ1bH
	 xs8lWC0TJGGaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9833C982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969743368.28743.17743272424158435867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401b397bfb8541f52a8b72d5fc65ae3d0a429b1dcb055fff781086a3a97e2db1
Date: Fri, 18 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789697433
