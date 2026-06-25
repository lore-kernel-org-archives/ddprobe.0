Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96624270EC1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782397654; cv=none; b=HC5r66koafs83UBv3NKFtZY/y2WVNy0tEnbFnrmNJvvfCSy7eRRAnapK2DARbmJaV8f/lCUfCI7oGKXGDN9u25HGQ2WcrL85GHfvu898OQR+fVc15tWzlw/Bc1tsYQ8PPv04+f+LzkcXpS5IeGkFixXZi1/pXAv7AMcBvtS/tcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782397654; c=relaxed/simple;
	bh=VXZPmCq9OjuIXirIQVDUfNzLgMzzbczJ2UOBaK/84j4=;
	h=To:Subject:From:Message-Id:Date; b=j0xOEoIxOyK/UQ8ZkKSXtvtJvoYexsw7BgEEXqpQ6HgRE0XYrNrNlgw/wWI/D5y8HSiVEGQQ3WyJkMOR0NvbuZztbz2NvrKXGUYncuRRaRs7W0deaW0b+40wBA2x7E0eAO+KLMY/cNN463viqx6MHQRv4Tg7Y4ip9x9RNf/Lteg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdOrIDvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdOrIDvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB26C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782397653;
	bh=VXZPmCq9OjuIXirIQVDUfNzLgMzzbczJ2UOBaK/84j4=;
	h=To:Subject:From:Date:From;
	b=qdOrIDvsfIJQJLFr7yFBlE5zLXLsXmc/V09YQXoCFl8yoYII3gLA+YFfDU5yL17Z1
	 Wj1H6DQzpLJMzz+DxWXRS5Ju4ZOmPQKfoV3y2U8Pc5iJzCSWknKIUw3k0pgy3zjqY3
	 X7AZtse+K4Swi9tXdQ9OB21WpeRB1DVq5K+ZN88WvI/h41gFEcCEpZbiwrr6rnlkJS
	 jWBANBvLP7rGhE3WtOzMvutukNrTAlnVb8vrHrOkXY9KSk4WQZZHWrAbuzGGyVrFm6
	 6QFtdJay5RWTD6/l2badA6vcobU4FUzMVgigZkFyBDMJRK8vFqeGn42Dv4iAaupP3g
	 hJ3P28XzXAQKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF902CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239765370.24329.10327189231661424946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3372c2bb70f99fbbf802b83fb968bd5b09e9ff4e9072f75948dd6e2cb9ee5c
Date: Thu, 25 Jun 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782397653
