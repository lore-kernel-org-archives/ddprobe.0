Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6F982C60
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749174594; cv=none; b=fcHWC++DfRDABCStcG4aZvOISxyyY8C2woByHLcAzwJ11td5wW9Kw8wCRfqFfvl3X8bH/LMSyyNGyp9HoJBklp6CE5VWq563mmt/MOedGhVW9oeuzhLTiep1jWxUm8I7gIRmli0H5j2FEBKoYkmzR2/J7D7T3uURVhRpPKt6Tts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749174594; c=relaxed/simple;
	bh=xzXLCV8CglQA4RdBcOs2mUGafAQd/FM8LB81V311V00=;
	h=To:Subject:From:Message-Id:Date; b=X2/3zOUakHWb7vtEBJx1qDyimjxVoy6SHqRxLQtHmy3QTPJ7th5jQZEMetZgNPc/KSMK2Cm9aeBpJ7DbAw4ar8Ms5Vovy0jyRDBzQXXVfjHEV1MBBhQQZOUwCj58dQ5o9kGG+7fYKhiufBOwfdAXLaWIXDsvnZVWCnJqNK1LKDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKKnTSDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKKnTSDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4201C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749174593;
	bh=xzXLCV8CglQA4RdBcOs2mUGafAQd/FM8LB81V311V00=;
	h=To:Subject:From:Date:From;
	b=uKKnTSDnnSwHZ5z/G8nRCom4Au7VtNDg92pALpMqyk1aR78urSovMxm7TseSqBbvV
	 ApuF52R0zp3UiNJALpjudnWoVd2iRwcnD8CecW8ibEDYPIXEg6ZJlV+xxu17PC4fxu
	 TsK7dNJsk7Bi5ooSyjvHkSP9zJV7zzuCIFppYHGKz8apJaDZ9vtpeuHsF3zxWaIin9
	 GMtIa/id6hin5HHFXgmozItshkcgP2kbXY5M4/f/HAE6++PluV/d7RMzbmzmGf/hr4
	 HarocQixnqtwxDpo64HUOTm4aVejbnawUBL5Xru2jcBw/xOYX5dzT1KUUhLxKDk022
	 Dp0iGrWw4LKmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC2C5B543
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917459358.3186.1772109338087765174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd9122afec9480f80d99ed2a0cf4523f249b9c62f6e8262bcdf7b9eb56384fc
Date: Fri, 06 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749174593
