Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E249139D
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761415194; cv=none; b=JId5I5y8ZOlDU+mq9nJOzmoQ492txWiznqlOrMm5CVkiEjLw/aE4EsBUL4aMjTFHM/QaGsNVI+lHwANIV6RU1a9zcfwzmLCoG497K0I3UrUOmKFLWeE8DcBVdC08jUMbCrLfcYKlnee0NyOpMYzOLYZo44nbRoii+uzVF/beJ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761415194; c=relaxed/simple;
	bh=YpT/AROcBy7schL6bKkQXs2n11nBnJBnFZdlFduYsQw=;
	h=To:Subject:From:Message-Id:Date; b=QWqNuJr2EX7TW6bnskvuTqIZT3cMWi9f0+3TrvUwqiMTcQ2FxCNgmZncLFMnGOf//rl8e/N1tP9iZRFD4OD0VBazxVK0rHDxLZaKopQ3NQHgYd7tbAYUd5uXY12d6/w5UFqZdN1soyv0gVeO99rqtRjw2pmqg3A+n9qRTpaV+yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgPKYBg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgPKYBg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7A1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761415193;
	bh=YpT/AROcBy7schL6bKkQXs2n11nBnJBnFZdlFduYsQw=;
	h=To:Subject:From:Date:From;
	b=cgPKYBg5bO8S5mbtyyNLlm3P+g8V8km2RCi9lhN5dBjKU7BJ2SAGLOokNfX/2hJkg
	 PMLjpbsxzzQpaudPn5h3OWN0oh8nftKyNI/boy2g3pR5NtpAKKkHn/VZ7d0TVdCWL3
	 ap21N5zPhP+Bayfd6oO4RwTxqz5MjivWsa+ilVlmK/i2avjNRfuM9ooIQYtKSF7w5I
	 Yzn/FSp++tapb50h+pa/YK1ccG3j6RicyWe0CNdBADvwLMA8bv+babp8IkRxasfmkK
	 nbTin0oNk0RixH++a1Y31MrKYVdPrxk+2sy0/e29b8QaIwmSILymlzLe9Tc2qCoMCf
	 s11fhGzBPz5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED32CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141519357.3228.7259505987918679922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c48c21b057918056ac24783322200e6cbeee6f0a918063ec277d5855cb680c6
Date: Sat, 25 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761415193
