Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EE81C5F3F
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736475954; cv=none; b=Jthjq0xak+S3g7fqDQkHWuO1SJ+t7Hr0+mu2nSLqIdEvf0RPpj0nR8A5anXtuQBKwWaQBfO+1Sjd6nzXG62VP1fmAuQyZRyYuRfXRKzwJMGvLIHyU0Gpd7ygmFn0GAW88n5WtysfttlkmIY+WkIrhrRNPWQaGF3qhi1gEcdiyMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736475954; c=relaxed/simple;
	bh=jRuF8aRT/c31gw5GWtzRL49EUMR9NngFHdE39HCXyAc=;
	h=To:Subject:From:Message-Id:Date; b=auZCv4tpGhCh62rCypYXvy3ROieYInxYJ9tcQUxpDxJRmfE3JE+vw6NzXRy+5ssCKxVTxpfPhhgsxreetFLFNh4GCxqY//wsGIZnUo1gnkOsGxvxwikj4UYbXwg8jhOJpzw46MA8o8ZIEXBB2tsge7KPDWh6HqktHkBgNyvvdbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMGcTHkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMGcTHkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9926C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736475953;
	bh=jRuF8aRT/c31gw5GWtzRL49EUMR9NngFHdE39HCXyAc=;
	h=To:Subject:From:Date:From;
	b=FMGcTHkkgqAHZGfz0URbbh2HV0AriZbGZIoyBYhQJFeAkdDcTs+nisjZUlsXhX42C
	 qi3rEPN6udNAxP75T5pXAPnUYg31ahtKUKq1qKRkSxVENAkr0EqWtIIDrMWxccG50m
	 sLZgN8uRow5ZwcbZT3FXdrWTIuZoLDyJcRQBrpDcOGQi9uTud//nd3G/IXjI8ExxeZ
	 uWhPxaR5BJqlVUq2W9qt5bhh/nzWQF9ZEMaSJF6WzFXPoOOkr8Q7EeLk7b68ED0wNS
	 TdQsxcOeaDG+BG5BeD8Av9/LKBCyWqkNqXXEs1q8GS1qDjeN/vg2iLuDSOx+M9Q7EL
	 k5D5xxH53O5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99047E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647595361.10300.10601658073484243311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edff2c304836ff79da6a2efd64b215257cd81e485c188b397a65b1a7edd4a9f
Date: Fri, 10 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736475953
