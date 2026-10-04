Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351D934D389
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791109834; cv=none; b=d6A/+hGGAaFtJRPJYcfM/+xyH/oFubxzQRO06g+NI8MVvYP/AlIMa2jGBxJpeG6vZ+4NvtTggD2CIB10d/oPPWwkwVdnl9DoFDIEDoM/cSYJagz47Ofu03LlTLVzQyCP5jfv+xjfMia2AtLcla2VAg+kZxeG7aL0zc9cO/uB08M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791109834; c=relaxed/simple;
	bh=5uYCmgv3ETE1TiMGtelvEnPMq+WO2rGX1wH/7FfXgEE=;
	h=To:Subject:From:Message-Id:Date; b=ZiJPkfRmNartkj0Pj4N/l5FDTmjriUokoVQljnj4rmTnTKWPfy74etV0u54rhxLyZCXLqCMcfLqZ2ktEK/U32vzfoLNYqG8rTrP9H+mhh54qdj1NBR6NZz42DZIdetCCanjXuC0XCuh/VSS9f3OLeoEqcrrHCdhm6IgIoCtSOEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKpRZT3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKpRZT3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3BAC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791109833;
	bh=5uYCmgv3ETE1TiMGtelvEnPMq+WO2rGX1wH/7FfXgEE=;
	h=To:Subject:From:Date:From;
	b=qKpRZT3EOJHtJBR4BWXJjIvpcCtKByJWiYM6eQzy1FjegsOa3/scBzHEzX+UrsDAD
	 At03vcNqvIGphjCu0oTj+aUt6S2THQsMwhOe9epmZyaqSZGejC37b0rBKZJs4lFDAK
	 1PaXHrOt0M7pBviGKY/9Il4jasnzkMrcGPaOePYCpK4MG19Uu0aC7vvnzcb2vT06wn
	 Y2JDsHxYk9MOA1lZnexSjDYoGbQMHWAhpIB54id5zyLGkjGwiFlYjWIGuJgOZ9eYEu
	 5ZD6pZOtcZV9nY2XNHu3FYhp3YSSBuFjdx/eca2jgZz8sqUI/uuau+pZ26llwApPK4
	 sM8+qLoGJ7PAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA021CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110983368.18641.12419952186845600554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfcf931b046181b4c5facf5ab3bdf0a20a3eb3cde0a552f1e48baa63cda022fe
Date: Sun, 04 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791109833
