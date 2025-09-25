Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256743FC7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758995; cv=none; b=AaHfEc3rFnHoTzObZDBts85OnD+ABubladUrwENfw9vIQYuGb7UZfi/7wgCu5POndhhE3S4otW/cPSeTOpNdSHlWNB8psvpYHvWU48K3rEyCXkq10HOF3NQoWvTL9W4hs8hvDsb1EtLGKcKD1QFEgy1HUuV8fyyzqzgSJJomh/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758995; c=relaxed/simple;
	bh=8VvFuLdIP9plTQJdL0uItyyih0r0sn89RWioZBLSjLU=;
	h=To:Subject:From:Message-Id:Date; b=ASWjCTCLQefm5+yNjN0BiHo+rHQ6Lk7pamatDPg8EDPT43rBhTNYhO1zLaNi76dckZlvaquN1Z+hYveVSL8hOh6ZA5P1outIhZMYliRcrLxBwCS7DT8g15du2PG4IOTqdQ9pPRs6+Enb+QBfS5NdboOZa+3qFpx173bfIzWtwmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC2CNdYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC2CNdYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A851DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758758993;
	bh=8VvFuLdIP9plTQJdL0uItyyih0r0sn89RWioZBLSjLU=;
	h=To:Subject:From:Date:From;
	b=eC2CNdYotLveX/ihvpQjQVpmGmC32OaPAI4Z9mmDkeX135k6s7CG3mrW75rC3kaJK
	 l80/IvwDVf4nwIuOdc0kQlL91qVikwluuX91rjkRqqE3yfHI+x5/9NBz4kLz+Fe26m
	 qouK+lOimsLwwl6DIfst7pGJntAhs3z5TNP0xc2BC+TVGEEm8eVtMLE9lFaDXJQgZV
	 sKX3n5Qy+F/6vQ2gYcSQCeJyPRhIMIkzxxCA1XRr6F6bnr+G/kaCVmnP0cE8gHDY6s
	 cGpY2nsC3V8thsVr8KxoWe9GvMzTe++LLs1POXyGYFLg6W6tcRE1eHbeee1XegAie9
	 /c3DRzyW2MxNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C51CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875899358.15775.17891063648507304487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568f4dba0093a263f5f47f04b0418478430a7e4ccf77a3bc0da01dad1821f994
Date: Thu, 25 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758758993
