Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61267197A99
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720640243; cv=none; b=nVYTAr64XGhja1cQpP1v2O3Fdn19otHTYQhxuw2/1gRin/VAu0bQ6nMndIzrDi7ujYVY6Uhtt3TlZ0OsLU7nxF00S2U17AISQ2YWlUJG5vzW0goKB6lqs8mJYtGzruz+5Xgsl6Li9LvZSFy7nqOUG0cLQ01LlpZEdN2+yZfKhek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720640243; c=relaxed/simple;
	bh=XxyKISZidO0ltve/iXDDy3uvsFBlY7EtB5hX5V9yUlM=;
	h=To:Subject:From:Message-Id:Date; b=QzVXS6KEUt88IlbM7FROK4m8JvhLo3ytW0qF+XjOVcMDtxpNURGhfoo5JBPxhNSonZX2DB6NO1liivnSeRO7boGJh8C1TGyTto49tQSqkr7UEABThTFLGWUp3m4ndNv0yLBTvU1REzyadZ21o/zcGlsEjxblMTn1myprN4MNM+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhH66sJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhH66sJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D932FC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720640242;
	bh=XxyKISZidO0ltve/iXDDy3uvsFBlY7EtB5hX5V9yUlM=;
	h=To:Subject:From:Date:From;
	b=HhH66sJvMN+c/T1yjt9Py093HZaQm/L61t9navA5/SdCRFjafDafQBFpH6K0XAmNi
	 wyQI9Z4+jtB94i8UHLk28Cwz108a920Xliol6Gei6364mTWxbH+fbFDmOFOiUL21c6
	 yUQZh6a5ADkUIHrvR5uFEBLXnOAaaMFVts3+9Oxv0m08AtEoYpqHGGlTTGCoYMz3Jy
	 +QilsVdZdP20C76d5jQJOXAS1VD4wpDBTqqRvWmhD2uY4OSsgyfjuw8vnCyxfGPfK1
	 4GkosiQ7tlW+L7UI0XCSmmnrZGhdxNMNeudt0OdpViCsKf2/xLxgFq1S9+sQIZxKo9
	 hw2PGgG6P2YJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C456DC3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064024276.13425.6854358941157687997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b20be584d2c3e9ac5765fe9bc0d881e69f23e77a603bb7081b5badb60d7088
Date: Wed, 10 Jul 2024 19:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720640242
