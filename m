Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34420285CA8
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775186734; cv=none; b=FmzqpHfCyiYxwQAAK0Hw0LJE3lB8kLUWCvGPsuT5N8+Jy3dqDN82uKiGhNpkEkP5dZpr2IWD8QU22AzoZSwWpepj+hb/4jExfXS9n/Vc6pV93hoUAaEjp7xZ5X4c12mxr1/tC2wvyQP3AADUQuSWczBaq+luayQLsHK4oDgwbTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775186734; c=relaxed/simple;
	bh=zxJgqfVyFE0hFc1cvp75RMCaUB0iFNGhjckgyQknbMs=;
	h=To:Subject:From:Message-Id:Date; b=kDvzbwWfH3m7rW/4TkxuqquSZ274ktFI5jnVCn89/Tu/x1WC/SvekpH5M4Y7klUrGQSDzZqC9h1+KkE64foapvZV8zYGnqiCtfkjKsy4c8aPE2S+SFHq62WaReMPpM72srLbOZm1/W3lqzPSN2p8HulERw7Qc3gt2o2DWyxVB08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pjmu8XDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pjmu8XDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA9EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775186733;
	bh=zxJgqfVyFE0hFc1cvp75RMCaUB0iFNGhjckgyQknbMs=;
	h=To:Subject:From:Date:From;
	b=Pjmu8XDylTvf5D1P/baNlqkvbDzYXXv48XAvMDNPkWL5ISpX2AI0tzw1Cj0Opk2/o
	 dhdmRuhN8NlmWc1myGyjSxzVRpAEbcB/hbpBrk6Qrh+Nw+JUVJh1fQ6l6DNI/4qwH/
	 Bukpk1qQoPs+U9jJZOrL7WSXE66IK6THr00gblTnQFi6+H0TGFLb5gv3mV7OUJ+QG7
	 o/1GtJyfMN7JTm2mpen3QvkFh98lq3CJem5Vx8lHh6Yb1ZKYuLZbmhkUNszf4J/Lz+
	 6Q/SB5R5s4tzxEzf8gaYPVynhu4Ut1YnPOfAzuOLq66t9c6GWJL28iauLCFE8CpdfO
	 C0AvPvE4fJCEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB180D7308A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518673369.28246.5895742829689145907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7165e5c842bbf02234fbd7652f1abbb4654a45040e20b5bf4fc0c6be62e0fa4d
Date: Fri, 03 Apr 2026 03:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775186733
