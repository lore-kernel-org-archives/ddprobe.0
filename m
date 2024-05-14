Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6582DAD2C
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715649743; cv=none; b=IQl6vz9yEWxJiBaFl5XS4Btgse0BW91eyDaUXWayyrgevPo5hvYVYh2i2ZJJej9TwsuHYmqLlLVMGysABNWq1qrQqwOq91tpCMRB1nOVNoNuvJf8kR4uSLpqmHXtp9jm+6eHtbpreBpoPCF2q8DWfzuAgBgevUN7xkwh2O8V0Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715649743; c=relaxed/simple;
	bh=xebQyCppHCISfI1GcZg9JoEj+vPhu6vys1KohX+c8fY=;
	h=To:Subject:From:Message-Id:Date; b=n44wdFEvVT1AbbimOi9zMcQz9lnhG1swKT6lI5ediSwlquVf/PdNAhHoMUs+1+mqTiJQjiXJ7Xl/yYb8vCTZIh3cnsiDM/pNZf4zRrLjzsphD644Vhf8R6ptGFmKOW9JOlzfVCEhckU6tEdfXnn33F+0gjCjcLvapFvINTDCo+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEVOZm9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEVOZm9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E43C113CC
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715649742;
	bh=xebQyCppHCISfI1GcZg9JoEj+vPhu6vys1KohX+c8fY=;
	h=To:Subject:From:Date:From;
	b=DEVOZm9PpIcQBVYeBYxuL7UmArrjKz3gEJOOiN4r/h5m+B8F9u74uUbdbOHkiMq65
	 EnxR7yX6Lm6TtLX+gq6HFnCAj16+ydH6uAK8rUaAJNg4zsol7FFavSw+HSGAQLRmwW
	 F5mA25XV2jqtXl79reIiUPUGHeE6zvK0SoOz6Z7ciEeT0Q9dBSZjTA2ZV+F5t5w8py
	 rK/0eLBuIrodaqnLBAluAOjPfIDkNHNUX8mnEjnugV0csTOk3wvSl6W69JYMY6TtJV
	 8figgBf+hwzS6Bmw+a/QzOGKJxWAz4+f/RqOKwtqWuvXsDx43kLRq24UDgGkktaIJk
	 Bd5zNTjatxZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C288CC25B78
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171564974275.5199.3533613665598801205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d599142a3a95384b5ea8425ae11ef8d9832ae33f970e04f35b78aefc9228e3a
Date: Tue, 14 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715649742
