Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A291773D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724643954; cv=none; b=EbUWXrIPJQxWb2e5KBVNV901uX6C/dyz0VA8N6kjHAnIUI9EabdI0ammhAo3QuSRs1FScEXNKC4mveOc+n9fE1xXI7TnI2lfKZNkhPlMMhItqTrrMjuCXJ/kJU+ZJg+ywOzSp/Pq8ceEC7vTHIkd/LX/s43/TlBoQs//0Vl9IQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724643954; c=relaxed/simple;
	bh=tuPx1SUHN3jCqQqcZG3ZqLIfH5z8hDu1HTfR9UXSxx8=;
	h=To:Subject:From:Message-Id:Date; b=RuUoNid5ZiQyOF/3n42wDKy5wVLgrJDv8dtPvzKsVc8qEvzKK/y0Hm5up613m5S6LX/cYfoWwnugen0qUrqhwtTN11jQBoyWw4E3mU/m4jKydnG6bOU1JAx2F+/iRNu0TxbO8UZTTfPsyhIP9GoghlNc4zE8FgJh0SHymgzSUjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNqlcgKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNqlcgKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29E3C32786
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724643953;
	bh=tuPx1SUHN3jCqQqcZG3ZqLIfH5z8hDu1HTfR9UXSxx8=;
	h=To:Subject:From:Date:From;
	b=hNqlcgKtsRYcFVTkDDlucO7neV1b0DBV/eY5R/9n1zmhHPeTV6Zyc6vimKsF3beY4
	 bzp9N513m30Lq0HRYwB7O6Pne/K3ID9S6nCq+7DyWmTptxYmvOEu6+l0ChdTBIaJK/
	 gsYLgBF94Qd5fpENuhN7F0YbthJ++8mfh+C/IwC5IDvCRx23dpmLJm11449qlRXF4o
	 nSBwTOwT0EMOUXfH5lBaKIvZ6puWoXk8D/Fjfh7TMyq1orQ4QOmYwUxVgNm3RuX5tF
	 mzTM4bdwFLvjewvOwvnjY1a14KrBAJI+JeP/Zp/mggZWqf/VYFedJ1bfB2crKT//ws
	 HURlYwceAoJMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981BAC5472C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172464395361.8247.1416028456629439055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d1a59e72b937138c2d43172aa5fa5018cdc0bd89dab95a78ed35414fb521f5
Date: Mon, 26 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724643953
