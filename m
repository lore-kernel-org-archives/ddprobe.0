Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4111B326927
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780512874; cv=none; b=jmp8V0VsGhtcQmnVj6JcxGcKEsKllsbOL0g2AOpvoDoDbfpGCWttZ06Vj+d6huSg9uov0TQHbJN4HDd8KTkDCMltaNvrZz0xAYIP4LK5mHdsW51fB5dX1/a1jjI1QrQIoEla8VzMjXipXEZSRx1JKWUqFgOcWEenEDni1KY0SNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780512874; c=relaxed/simple;
	bh=90cwHvfq9h39HoCW2HK8cZ3Mh1lZNyESjFkXQH7oxnY=;
	h=To:Subject:From:Message-Id:Date; b=noQAa9L/56MJu2bPS14AgMitQzGX8bFJhpEgGWOcL8O1rBKZnIYFwjYQ09z/jQnz+40fV+XUqypcjEzeExm8gzbGMAJvtKBV6QwI/g/tOlDI8cPQvzOkH+ZYgQxHTcx9FdT0BtKKAHHmFWVhEAiHtyJFsMmcsv68eBgDwhWvJAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPRSpGr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPRSpGr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7216C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780512873;
	bh=90cwHvfq9h39HoCW2HK8cZ3Mh1lZNyESjFkXQH7oxnY=;
	h=To:Subject:From:Date:From;
	b=NPRSpGr9lRGrkgU8KVYkl91FqwQeWpJbs/niV42ZkdgamJ+Ptx9dR41nAIMTbQhHe
	 fBwzpAeWz7qurIpLoGsBpzIslzIoi8pjxpD8uXEzEmEP6kZevCNU9mI+uYKz8L2P3z
	 DqxCrR8assZEBFWXl+b2XeSq4Y4910NcjfXObI4Q5SHeKHSqaTI0wdYXauVvs880XJ
	 gNPy0HC2PnnKM9nbJR1BwNAP8f+syCjMvChRrHynZ23MWK3s+Q5kGyFRPcNv8uWdgp
	 MVt2ghb+AORVpK9SDRrjW7Bc8ojKz6BvRNTS5gDeJbx7W2bPYrQ9XNdWelmJC5MJST
	 clQ2ajkhl0Beg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B2CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051287369.12923.657749975520152940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01b8b19086bba175771dc3377d8eed80346db72bd480858a33618cae6274890
Date: Wed, 03 Jun 2026 18:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780512873
