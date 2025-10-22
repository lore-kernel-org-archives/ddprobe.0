Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1425B35B13A
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761152394; cv=none; b=Kxy3/mx9IFJgWxzG2bstBuCRZSduRiPfD9X8wvX7XJOzKSegsp0zShNn/2OOdmAXmT3MteShLY5zv7x/3Kehj0kwXD80b/H+M34QAV+AC6mV85uC90SFYM6Y4t78z5Zfw8U9Bwv0Rpm6hn5ZHPz5mNRQPgtz3Q0X3V7fbtLKXdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761152394; c=relaxed/simple;
	bh=ZfajKypIwvQWFUUCdJWekDkkFwKfWkocJwlV75eM57M=;
	h=To:Subject:From:Message-Id:Date; b=ZAkxzdlxdBtGkP/NQcKQwPA2yJVHJtOAFFrLOHWwqwgVnZnPa6q8IdacwXXubQtZvegVZH/Kkc3phpqv7warTdhdQA756c/yQJULhE/IN9LpHm6+a8/nRsNzuefOsmYB7mgAU8AgdWUS32MrVqileOr3Df4UsQXfwdLJ5XqT7DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVXXVbgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVXXVbgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE1EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761152393;
	bh=ZfajKypIwvQWFUUCdJWekDkkFwKfWkocJwlV75eM57M=;
	h=To:Subject:From:Date:From;
	b=XVXXVbgpkhtc0hLa3R4qwPEasdQ7ja49VbnkHu8CPHuW+4ueAMHzgrVn+FaEZJq6I
	 D2/rAS3rUfV24i+xP/QDnr1/R2oYryF26Nk25nfS46CxRcX17PQzz4dFgqFgpeJu6d
	 Y7ULIvJ4cqUULIsUFzmVlenJVw63vGXlDPR4arfDOftJc5ZmyOSSEpnTjvSrF598dp
	 1RMrKYDIePZ2Z5q+U7ciAOd+IyiACV3KZt/S7zfjuxpolpESatQrD7aQQoawv4pT5k
	 FDCJMrBRief/SNmFR4qQRWN6s/vZf/LO76Gs5/QmUG0EzyP/2xvvg8+vcwYZiMSL5o
	 TgnAL5Aph4Odw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013ECCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115239358.29683.7711904756449142597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67dbe7ee3e4d47e634bf8f3ff2fff1aff18734e7ae19941ef05b80b84632da71
Date: Wed, 22 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761152393
