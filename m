Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EAB13D29A
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734380154; cv=none; b=WyDe5AcbcTSBpQVjVP6ns/agz+9d0OTqFHbH29r64FzqUPptVxKZYdm3u7SaNUyQ7I8C16b5mvND3qfnLAXAunrzSPVtyK6NN0fojQquTWXs+mBKOZZt3or85dUAX2bkBjd7xZfLeFMb+bSmasXIBxLTrCgpmTFBKdgHgFnolWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734380154; c=relaxed/simple;
	bh=+oU7BvsUBJybr3JgrI5fSZMZBRnRWc9bXbyTt63hmio=;
	h=To:Subject:From:Message-Id:Date; b=PLN35Ze0QECmWSGMs2+sW4YFI0LW39T4Vq3YIN+tWRaXioaxsFATu1+imwUCZXVVgCEm7BzSfXsUeWLk0qPhDQ9dzQyIbWbgfv0kWM3HHHyjiI/24CIoIgcJ1mfQ9mcKeHhOxUJpK4DCF6exfvn2NH53PsNDQ5FZyvbM3v5TeHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqoQNBw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqoQNBw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD287C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734380153;
	bh=+oU7BvsUBJybr3JgrI5fSZMZBRnRWc9bXbyTt63hmio=;
	h=To:Subject:From:Date:From;
	b=WqoQNBw1jXpi2vZLzVYkGaUgR7y4vS9iGaRR/jERTcT1Y58x8z5v9FmY8As4G8AW0
	 twwMKRLtIlQwoV2Oo6Y8ksqEXatHq6QC6AquXFqWowQb9wTW1RIatWh5YxJl9gu85E
	 Jnj7DIKlYOvXk609M/fI+2EsgIxML41bINktkKRfHUJNr2LN1xKAFMGpTnPJhyv6Pa
	 U2GpcFmaofTeIgrsVfh5MZhCM4zaAH56JtLDlkIzaMUNp+YXLIkM5A5b5dYpMO7Sv3
	 i3tvA0KiIySAiPeoPCw4cUHFo0EsapnCKYDqjMpaOTuqh0RomJe/pDz9IOe5o5nuZZ
	 OrJjyDfNkp0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A7E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173438015360.13707.11477574407490260011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f972813e1c8317e25c305c5cf1398b247c1112b9b267a2926109b0155d37e53
Date: Mon, 16 Dec 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734380153
