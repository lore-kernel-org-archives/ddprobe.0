Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344753A1E94
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766829834; cv=none; b=rmrrkAhOIoJjisnD3uFM4iKnsoPAu3904fdtPCOPm38Jr7j9gJH/8EPZE5Z87dWBAzNh6lAcr20A+RbBycknlcf/K3T1yczkRn22MPABP2NVDT0pj+8YorO+PCJZjsEHZNmCUpyhiyCiUydL/HKnfI5FGCGvPcI+5lZ9ugJne0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766829834; c=relaxed/simple;
	bh=OE/Wesgnf4qKqvejZaJAV8e1qsn9Ce1BUUp0m9VP37U=;
	h=To:Subject:From:Message-Id:Date; b=SHSuUMM7qn4rprPzbqznHVrFtCzPoo05hDgtLa8UQdqL8N7T3sqOGckOvvbdHgIgbZ075683WepGqm6hL+pLw5nENJf9M+gfYprTI0b4P4H/RalCeDBcX45nzUbydD54m1OygTA+EZhqAlzfpqsBHd7smSqiRD+/15U1TiXOoKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahQ7vOzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahQ7vOzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA15DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766829833;
	bh=OE/Wesgnf4qKqvejZaJAV8e1qsn9Ce1BUUp0m9VP37U=;
	h=To:Subject:From:Date:From;
	b=ahQ7vOznRCT6n3ueO4lnLfwQY7uHevHN8ZKBwtTs7oUamsiFNnbE+n9YwNQnRWCYV
	 cd0+02xy/5q2YRNSIrD3+rpHIQKdTegCeFPKzDq+2eBPjLO5WyDfmCOV8HLPslbtI7
	 LPolYaAiVM6a1cleV3CzaTW7BCOx7wjyuTeDhKhumuq/YIrkMIt8uHF8ZiDv3L0Lca
	 ChhbWo3BYG58wTHdkST/TAlCC1jS2I06e6jdG53VHkGmmU4kFSUFFHzTDelZOOHtCw
	 74waelOkyP7kn+Tu+TYkgk7rpPJgoCcOLDwg6mcFAPskJxMA+d2oFGTiWk/BZnN4o1
	 tqy+ZvW0iM2kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98225E8FDD6
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682983358.17183.16938306481000492123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bf147d40be0a34839b24dac1eb16dd0c0bb8a93f20cdf3f01e6a10bb459d4c
Date: Sat, 27 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766829833
