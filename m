Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4069918027
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747908594; cv=none; b=cWw6arYeNtH7iSbE4yv1vGfrcilv5MF0acL6RLb9zuVZBbKUtaw5jxMP+srEjnCy+aqJB79XjmA8LOz6LAzoMmY8QDU++Y7/JQYjE44lvHe2mRW9t1Sg8eT4GhFKll/beo5EKrp6wL/FF5VrpBE2CkFUYrpiwSxzxEUWu81Wvok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747908594; c=relaxed/simple;
	bh=kQ+L+GIuGOfLmz71iEztjmfFvRI3isAxqv4E8poJ3K4=;
	h=To:Subject:From:Message-Id:Date; b=ZSm3HvLesa0SH1epte+3zQxKnx6CMv1zO6AZguYjFm42L8kGjqgyWnqqVxYGGkjX735orXwTAhZcfaTReSpIdlwdOoUtUt+3np6IkANSJrDANtPhZPwC+opAbEcGAI2LuTZwVq8y1e2i0f3XNbWAU8riCSc70nM2JGgk//RuTQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBp081EY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBp081EY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD29C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747908593;
	bh=kQ+L+GIuGOfLmz71iEztjmfFvRI3isAxqv4E8poJ3K4=;
	h=To:Subject:From:Date:From;
	b=BBp081EYHWQ9JRvIE0Id8vULSdMrBjUL67v7epg5BTb6xuqNgNqbzAxkvryE6swfX
	 orX0DDeJ+hcdPxlQkKswJDR7PnmOgjw+PKRXC1j76NlgdK4P4HMh2rQbuPOT5IZiKa
	 SQn2jbEhbr7EOro16s/x1J3NZmz5iy0TnACnVb/5ih/OnrHffj5eYn0Bb77jILtshB
	 oi19XA/6mdZdG8rIrTW5FC1WTS9kFxJO3PMbTaBWdOrGq46F+BWvRzcKJA6sKe1ROG
	 7EFBBxjePSPTLjo0cwDVHAO9HXGB+YCxFiodvrjCvT8T/HGSB4hfAPtV54a1fQtrow
	 pyx4xGuIBNcWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F837C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790859358.31271.3334232778934015328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d77b2a952eb1c47c02511dc2b908a981cf312aa51a8ce20d42c2880d286ab3
Date: Thu, 22 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747908593
