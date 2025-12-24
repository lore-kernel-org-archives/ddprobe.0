Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E213242DD
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766598234; cv=none; b=FGTOmjlKMoCrz1JKj/wx4BCfZzS4V0X1C3KihLX04MJG27kJFUS56GWuE7JuUaIgGweJFTyQ+ckbTXAKvzNkITUXN722ZonXs7KGJJ7O7wQLsRooRiQ3dpndtEhHuFKchXoF9xiT25h/UVTTBzQmltE4+cRRHardXuuZ6jkIgao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766598234; c=relaxed/simple;
	bh=Ede+fS05rU0XyMHhlZp15I0jgy6SqfptNpcdMZKoh6k=;
	h=To:Subject:From:Message-Id:Date; b=lgxsf/ucydbDrLm2Po/10ydG0isy2ilRS79CdIrkHP/7iJlYd2FI++H6M+3l5KmKhe+TVBZrXo3iOd/Y9DLaPK993QwHasKbp1cZM1I+aEAcgOWDAvrqhq5Bd+QYmN/WNBU8ZyclM5UQAzLZAT0KT24pfMczcebPVSZpT0NXsWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsAUMUgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsAUMUgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC37EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766598233;
	bh=Ede+fS05rU0XyMHhlZp15I0jgy6SqfptNpcdMZKoh6k=;
	h=To:Subject:From:Date:From;
	b=WsAUMUgAoKAjr/rhHJL0yUSk2nI7oPOqJRS/3dn4Gu19lgL8nkfDh527Xw4RgU9EE
	 F+k3hubaLa80j+oDPWr7SMX1EC27tnlILucD0vzl0G7XtxZw0dqzLFe9z4fSNZN7cx
	 dbwQwjThB2rFqBAjgxdSUKaNwEkjpythdVpHtM54OuCB3zyq9MyURgGG12mZs8Q4Fy
	 iErDkeht8slCvrQvvFzuPYzZZ2uBK8TYu0FNN3IebUFZu4j6EBIw2zFyEgb8ZwYgj3
	 nmAgILR2t4Xy3MYPNFn2FLwTShlMT7ozC6RZ53WRCVSLaigKq2iKo8V4zGDi0u2/pd
	 3Ek0o2/oVK0kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95025E776F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659823357.28091.9312826080588687269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b68cc2fe3f5ba139d3aa4b9dae49f3967fe7e9177a45c8fa33028981632e01
Date: Wed, 24 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766598233
