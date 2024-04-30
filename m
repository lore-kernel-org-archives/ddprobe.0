Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5277EEF2
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 09:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714469543; cv=none; b=DZhCz2/DjYrrtbQAHtxsXG8DUuOiFJfZVW3/R5ZFuYp4Q4DwQ7c8zJ1ypDmaTRAVISDfWseMqicxR8Vc+psKlyqbWDkTh0ePS6v/qWGo7JWphiwUOolsfpfZ8qvNKeYa7kj1j3OQXgYoI/0qdsOuLbZqiKtU9GzHqRGyA1KwytU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714469543; c=relaxed/simple;
	bh=xdGHmPFfSM96cUdAm5l20aIMv3RgzRoz6J9U52uJngA=;
	h=To:Subject:From:Message-Id:Date; b=NQ1eKfYdMg4d5klH2/QGoZCxzgoZ8xmF8F4wN8g4XfO33AApoEvy6JpsIvyOQ5pcEY7iVJ4dieC+hcGqjg42tb0dhE/+m3Ko+d+7pjB9shTws/8QAU+lYTZyW5VuR5oUbMjPRIkUf2AEXL6nzO3UbIDvww5e5NHgrdRS7Am2Hjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9bWJd5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9bWJd5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD93AC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714469542;
	bh=xdGHmPFfSM96cUdAm5l20aIMv3RgzRoz6J9U52uJngA=;
	h=To:Subject:From:Date:From;
	b=p9bWJd5EZ0Jqc18fpBmP7sT6DtgpMSqBF/r4P/pxVKxU59NTKp1glMIibOboyCD09
	 klaQKaFxRrIXulURL8rJNYPAFO93ABnFIsLoFYPYVXNKswCRetqAInlF9mFFEe0iai
	 Ov7pUfQI+yC0GxTqHhOPG0oGIvv6iosuE1G++2SPQNwIvfPZ0GtXX5Fi4oRO6G8Pzl
	 TBN0sz2WjXDqBp37sRND0TFB/lxIRDREv5bX1/9BwjdA9We+ML8Xix2oNKDy+tnvuo
	 iQnTnkDQBsl1+1DR7h0KIoSn/4mILx3EoSnjCcRGCXoRgEQBMzqKI9x/NvMZBU99RU
	 qQ1SUUJQq5cYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5D0C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446954275.1805.544287890476134993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff06da49a59a2197936572a06a6228ee3e6ff81d346f2ae832507f5d43ba5610
Date: Tue, 30 Apr 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714469542
