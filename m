Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A222E6CCD
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775884654; cv=none; b=sNKl1rfJPnAemqar2ss0AcKqno9evZ1sIs0D8QljVpPX5+u6tx7IygcqDehVbCgEQKtn8AyBp6FlY4cWxqKJC7/UQdC8oCSMLwDe0VoOzvAC8GPpdA5XM53pNO1hKAnP2KF9a8vb/JFWsA0sUSMtaLI8wfGNhtEeO/N7hhhb9IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775884654; c=relaxed/simple;
	bh=yFS+l6gjOBIHyZRhqcaGFG6TWRIIIg68UN8+qi51crA=;
	h=To:Subject:From:Message-Id:Date; b=V3aTseZg6oQBLIB9Z7qEsNIau5B5FO33sra+3fYLV6CRYmonqL1NHkAd2zb8zNkQaUEk9dnBJRA0TEJWD6RfLwqA/K3yjBsiXawyofzavwa+zANjHrFAGvo+H8IGVrRCQstdCkTJ6aYHniyYltrvwdYMbSXX4fslJ4hoTX9oNlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlkO4kYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlkO4kYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97BAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775884653;
	bh=yFS+l6gjOBIHyZRhqcaGFG6TWRIIIg68UN8+qi51crA=;
	h=To:Subject:From:Date:From;
	b=LlkO4kYdqBH+67XwdXucvkK78j/jhLQHtDKBLcKm5UenhpU/tNPpLRUFgSDqTcs3I
	 hFfpQcH2/G5GpA5z7JHlNe1V3V/Q27TTtBY36w/UyubeG55Sy7od0916oRs6zeDZE3
	 85k37fX7hpJVfZEUY8MGej92ATYoqjbauXhCIVLgBbq27osYDNClDVcKKMsUS/Fvce
	 UVxz2D8LOt7x3z0l8JwW99UFuYgQCj1B8T3NHoAM7bkpap2fyIrQ0xBeJVEB/CH3BH
	 Xx0MoxrQul/a27Jxkt2KkkU9tc24RjtiSrIluhlincdKFVpvmH/WTLytwEJra6Th3/
	 sMVtLj8FzxYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90FBE99058
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588465368.22016.13754019579834337952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883a26768f5443dcade83ffc17a4a870da472444d84938c0e9b4088196b831d1
Date: Sat, 11 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775884653
