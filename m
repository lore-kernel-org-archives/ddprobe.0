Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500532A1CA
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743919195; cv=none; b=BtDC5ZVfTuwnVC3v4a9rP5x2ViFnpjD9YDk9T+P03XJSYCyOH7PnKtLK8FsQR0chiOGFYNDbR+nMH2+VphiIOhP4vi0c8r2NcIKJubMdoK6kJZMyqGPQHHfoRUEiZQHjPpoN1IG7Z7GUOJwh4U+wedGzrfgb1pDJN21aXmotpPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743919195; c=relaxed/simple;
	bh=axdCJBBEHAq4Y5qZK1KPosIQ3DNCGYnqF+WsCe0GTtw=;
	h=To:Subject:From:Message-Id:Date; b=m9MDtyUDivVkKVYkOFDce44sxONSWSmV45tB0g2MsNoEkrACAtJF/iuKEn02bAmdi6atRUc7V/GJ5Huj/i9R/Tvnwj0lCu40Ewe6d77qJtOqyK8+jyLIRNY9omSZyz6ko7/9lTkgz+MyTBrq/QpqRU+otkBgSSEdR4lAzGKihT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsmnJHCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsmnJHCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3002C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743919193;
	bh=axdCJBBEHAq4Y5qZK1KPosIQ3DNCGYnqF+WsCe0GTtw=;
	h=To:Subject:From:Date:From;
	b=MsmnJHCm70M4R2OOIQI8QacojW8uX8GC/nkcEysDVY1Cmu/+k/xiTgKdLs0uDKN+M
	 FMIQKqTmNc1yjq2eIq0ZVyMda7hSFDsMUCxFnJAFFQXwZr0gFFGgsC3rq6LNRiD9ZZ
	 beQsEwV/DuX+T/gmq+rG6iY4loCrIXTN+cQwLe8X27FVW7w+9C2mazxecQlbDuJ4rd
	 m7AkJtntJ5H3x0bXKQ4SAsl+GcBBaAavCmAUKGDVBhWSw18C1Qm7hHwrWofVT31Hx+
	 hqNe/EMqyRRM7j3eQ19RfZ7V7jUMD5+HZS+izw+fMkMrVlR3cORxljfvDzjCqK2bkv
	 c5cqvzY3Ewdyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95418C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391919358.20408.5193473299555947717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693427424a7a6fbbc26a0835ba1d2b57bde453d8ebcf8878cc6db6d348362b2a
Date: Sun, 06 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743919193
