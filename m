Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9CC1E2834
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757046594; cv=none; b=o+Imfb7KPY9RtCjCaZv3GouQqWOaYmXazGBK8VngSBmrB7DJqtjOyvtGvXB6ciju6xtXP0IeIr/BJqBslz7Yg2q88odbI6wnsrgmfGY63NTPU5laW2zPcJ4I/smXjeXHD7UynIt/lUdGXgADtUPHgpccnGHz98EObSKlBf+PRI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757046594; c=relaxed/simple;
	bh=1bL33T9bXB4cMn+VPs8xrqe0NalgPi++8Qy3QS4zb/A=;
	h=To:Subject:From:Message-Id:Date; b=Fo4jQkxF709i6N8cDi3qwV9yeOT4jswmH+JeReKPpJC7se+ueVvcNEGUUJf9D5bg8KFKYfVy9JD7YdU2inu3cY1AF6vp8U1ong8cUVQLb+2gk1Q9P8slrGOemQFCfuBsV5i8NCcpc8MTYEb6vxEgvYUYwYmnX7HM1Vm+tqmfKj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VolnqKI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VolnqKI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC1CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757046593;
	bh=1bL33T9bXB4cMn+VPs8xrqe0NalgPi++8Qy3QS4zb/A=;
	h=To:Subject:From:Date:From;
	b=VolnqKI1tQCUZCmFPZycSE+6zMzTMfCFTQL0KyjrQGZtz+ZNSPno5WQv1mUoK3uDn
	 sFAukxYRnLTlVnwE283Wc+KJk0rr0qcGY9DY4j8ux7z7sjsLzGOe+p+DKzaOFCEX/y
	 IMDkC04Pt5QvuIqzyjbbIjU6ALC0iil3uY4mhur+AL/sGVnoNXFMRyMtWZEZxr7LlU
	 V5F+TcvwZdybHUHJj9VbNuATUBzXTqx9VMmWlFG6RIufBtmdlp/zDQo/3JHXUMtJY9
	 QKsSxpAyW0zina0L/aTaIK18lkt53qgjoVdvWqnT8WJEhM7rL7L/kMDAT5djVfozmr
	 5NAfXzMa2lyWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93251CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704659359.23168.17509728832411705571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e5f2b928f7d66c0a6d83e7cf7d427871fbd7d6ba977f428ef29b5ee0002f88
Date: Fri, 05 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757046593
