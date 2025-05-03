Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A6BE55B
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746247194; cv=none; b=SSYhC7FjvpMW2UYK9DRZY1Ofh8YH0liS/e86ZqAJEQk8QSjrY/HsOHVApdrUffDrTWVtLa06Nm0AdpQArrF68oFdM05Ll8IMVxH7ChrDshocwDtQo1VDO5xWb0KUrQZPVrgxplbv7pMw0PAWlF7u0l5/levbqIYAlwjUquGvGkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746247194; c=relaxed/simple;
	bh=tVglt/pXxMwy4aTzVtZSDzJf5Z4vlOkPR6VugniPMU8=;
	h=To:Subject:From:Message-Id:Date; b=PKV9VnjrHylAwfx2Pf+sjExmVw3BJNlCuIgY+kqsjqMCqr9BIAT6XefQLWhJwzqhG6lFzPORnrQzu03KdiSEmmu009kezBQTErseds+TM23qKNjN6h2AI0yUfN4Ji1JryzdbIXcSVg+EccEXsXcOsqrpt4c3BIT4Vry8oy0fGd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGvYXTef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGvYXTef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5777C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746247193;
	bh=tVglt/pXxMwy4aTzVtZSDzJf5Z4vlOkPR6VugniPMU8=;
	h=To:Subject:From:Date:From;
	b=QGvYXTef4pjPFndj//jYvkoRiIrEjZrSY65EO8LZbJeHC7k+T1uAPi3nbIv5h6MoH
	 vVHQjm5b4UA+NBq5dbUTHHZNdwXREaRnU9JhP9AiQeIZ+rni7VogBQyHYyJRGPdZdR
	 qvp8ajuYKPF0Q8ZqtAGfn3yq2N/7qy06vz6cqJT9Vvz3aDAPn4Og2YTwm2p0RdZqib
	 Z0isLeDcWWiP8+yPKcV+6CJN2B4jA6Sh+KRNj8jfabowX49l7z/JaO85MSFrsrDT7M
	 vbfBZhu3kcgwuwEEvGyK7+hwCfSai1bRELTTrBqhFuM4TUQqgDIhN00k6bw8fnrbQD
	 bzSSrFJkY/mpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94493C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624719357.13899.16752017387015688523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0274dfaae2bbdc6c8b3f14cdb7a0180f76262e65478fdc3ba58ba6e27ab26eab
Date: Sat, 03 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746247193
