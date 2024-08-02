Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8E11ABEA0
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722627954; cv=none; b=ocNjMmX5gyqS4mGL1b1IgQ1wrkz8k9LsQKoVverK/gbZjHcTdfM4VrCVj/GjfNlMiAcOBDSwtUR8XuMEYApketUl0D45y/+jhTukJ5sNu+epXjPw5pCL19k2b7vnGNddGBKWX91ti5MEWyfyjTzcL4CLObMrVf9ZzQ3pMbHa8E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722627954; c=relaxed/simple;
	bh=aK7MYnOVfYOcf7r+bThdd4M8hWGvwlG8yOdgpXSHFBc=;
	h=To:Subject:From:Message-Id:Date; b=E7WMJw8G78kZZ10sofJIp3C9UFj5SGq3HJMEMcQ6A8QNjdIRFSONqnYtgpFSJWzf66gjbHVaG0pKdGcMRfQU0q5sECn8/37d1fIEAGmhG+InIVBRxhDpitgJN+ug324xaeLl+avtA/ZV0Keq+5KgfqyY9JIdFMFjwImyD/CIVmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5l5niB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5l5niB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8E6C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722627953;
	bh=aK7MYnOVfYOcf7r+bThdd4M8hWGvwlG8yOdgpXSHFBc=;
	h=To:Subject:From:Date:From;
	b=e5l5niB7EHzRqw+S2fJkvLFpZEXOqhsabTYo4ZWeunKWZW6JBoy2o3WwB14EW/1xW
	 Gm/WY3x7biTnuSqjxDwS6MDVC2sBbWUnw4mtDa67QZSAr9qs6FoRTeiGhZji/dAqFh
	 XyVLtufuuiOwTaq+5YM5ftVKwm8eouElTpWB/U2iajiux3+cg+6HgNgF+FZTdYOpLh
	 m4lSlTvVKABjYV/rGW1iGvBewfqIh33vlhOSg2ilmtVqUxN1iFWX3faVKjcKMgRit/
	 NkeUZmb4en3k7ZM/0CWIYctheZ9MxBy+/R3S0aNW87zYz0t341SR6+5YmFjKJKctkZ
	 6uIOZfH+di0rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99991C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172262795358.9160.16938180479053366353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285dac6c6291d6c6684d3be49d0511eeb870d07a0419aa0c87d14c9b8cfeea2e
Date: Fri, 02 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722627953
