Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414871CAA7D
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760945994; cv=none; b=QoOipGeIUIBjJsIJA9ftpKdKVUml4LbcTj1CSUFFj2TMtOFOYXfXzdKVgb3ZnFMbI+/xhx2YmpS7m8FfJxKbcz+JcsDLPuJV497grOGAVMm2ornGVnhQUNZGiyz/LXzgtXq8V8JdFKtQFfhgmEi+9Qw3RfHuYCpMV391tj6XJ3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760945994; c=relaxed/simple;
	bh=8eQj1luPZ1ZR+tWbvA+C/krtPG4Ji7i54FILZ2NERyQ=;
	h=To:Subject:From:Message-Id:Date; b=ABwbPFd4w2MhkqC0H+1qfCLW40edlIeq+5/NlhnZLcWlzjfFrBl4UjCLxzUCPm/5hSzLZnYwCvyv4jGhUw1lJl5ho5LeNlR4+zpEA1rqMIw9MrPDkIGQWm21vZj58mh+R5AibDalg29eC2+O/LApfWJcy3t+NBs6m51MSMJysSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGN2ge4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGN2ge4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7369C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760945993;
	bh=8eQj1luPZ1ZR+tWbvA+C/krtPG4Ji7i54FILZ2NERyQ=;
	h=To:Subject:From:Date:From;
	b=lGN2ge4CSNTjw2eqg47tKaVS+Md/xQ3hKK54UmaTZm00xke2IJapsNJcBZeb/dGZ6
	 oNy/10lNYSd6lZFL6CHqF03bbUF8lFHQpsszwKAuuvm+saJrIadx0oPWEJuSOWSSci
	 P5JGIfpiuGo3pMH6gUyFe4aY5mz+bWzulWqRCaioclBvFc+zMjKx4tg1jgC0PuWkBw
	 ENn2d3d3yBoKRRl67UoJumLLhe3nXUv69ed+6nq8eW9c5uw+TP866dsal+/E/6hOKH
	 RyhOSRyrQgHYKlSzBGZBXZPZybtRLehxUw5VbBfOh5M5ddNuadhG7lNXsg+JT1UABb
	 cgg49OcbTZvsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94795CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094599357.3376.2258415035726186015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105f219f62b8b4353fc13d0c936544f963e029ebde7f38cf265d411fcdbde3cc
Date: Mon, 20 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760945993
