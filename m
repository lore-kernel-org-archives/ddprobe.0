Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1031C5F1B
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776655054; cv=none; b=e+g6MHXOgGb1QdQadaD7Aj6k4pvQ2aK09QVinQH8ZB7DsSutX+AgTrPUg6tIEQIsWM94uzdhuAnab2kzA+NUBsdnbecdeHhG6fNXKoeOxo80q9ilZiEJazMExmbDIyU8KZpWbpc+cCfBVxKWoL/ZZbCJ/osFFVldZzGpwckrhHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776655054; c=relaxed/simple;
	bh=xMqmktAlkwcubI9vXGrMYyU2rFiOomv0dBEdlrj0IGU=;
	h=To:Subject:From:Message-Id:Date; b=FgEcGIjjoMn/i4/QtBNIjJCR1skwR72gGHF8rS6FCuuS7wzVgIBNJkzIjePVzUA7PdtNw8HD5kru4103Ewl9sp1jidWp5e7mSxcor7pQOL/NA0mhKvKgs2tsriMlvk6aCwes23tahIHqi8CEoB/QB8YfeA6PzLIDVPSrNeGiLH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHK+L+IF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHK+L+IF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11E3C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776655053;
	bh=xMqmktAlkwcubI9vXGrMYyU2rFiOomv0dBEdlrj0IGU=;
	h=To:Subject:From:Date:From;
	b=aHK+L+IFnYuuXUBRf+GVzvQaijPBEx9lD1/f92cRkLt32Jw0Ji9kbNSLv2fNzW9Sw
	 YlqAe7oPb49v3jTIN6dA3u9Oq5OXvtGjts6E2evj4J7ZoAxB5driq2h48uSc4Z+nQH
	 4KRbDi336Mz4pLSWSxfMvpvjClGJRaa595rF5lmMdMmCQFwuzP2zjARuAu05oxwjel
	 R0PruvshoKugs+sm+Sv7BmuwXcAN3NbLamQjUnmq72kjgWB9K1izZAcnrG7SpjItfi
	 EE7JV6ToSAVsstL3QbHK3cr9qii6kOFrmy8lN2pMqX4ei2mxkC9E8VrshdWdT9Otgk
	 mMbUnv8T4wlpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9ABEA71A4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665505368.17764.4243847512710259249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbdf18236760410b230cd3cb309ddb6523d4f164c1558550bf07b4282593292
Date: Mon, 20 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776655053
