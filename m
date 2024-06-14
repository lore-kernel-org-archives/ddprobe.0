Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45037393
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718345303; cv=none; b=KcVhh7Gp9BQQUDrpaJNar6Of21gryka6qxi4z0pIii1Mo1cpsVQ0jkHje9UDuyJ3THf/Ru9JIeSOL1dGffzVIL24MJLDY+DpJwR0XbMdm/0gjpENc+DN0mZiUQ0QXcG0wrUEKgf0qrQbnna3x2jcDl9rw6IpnZ2ENU9OajabXN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718345303; c=relaxed/simple;
	bh=leO2ZLO1QITHGiyyJnpzniEkh9qmr6YgNypuBSGFuqo=;
	h=To:Subject:From:Message-Id:Date; b=PLzYnfeV6zJ2fAT2FcwY02qlXDw5LS3Y9ZVeekdYetfaZ9//cm97U01/lQAGywwP7+65pLflNLPQcxA6XNgGI0y0ZPPeAuKVkBMDBvJBoe88vOUW9yVra8TNQ+KrfgaxyzXXW6nSFtCXrfByJy1G2F7DpP7xsvlFv3XPv8kKPp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDCzejb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDCzejb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17A7C32786
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718345302;
	bh=leO2ZLO1QITHGiyyJnpzniEkh9qmr6YgNypuBSGFuqo=;
	h=To:Subject:From:Date:From;
	b=NDCzejb+Y7EDYtDYdP/xrY6U6znCydckx3NQniwVr1Hiio7Vfpw8waPTSPlBjyhsS
	 FnPSxvVBuw6oVRA2LjzHcINRQeLXydbwWYokbU3iheUt48hJBvUBbxsIm+TsywrBXh
	 2QNgdYVHTuRV8D4PnFGXi9ZM3J7XKhwUKzCIxnHYgVvJklKI6WyXvA2BsYeqkPROlp
	 SuKuX1QUBe7b8hFT6kvMtqLqs9vQ099uBW5M2vK4kKUJ0r7Gda8u5hTI4PDIMXmEF6
	 593tuYsYJJR7DxACRQPDbLAZIRGUcfHTPw3txeGTTG/Xw/jkm+ztxbmJKF1SP/0s4E
	 fENW1zMwmeCcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAE5C27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834530276.27370.3283093922417629196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a889db182ec94659706772ac4fdeadaf252f523410f524b933bcb7ba65e11d3d
Date: Fri, 14 Jun 2024 06:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718345302
