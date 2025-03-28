Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AC879CF
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743142195; cv=none; b=VP/8FfnvnyKWuqkYVjFjaSEOrLGiU4xea3no6+BVAdjELnbWhDvhULEVurqaj5Atg2auAjMzy7Rj7h81ptk0n+//3Qi1xqFHC7bhwNn+eh8XG45C7Zfvmm01Yy5ii35vSWsMlRuQeu0vwgdneBETOkk00hML1qlDekTVcd8+TDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743142195; c=relaxed/simple;
	bh=hZE0FD1pdLVfZ6utpioh2OeTQIcQ0FKvty5boima6z8=;
	h=To:Subject:From:Message-Id:Date; b=cgzENZ0OT0p1kyFz0/zoogxYn0Jx7bb3AJEgdOGvQF7PrBqjEJRBCyqn9UCX7mK013/RY1voUF2ZxRsArRc5UwOMALliY3YWHnwVpCGtvZAPJ/svlXCnlIrfyk23M8CPPEUNTF4cdDIVR8MVpbCp/y5MGsJFAJ8kwhqMtAZUvLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Waj6KRGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Waj6KRGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0EDC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743142193;
	bh=hZE0FD1pdLVfZ6utpioh2OeTQIcQ0FKvty5boima6z8=;
	h=To:Subject:From:Date:From;
	b=Waj6KRGqXJ2aB+svbyqbFLsJ8nwA5ii9U9GmnNo1kYRA10YSKMJP/GyFt6oMwHSuW
	 1DWbUA+VIcRqaBpgu8Ff42NFKbFiRIyllsaQ2VSI15qoGPtgXlgC369/MItTPEjASD
	 JzrHNF05Hg1JuS1dac3qwz8kNQXjCNxNoN2dQ7FRES4/SxnQeBf75JqJkoFhidll1R
	 ciPCwpuMFbTBcyVIWHcG2EldBZDkz3tPlIqN7huNVLY+BD2V3OAHwoQXE5iCJcb4D9
	 YkaBjuXHrTS+yDnXNRO0FsJjpqG/bGF0ZxIE+/m+mrogqIl0qJ7LvCJ9BWgEHsXct9
	 yNgoTcNYYYEyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEEAC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314219362.20340.6100308499186801859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e9c160e13d291cbf6f9a05f78fc07c1dcf379987f357a5bb57d2e4053bce0d
Date: Fri, 28 Mar 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743142193
