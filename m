Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79ACF39FD0
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719729863; cv=none; b=pdOl+JqdWYtVDZ0gfeHrRVuutqsg0svXo6ddjZOjeyh7PecbjLrN3FOqoUh+wpaDvDB51uFVEx7CRFw3NEnfxdw+CJ62z6/EaMSCXbRFwwPC0O6AF0seJwN7IpypwWqtsgjdy0qVXfe6zxA7YXetnJ1aBmq0t3/cprqE4I0D7n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719729863; c=relaxed/simple;
	bh=82cDErhgcycP76W7rxiGZfBA/jdc4lT+mAloJM5Vw4Q=;
	h=To:Subject:From:Message-Id:Date; b=QoJD4pCe69o3ATAHMP3TJQcMuHdt604lRjfDVOPkaQr8T9XLRki/ASbuwy2xcr3l9FwGjVgtUqDm6T6VKvtOP/MSqhhoGGjKkIztPKie86kG59lB3Zaf1SipWj+IjpYNOYfdwZF44uDZG4KR+tEgAlHX+jpNGAgw9jwVpY/lKMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tw4vOqfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tw4vOqfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBEECC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719729863;
	bh=82cDErhgcycP76W7rxiGZfBA/jdc4lT+mAloJM5Vw4Q=;
	h=To:Subject:From:Date:From;
	b=tw4vOqfkB99oeGFv+2d/vKpXfRfOW8TofVinTE2+eAWbHiBTbIcxwTn0cfuT97QGs
	 ai6LFlWIOOHwRaFYs6xBCoI1tmXh8OSJjMcDWDeZWNnDu9Uj2Gb4NGwkc+0ib1seII
	 w8+jNXuB/6AVl+fjw1hEkkSGZELNZJXWxvN3gPK6NmfDjl0klQwOwB6gkAqWU/jstt
	 xPDtOjhsQVfr2YL5qwLIObZdhSK7AA55WnbuMwixE5jm9+42rF4zuQJNIUHXYjWe+6
	 U/s2f1wlfbdryTK4DdO5xDkUsPbks4e8gq0moheily7VJQMEJF8CVjmFry/CF9FdIk
	 LKUrABEeb/V5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8AE0C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972986285.18313.4601067906933607150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60840211aeb6d26b5317777c8c149ed89f222ee7070702bbd86807926fb6d939
Date: Sun, 30 Jun 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719729862
