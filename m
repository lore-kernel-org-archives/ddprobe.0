Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC373BED6A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785123634; cv=none; b=TBnnXfgXjKLsivbvV0SSD4DZgKaCHUO192dkyMdHQZLaZBXjJnOtsS1+qIJVt8YovPC5dxlpSKQ9I8NgbreNvyrmMM6Xd93iZGT0CuJPtA9SBpYjyZZNuOzxwuouE0saqDRasNoaHp0tRCrYYcbr9YC/kIQ2p/lKN0MtP+NWo1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785123634; c=relaxed/simple;
	bh=7jMFudLMKBO+USkPyrc6c+kf9SqugPKtB89OrGVwkZE=;
	h=To:Subject:From:Message-Id:Date; b=j51zB+mi4pskF8cDj2q98SF2tGOvGc7J3AkGKKIMOL/ke2j4Pavgtwu8NhaojwgA4tnP0RlkM4e8T6K8L5T5HZgap4R2DPzftALB6BdQoiVfGVmK6gCyYPa6m0fX5WOo2mT9HHwT3rMGab2u6yttN2+dGb6OjDJh5a1iE+B1T+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Km6O/9Us; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Km6O/9Us"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0058C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785123633;
	bh=7jMFudLMKBO+USkPyrc6c+kf9SqugPKtB89OrGVwkZE=;
	h=To:Subject:From:Date:From;
	b=Km6O/9UsfHQLxwEDaSmiKAySSu2h+fCd7gC8xRHFrHleKh28Ih0sNRH2/NBF0Q7NU
	 au5RC5VpBxXHfO5RSzyM29TlUsgv3Rs2ATJDu+qogqIVxv+YwIwciP+/RuLs0+ZuPK
	 LvDZf/4GOEdgjI3McjE2J2uSd27l35Xnlg40cKOsPE/oZVDlJIpdBfngAMTjO9BnAK
	 ZaMnt1S7BjL5U75C3hEd8g4Sd+Xv41DJova4MM4dF8GQIQO+mgGqM67Cukni69n8rY
	 te2o/5y4D/GRBWHMiWLtCRHEbvDNtw7jvFBgIBicY/nU6FCZzStvlQepBjvlYs91Vb
	 NXIKbJbWmdS+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB421C53200
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512363369.32587.5778822127318230871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0354f92dd0bdf9bf52c2a824312fd8e7db821706c4553a811c5da44ee21632f
Date: Mon, 27 Jul 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785123633
