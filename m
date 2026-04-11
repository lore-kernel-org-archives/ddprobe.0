Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B12271468
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775932054; cv=none; b=Hdmvkk9BzRfVXdOX26Iqini1jGejbIU5zJERiV5ni4reOcbf0G9R/JV7xfe261hzJZH/MRu5nSWbthcbZYgqH4RlfYxP6tsDX3aa5JWFLaAd/zIBSJR7lYyajwQ8EbUpPZVvH1JNE5DmPIvY+CIXMvy9UvqNfPQ5GCTfR4iowPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775932054; c=relaxed/simple;
	bh=x72/pRkZsdJfUreDzbnNRquivFVDyrCDakyxldRfj3A=;
	h=To:Subject:From:Message-Id:Date; b=Q5+OY9gYWgYNykmp58PenfkWRJVTY7Pq5TdRfUGHq1d3glHfbbTUZ6zipB+wdnSh9g7UNCbwUGt9Z7C/oZPBtBgPgluVkF98FL1JucX19Nk6HS/fpWkrWgLLiDYWbpqeFViyK5ozmkVwOyJJ0EdawHNAOES3/g5oTcbK6YdaTpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dw/l+y1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dw/l+y1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C063DC2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775932053;
	bh=x72/pRkZsdJfUreDzbnNRquivFVDyrCDakyxldRfj3A=;
	h=To:Subject:From:Date:From;
	b=Dw/l+y1NVUDZBoxs2y84iH94PDyOUwBvvtTvhDOBctsHbWZmtz4Eeq+jmcz4QuGc5
	 rLwVAdPVLmhHKKN+mXOqMetuRyGwqrShBqzOnfE72LD0ZVqHbXFGxvDG0+TTS5Nxm+
	 VqeOdtDTavlS3NyKwqKjMxH3Kn526SCZzxjYgUiEHEM1c+eXN+ZwneqwL79wzEcJm5
	 JakwnCqRs76O7GgGSeIJqh2sFYGtr5QmbOj7GcBaD/85k37NIj5oJ2BmmL7RC7yKh1
	 QJ5mnqAdIfR24aqeNYJ5ZynP0e2neRSiqbQRyJSZ8NfeIinrLOpnHA2kygDszgAwPW
	 3yJ7h7jbXJkcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD93CF3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593205369.24207.376717733373870554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aee5f3da9497501e8a746b95c260a209662df7d326448daea18639c2720c7ca
Date: Sat, 11 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775932053
