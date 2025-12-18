Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89C61F3FEC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766058833; cv=none; b=vF/koXVVYz5l8bznVg2xiWQvPWx6PCOo/pRoY3YQjq9fqNgB5HRvjETkhFv6RDpsAgJs5aDtEmExVWNbg9INyGydnmjHENsPwpjmCcUgZsXn36zXt960DrjpwZ4QdiAQE0GSkB9J8VFUl1sR7JUqT6qKXqw6O7tTTFysl3rZuJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766058833; c=relaxed/simple;
	bh=A+TuM1Hw8e1CNGWzbrBz9PVCkbvDpC9Kz9IFbLD88xI=;
	h=To:Subject:From:Message-Id:Date; b=qxt3+zCQCoyH44prg2MKRAgRm46ahef8jp3lHqUkqtZJ2j208FIIdJkKY/9ahkVa0yy9N4pi6ErFZdcLDF1tKMZuUVfuvFzp0n9oirxB9wKQJGskKMlpbeL0Pa2XnqIBAmr0t7Zf+zeqh7Hn+lU3EgRNEVhSHhkwLea/E5xOrG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQEOm31v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQEOm31v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E2C116C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766058833;
	bh=A+TuM1Hw8e1CNGWzbrBz9PVCkbvDpC9Kz9IFbLD88xI=;
	h=To:Subject:From:Date:From;
	b=WQEOm31vJKAeZDADjNAKsHWZAQxuZKjJHxh3JINvTQ8wlMVJZY9sr9TcQfL2FQ7XI
	 FOKkLmSnLrOZgMkwpVYyA5L+or1AvgW0exLOrvn5O8EUQH0heibtla8Vz/Y/Gcnl1A
	 TpOUAasKD2ag1mpSu4MuWfIEHk71xnDG7xmK10LS1M1WEjAT7WCovSLNGVRm4ZFQYm
	 2JI/z33ptHAoX/4VTPkSTpez0WiD2thQab6b75ykXkJnWW57+5y456fisjac2I5UCY
	 FMh8E0GBIDg+FtJtGnuDfGMHdUe3GEu8h98v4XOIN3GuB7stBQrU/P6ngJgs+IXR0X
	 shPVpqyDdhypw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E3D6ACF1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605883358.26899.2778908224545310453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be7516a1ced6f87b832bcb72dd02fad91ff5cd11da760fe3ce9a60afa6c737f
Date: Thu, 18 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766058833
