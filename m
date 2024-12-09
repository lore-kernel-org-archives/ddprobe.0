Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8FD13B280
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733771155; cv=none; b=ehb4vgb1HaXTzK+B4iXC3LAArZ9Mn4P87hVO6gjOigNOAFPI4KhXu+FXna8A8qTZTAo6oMCRdp5T+nJzleGWoDvsmFd+67BiUMIj0qKdmnJSvsQxjZUuS+bCxy4Woqh26f+AYufhE3X8RKI0oG77tKuho75LXJBoS6npN+GfQM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733771155; c=relaxed/simple;
	bh=tjtKgROYMqve4omJYYwsbxFw45wRFhCx0+LcKQ53KuE=;
	h=To:Subject:From:Message-Id:Date; b=Vw2NE1nj7VzYMhIXlvVHO7B1yLo4ZPnxxkjzujDtvqT4S2oV9gAPjVx3Ks+ihnuRgKk7t1guCa3y5IDR5n/wBa9zFYlHD5s3apnwQVYer+Dmo4ne4MIDya+OyglX8PtuBNxlmkpfbK7D+b5Y37rra5TKuQ8xmpuV8eAVThp2/6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJR2VgVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJR2VgVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B494BC4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733771153;
	bh=tjtKgROYMqve4omJYYwsbxFw45wRFhCx0+LcKQ53KuE=;
	h=To:Subject:From:Date:From;
	b=XJR2VgVALgcXpdcHIx5xLNL8Mqy5aVXPTT/c1AQ1gZRIsiq3/eOs/w+XLvHmzN9fd
	 UxLo9Q0vstN3Vg2F+U38Bgng4FLUYm8arC3SDjwrDCBmlxz3nOS+tAATB/fAceFZi/
	 IGJYcx7Zye7K9ycuFmBd1WCzE2oEQXo9zX76j1d58hYJEV+FDmV5wcEohO0haLx6rm
	 GCHpAbE2KOea/R34GJSso3+g56EhVlsGnggQFLkhY+L9kqBZSRTJ5buVP2iMP6EXyf
	 x1poKc18/BUKsiPKtS38bbDwVmFPsv851gwfHBUwMJacnCEYuae9fZnvkqDCc/MaCm
	 ngZc/ii1wo7Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985F2E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173377115361.17481.14519145124304488093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9413d144a05594c5a6ff2b5142f6810fd36b30e35bf8f458d4bf1616d85fe1b0
Date: Mon, 09 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733771153
