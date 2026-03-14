Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A7135B631
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773492894; cv=none; b=gnSltue7cMZ4fSMrPy8MxaIg6QPZ9QIl8H0NpKayEfIUtMwq7nYopEGUKx/Fe86v+qYYM5mvoM8M8kbMY+2ppqvoU1RDRUFaMMxmuaoPAK9yDbtCsHquUDgOCEO8Yg3LCPMHkfQVmnTgGmmbhmKQGgSG2hZnHDjYce4WDaGixVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773492894; c=relaxed/simple;
	bh=MOsU0CCeiq72WhxPt+M9GdQ3ktYtoGq1bxM4dq9A0bc=;
	h=To:Subject:From:Message-Id:Date; b=XxblZf2oDQJe51kKp9I5dfgGIf0hQT34StmW/6vtvEe0i2YEvRKaAUUzDx0cDwL9z0tLnDUyhlp9rHMjJHdkTt5QFFRBLVHt642THWlfM2gza2hUp9+KUqX4jKdkGQxz+L/OhLzhYgER/RV8YiMbhkK+ihVmJgZEO5qk4wA9QhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAvbg+RQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAvbg+RQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A88BC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773492893;
	bh=MOsU0CCeiq72WhxPt+M9GdQ3ktYtoGq1bxM4dq9A0bc=;
	h=To:Subject:From:Date:From;
	b=FAvbg+RQZ1WrAqYbulpzbOgcFUlrkr85qCkRyh3aRd1RaKhPUXJtZF84QWENHsdHP
	 +xrD9MtesUEWbbbkMVZ8GOdvwn0lxcz16Gdn6F+kZaBhr6eJeeZXBW6qsZK8UVBiVF
	 ZBt1NbCjcYWnjd7dTqLJ9yDGELsBYJYgxLT3xL15EeTs3DEE95XtP8PybiNdmVW53y
	 sCcZ+xoItotBAcG7H8/roGSbqR9aJ4/BZDnm8NPOMwG4PzUoxvED19osCsEikwKtGs
	 rjusMHgy6RJayIalJt1qPmVSh0YWka8LX45z5DeHtQhSs90LUSe0Svh6IIBx5uECUF
	 QEILo7r0cz8ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC8210706D7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349289357.12971.12924228383481152063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452c227cb149af10a48d2857259ac9eed45310764c14b787a90280df3678d614
Date: Sat, 14 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773492893
