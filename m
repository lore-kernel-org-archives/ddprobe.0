Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B77014D28A
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711567697; cv=none; b=lSlo1S8G6GkQFQKeMsXoaZlLOvTUQ6oGtFot/jmudoV7E+H2M0eFK2UMteS0WrPMjedXTc5gReoW12dS01q0dGbFDBy5TKhYJCCdbtApWt6LojzlTPEaSf4o02fa845iDrSd8UeLOvTuQFsx23NQlFXqRbzvzdEc0ArOIGdc++A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711567697; c=relaxed/simple;
	bh=7usPi8JzZbOCfrk+dg7qghM6KaSbrkoLs2tmGujLAvc=;
	h=To:Subject:From:Message-Id:Date; b=tYtXHwTQo7YwCmDHc2XhYEXWsuQhYXqnJCQQcxQWHatsqW7sv7m7meiU91cWys4R1l7C9S9pJCcUhKGeN0UVEYOUwMAHh+Fv6l6OGKXe+uIZGEf6f6KZfwemtB/6iuS5+Rlu0W7qVy7Wzw23jntuT12xGzm2/Qbj73Hrv5CADR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUefD8w8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUefD8w8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 845FEC433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711567696;
	bh=7usPi8JzZbOCfrk+dg7qghM6KaSbrkoLs2tmGujLAvc=;
	h=To:Subject:From:Date:From;
	b=qUefD8w8nNKp4kzUU8THGrMTFy4T1Au/EGmwxdaJSUScEPrcit8esAEFmUr5v4IIm
	 YRHV68pkMFzTG1/sO/Tk5Y0IYJ2LVSQ6yvpc5q+jOYDtw+Z00ohGtbdHwInEjnJEK4
	 ra81CXVHvdFdXnVrx8CNqzPV2DVwKOE10iTax7P59Ba6lBb8SVgxKDgr7/Zsk2kdwp
	 Z78KBzRIxzYHGr2IiTEKFKhN27LELbwXJylr43BeoVfpOG1rc5N1+Mjd11FJG56C9U
	 iPSX/kZyZzKQnaRMRO1bCxWCdQqG0Z6ctQOGvd9v0ZC3MUQa4rNUH7ihojZyI9KjsU
	 NRBufLMMjXUZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7251BC47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171156769645.11252.18092420398083331147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff420aee07342230b027ae3ed1190059c9ab7743be73e5e94cfb9d2890add35b
Date: Wed, 27 Mar 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711567696
