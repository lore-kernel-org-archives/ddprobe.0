Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365D13A785C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780541674; cv=none; b=q+Qgcd2W6kgo57/wMkqb+emmUvBac/mys2OSKEmVF6e+yBDWiHlBMs8FV+DqTrocxUF7JhXKXiJ8eYxMLxa6XTidBeMbHmGHFAggYzPbtQAAFIZH7iKyUuqF0OJ2ZBFKKCQfZA96hmrJHhcgezrw7VsEB6gXSoPxvB2A69o87Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780541674; c=relaxed/simple;
	bh=yw80X41thqQecFlk0eMAU8ler3ZJIRWhZTDE8S4xYHQ=;
	h=To:Subject:From:Message-Id:Date; b=m9Mv74QMwmR6maPUvWasx1WxM65//HW2SaiE09hOvp6VJ3mHpxC+lgIzWNTX3OWrYduGRMryqQU1+rpCB2nmtgH9HHXHSlg1rQTbxL8WC9HyBgP13A2hHyAKq+Qv7o9D8BBHT1W6FVg+Op+qgXqRxL9IaaiWn1bic81DMo9VuH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsnd2TFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsnd2TFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1C2C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780541673;
	bh=yw80X41thqQecFlk0eMAU8ler3ZJIRWhZTDE8S4xYHQ=;
	h=To:Subject:From:Date:From;
	b=tsnd2TFipX31haCw6ft20jrlr3/Y4+vm2xnvfp3T3U0sm81tC9pGBXEDrQCRNMaGF
	 ax1alRBjkb2aBOrSvpRncrppPViXEopWuyzy6NcFZO1XrRiWpHcyYDfFtyxlgV/OZp
	 kfARBgxEgYp0evRrZNwUusgzinsNPC6gNsO4qDxFuVl3617GTDJNwlyx5vplds1WH0
	 2YrU9IzS80QQqofcDIYFEGbHMlvYmc0PktG96Al/gKPI+8pPfsEawU3sHZBbI1VUvp
	 vPVWyvrW86CE+l6NfDTHMbS5/2IG52ac5HcINBL1iOFNzuYsQmpZTamr8O/jIXJuk8
	 6ysqIgFcJsyHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22ADCD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054167372.7627.11798696353616000477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8af1610b6f41ce75ab036037373662ef13f43d03753bcf51098992ec2fad8b
Date: Thu, 04 Jun 2026 02:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780541673
