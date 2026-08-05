Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434FA3F1ACA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785966634; cv=none; b=Z6NAIHv3C0YunZUo7hSoGq6ZAU7wh0a5kweZSra9nmFHgo4VH9jTseZTeFSF94F3HYzGo+lCk7fN4TRKPvGys5138WUJbMHzvZohCCXineCGGicIzN9tt2XKCerWQFtoqnaV9PZh02WLaMmoDo2drMd2pdyl9gqlneAQ0WRksv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785966634; c=relaxed/simple;
	bh=r2fq5liHewAzK9RYrRdwahiPQqpQ/73+C6H5Ffc1lOM=;
	h=To:Subject:From:Message-Id:Date; b=AmD18qIPdTqrkT8qr8+5wPahtI3IkT0t+JHh+REj51XB25sN49bV4lP1y0f3BLxJsGLwb4cZPvsLNhX7uHkxny2+uZprPDT98i+o54ASXpGu3cXUUTpAvPWKquo5BxOlsDrW5gd9Y9DbP2pc9Et+6e/GEjLjgrMUd8YrZ5rV0L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0gVgbvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0gVgbvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD66EC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785966633;
	bh=r2fq5liHewAzK9RYrRdwahiPQqpQ/73+C6H5Ffc1lOM=;
	h=To:Subject:From:Date:From;
	b=U0gVgbvW1lyajy1Mzj8ioPpIQ5DkNPHAiIuHY2qc/f6LMOUUpzkjGHzaPeoY8g4si
	 oo6Mf9uiG5PRmZc3Uurxvk4nfR1ntBPhka2XVb6gXCzDFWerH6SPSWa5EVTAPYHRG5
	 jeK0BJscANN752Wd7Y1i++qQkNr6psxpazdKMkklLYQ9sS9ddi+xUHkJXVZUkYVkm2
	 qDcQ7n/KxtbOKKkvc4+uUFjA4M3K5mUVMaAsecB7RpyYxrFg2JqJz46SY3c+bbkY8O
	 XXvc4GWtr4TJH9/zDvfTaIFYxiVm6rIDYempN65ShHyOlz6z5J9qvETRuwcFZGzwj7
	 aV/9AH/lAEjAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC36C55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596663369.17422.203105128739787709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ab197deac39acba676b305cbcf2bfeec9918092733d04cf936603da098d538
Date: Wed, 05 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785966633
