Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B853859CF
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775495734; cv=none; b=P9d881Ri6e2P9eoiryyj0gDX/Cw2tL5fzvMiuNBJeO6hUD0gfC/bKxRje/Mcz47s9Y7tZ/N14W2VnlwtuCcytc+f4GGSLRt9nWgHj7hqUID0XjYX+PaOW4n5bM0dI7TB3nSIfJFxZVlSbCoJI8dUWrQGRhjIenzir4a0etMWyJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775495734; c=relaxed/simple;
	bh=fQZ+IClmf3l4EkbwNxYYrIFeQxhZu5GbpgPIeagR48I=;
	h=To:Subject:From:Message-Id:Date; b=mzxO7Xm8LFGjY+6UDNdUle+5PsmYv1m6sgQ++wwelrjXOopfIoimJf4ngNBAJHzDWq5/RbclRdyuUZwfI7Jg+euzZnoXSKI4on13oBwmeLqO1TaWqxwxgA8G0GNfyb0A+qRDzvwzNEZeRzykp6t6+GZ4dlA5KEFjTmGuJw9CJjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXv3pk7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXv3pk7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA64C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775495733;
	bh=fQZ+IClmf3l4EkbwNxYYrIFeQxhZu5GbpgPIeagR48I=;
	h=To:Subject:From:Date:From;
	b=aXv3pk7p05xEdumnDA5QQwi2PNi2Rg99b0YOknpjYuUKfQTAueYMHXa3Wb6YaguyT
	 OLGiA6Ls2RGM5VuEufgJ9rhjYPo18Dc/K6SyeWI6AAmScJkFq9i6qASPauu/qi29/a
	 Tk+OJxZ+Oc4R04Jihhfzif8hoyxCX4DmdNkU3CwxIenJGvH/Rq87KNVyCtbQQ+9ok6
	 h1jAOk+Idyf1jC76V6aHV53aLgCCqa2a9sjByrhNRE+FB/0i5J6Yt3fy7xYKFU8ooz
	 nXBTpRfUlePSObkuk2G3EQNzisHkf10rApXgEQeyUnYirOVbNP6dJmzpgOlN2gN3ds
	 QxScwvp62yWOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC54BF46C5D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549573369.16258.3214486417020643368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0052729551d74af8beea012e3cdc1f22e62b1d487aa73bc9c7f34a4d43d26ebe
Date: Mon, 06 Apr 2026 17:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775495733
