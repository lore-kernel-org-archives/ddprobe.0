Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442AAEAC7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746328194; cv=none; b=YPcBr08vwnwVA/elRCKHIQVoMVOjL+u7agYfouOt1P3zIwFcTHi3ricSgo8Ino06ileluU5l00Tq7N97Hb0koISYUhw1ZRje99E4DL4qBZ9CgZ10eADA76nqAwG6tpgTGvBjYx7wC4yU/q3IfxhOn2dI7IpqYRXDlQJfy2ib33s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746328194; c=relaxed/simple;
	bh=I8xqZTTVkbsthUgGcOwcc5tzCmoPvhy+/z7QYXKOQlY=;
	h=To:Subject:From:Message-Id:Date; b=ius6SLIk2akGySOhpHH9shpkB1I0MpO7YDjrj2Ve5XSpGKP424QXHqhrey9yxBwkhrLdm7WRez8r3AoVSVczgL1quWXbrAB3FcAlAXDwIKm0xs6YvsbgUmXOWXlBQk/+31wpn5hmEHe66Et/eXQe9qPCc6nLYrpe8cuWIeSYqiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVIIbOa0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVIIbOa0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A803BC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746328193;
	bh=I8xqZTTVkbsthUgGcOwcc5tzCmoPvhy+/z7QYXKOQlY=;
	h=To:Subject:From:Date:From;
	b=rVIIbOa0cPyNcJTlXin/uYgL8UDFDjGrUFqY+pVzwRfxzRqaW5zAaLUg8dVZaXE6b
	 /2dxkGRfRkJKjfowkte9GkpuGJd7ib8YzQcEBjDuY2/8EtUZAuHJ7bwiyMSeDovVFY
	 Keg1O1jIFLFJIqDCy3TdEPtZ+4+FiwFNccCj7SuyJpaKclr12sT2cWokv+wd6PkzV+
	 4PS/ZBWAa4Tc2KfQSA1s0yqz7IQFCVJVTE5DEzlm0soJiXLXngx0xchu0V1FuysXpX
	 OcWrWpuX8RBqE6zbr8/kBvuOy0ZO4t7yH58ATbJQxWmEf+FIm0XGTIvzqGa87aqztd
	 87Ff5MEZYBs1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A1C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632819359.2879.14613945949329749846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9531da108ae59e5dcc6c3fde4889ca728e1b451c1ef8dfd12b4f7abd4f8256e2
Date: Sun, 04 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746328193
