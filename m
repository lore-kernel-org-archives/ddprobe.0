Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2036DF50F
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761775194; cv=none; b=pP/E72GcG+XFmLSYaKPWE0nPPIC5CKH2HO+1ZUWLBtJw4tVm2lCzcv6Sj6iXT5VR25BvGKKn4tZ6tWSPBWY+pzW26YrIL+2lJmXdVSReI9mAI0t/jbDg5lu3IzG+o1BjGB72IN7BTZ4Mi93Qm42a56b9VfzdaVvlr65gbJXplis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761775194; c=relaxed/simple;
	bh=xhlSxI7nzio6cPXk66a7UYAdEuenFhCLoUXBDva9rXg=;
	h=To:Subject:From:Message-Id:Date; b=Djhn3mKgmsJLq7evuplRhHhsiaL4nY+p8Jpmoe8Ygj+sUWKthDNRgU4CGax7Qyw9v6k5YL1dIteNpdv5bPbjpHrQG471vt2weW3mmfBSUKT0Z24cViJsH4lxxh620ZDWtNBxl/CAShhShjUP4KMjvKDgBkagrey5455GJfuf798=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpireSRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpireSRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC6EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761775193;
	bh=xhlSxI7nzio6cPXk66a7UYAdEuenFhCLoUXBDva9rXg=;
	h=To:Subject:From:Date:From;
	b=qpireSRk1mtlPCO8PjSGVMKxfrh0snFJktmbfemjH208ba8TP5AMs3AJC0doUR+Sn
	 KojmsDTF4w3zYXYPlJWghGwPAKpAQptyYEfECUVkPudVMqQe4mCISArulqp/zvwQf5
	 Ibjj1B4No17ASp2KvtoDJDKjPV1vXqPIZ22MfW1E8nZSlZRKvZE3rn07xWbZ8zEseS
	 eJIub8SAHI9sDqjsXbDuepvJxS0+OBDzJNiJ0dGYnTLJqrzH0IIXP99qF7oBZggPB0
	 /Koz49VhYqg3OUyjfp5wGCtUpt5B8UpQraEhMh2GU6b1I12BYmhCjeDRBKrpg2+W5V
	 CpTVGHxLuVqzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E8DCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177519361.17848.2571515168021462043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c75cd79c086c39e0dabee765a25b95f8664136c02ea436d9bca7e21e350148
Date: Wed, 29 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761775193
