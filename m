Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F33B17B418
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768231434; cv=none; b=EPlbNu1Y1dB8MGxypdAxbA/w6GO18ueR5dwXZ3Lvhk7s6PZ8Uzl3IyjtquY5URP6Xxo+VC6as8xAerf1o+9Fyqxakx7+uNTsNk8tuEzUYtLZ+NdNp7doNWk3QNzLUuLKPiSucZaAIbR8AQ81Xgib/D+OHmpfwMl4mx4KJyaJni0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768231434; c=relaxed/simple;
	bh=gOKgxlUeoNqtLuY0PvOUGv5OwJn83ezMvZKQgncUgT0=;
	h=To:Subject:From:Message-Id:Date; b=qBNwFiNH9qlE4rXgYvH8X7IVhluPCplVrWnQUwjr22SkM2Vl1m1Bp2hNIv1kad2n3AqB/79lEs6/FTnQD5nyXhev9gkba+HbYyPdzA8iUZdaof+I0a1anbcZwRJUSG+N2tbxY3xHLfqnMbzNXjHKEVFa05l4LIYQ5gfsorR7Ebw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALBzWL3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALBzWL3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE71C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768231433;
	bh=gOKgxlUeoNqtLuY0PvOUGv5OwJn83ezMvZKQgncUgT0=;
	h=To:Subject:From:Date:From;
	b=ALBzWL3xQtP1+Sguvftyuoz5g2L8uaOKJBum189Z5VDkFo/ZRKqqyidmKjpd5LyOQ
	 L28VzsFh108fEvWdJcWivRDX68jvvGBNn7TdDmf5pMuBMwluEjrAe8eQ+xbouwyc2R
	 ckXKOX99Kj8Yh2se9stpjm20P8Yu9lxM6wTKTZwAGzKsNP0Lg87fa+/AOZbjdze1Ri
	 AS6xeviITj9G3Kp2tsWLWsnOfiOMGb/VG58PGcXYsvAxMH3iyXWnCalZzpsQRjfnoz
	 DSvJARJC+K99f6Gpei07Bky6zAvXav1E1Kj3vyISxSIks0FcEiA5n0UUkKf4iirvD5
	 gCTK+/DbUagPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A3C9EC94
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823143358.9713.14239772051431894151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38bc73d9cb968f2b9eb4c61ca2bee318fc8a5ee9269bb85bee64f746c7a3001
Date: Mon, 12 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768231433
