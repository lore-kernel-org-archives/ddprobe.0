Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48912328B5E
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785870634; cv=none; b=VgdIrQpHtO8dkdgnTnhcGSFUJybd/gAbIQvyM0zynPObYDwNMquq3w3ZtNnD0Zet0dIq0uXuHETSoaoLkrhC/Esea+TYKayXS/utZqP0EWY+Sy1BRTLzilXt5tCkLpkG2xIKpgvTwTnYjQhQUr40VDDncsCI+cPxFGy/tLMyJO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785870634; c=relaxed/simple;
	bh=z4XotzyXq7x234euVFoO5B4KGgQ8VkUcs6k91M+4MjU=;
	h=To:Subject:From:Message-Id:Date; b=NePfEGVe1AJ2UYytaKoQHKtr7f989psQt95hND3HMvquG9/W8331++qc4oWh/K2AcSl/1SzeE5hOEr4XHIeCvmO4E0BmLsr608CSYDnFSvpngCFlAV9DgU1jLm/UwTH1QY80CfzOE9l9SGVc+/di0VE3OqE80khOCGR/M3ryAh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I74WUpfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I74WUpfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D7FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785870633;
	bh=z4XotzyXq7x234euVFoO5B4KGgQ8VkUcs6k91M+4MjU=;
	h=To:Subject:From:Date:From;
	b=I74WUpfPvz5Y+4VJlInRoXhfOiLOh7GZRxuWQRVz7r28udco2eEqdB3kzqEzZzb/X
	 LNILMZXFOA/PxhWREC7yylnvHsfW5IXqzoPxqF6t9mgtKgbXx2yKXa81NJQmmK/jZM
	 3Wj+PdhyZT9PdOPFC9LfDAZm/AtYgvW+44/zK6ayAGjVnNGyfXSOJRRkGyI5E6LPLi
	 6YajOwcPFVP0yNOqlpdcvMCxnf/lB3TwupFJWIUKM3WoRnH/52poAw/GSPvEiqsgEy
	 DI7QPf9DLTGXsNdfD+1jThs/XP6o+YxCldcSVK9wAgOmyVMM10J+9TjzIRrYecb17f
	 BtzexD+UX3R1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1430C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587063370.25616.12872122305326476123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9462adfc5ffe649b1f1a66866e06e52c93c99983842919bf9ee80d7e9c2867b
Date: Tue, 04 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785870633
