Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CB738F9C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749888594; cv=none; b=EXLYVlYlR377Y5aM9Z72nqaABCqUm6zebk8bdJ+RzPcWUmmEFoGR2ATqut41uBGZBB4pDV11x+TGE909PeW8MflxxHpX8P4skg9V9O6iGc3DDjJBLj13DndjH+BTQkrDApSq0F8bP/TWSQtRlQxSVf5jlEb+qC9Xu+iUjxp4MLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749888594; c=relaxed/simple;
	bh=HTDflAZ8zkwCmIWd+nJn2GVvr45tMZqDfc5RV/2u5rw=;
	h=To:Subject:From:Message-Id:Date; b=VMofpXJO/fwon+BLGIyjKUcHAno0eI1resPgqQWTepRQOumm1uTPt1mjIg7xy3mmPvzwdkQ6y2mLSCdoNlihxTZdK85Npno+InMi9Tr4LYiPGbb1asaclsNf5PDQvxVkKtiIE2rRzasem3FXyHUZDE/ndokqUaJ2OjqHWn8vuSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uy6yLZgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uy6yLZgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A184FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749888593;
	bh=HTDflAZ8zkwCmIWd+nJn2GVvr45tMZqDfc5RV/2u5rw=;
	h=To:Subject:From:Date:From;
	b=uy6yLZgMjSXy5G67tppJtmL3OA9lS0X2320Rjv97gxxk6Pl/TpQuCjFkRBDqJtfpT
	 LS2UxS5E1rSOS90k8L3l9R+xcSBRU9WjMQUYddTyYk8i2eWWfTLRYKPlN/iKMcy+Rc
	 NHXgKdaG/hEY2MRzNeBhH0SAaxbhFxqezv4U9SeVZFWaGs3iVilXTdClM/qhdHn/dc
	 B608XnW0rJRsBOslE5djOcXkEWh2h+iBY/B7Uo6JG+DaNqV03zoj/o9K5itJ3MQ09O
	 A5U0NrpftLEYpQCk1TMJh2d85/C/cOYjCehAkw3ssSV+WzdLMUJ+F2C79KF78x2m+9
	 nub7lldJJxb1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F445C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988859357.4088.341987108039847342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab72a04b2d640aa0c5361f968aa1c4571a65bbfe71c7c27d27296dccb45dd49a
Date: Sat, 14 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749888593
