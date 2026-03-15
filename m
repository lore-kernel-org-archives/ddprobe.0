Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38291D5CE0
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773563694; cv=none; b=K/rTGq+eetBhJl8rnBOP+56lP8skrRpcWd2Ie1m2VD1c4dFmsBtOunG2EQm2++B6a699W7lZGwHDd1BMJgXvvUDPxLpZF8z86N7z39k4DckymVxBNcc/xD7UqhAhwo7UQ/4k8V1JGCS/4q3VleJgAS7Cw/vrGF6FOyimOy+EvIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773563694; c=relaxed/simple;
	bh=Q3NTVfL1UYaoF4Eu745F6qwSD9lZmexOO10jCu3iIUY=;
	h=To:Subject:From:Message-Id:Date; b=N9EuylCiL/+Z2wb8XpgASrC0e73PrBR1CrE54ZlEJEMkzzsGVb0EUBr45JJxgtDXIkJtuVf1J+Ti/VDqvEhbprWIpaPI2Fnn9NR4O+ZnYqpBK6UHmGmdKbc9g5669RvBBLw/gStevF+n4SwOeT8vwQ9O67gfiJiH82OLPS8iXK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+RLsyuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+RLsyuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F29C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773563693;
	bh=Q3NTVfL1UYaoF4Eu745F6qwSD9lZmexOO10jCu3iIUY=;
	h=To:Subject:From:Date:From;
	b=m+RLsyuUakfN/+ayIGeyF6YdzEQ3qGjvPEjWFbdiWlxTZuQGPK95ld6bpMPiYPxe7
	 uGDqO7J8xGcP3bidfqtCS79FPW3+wn4ETXmPrBRXyapz3yAHDJA8D03Sv1l2wDnTHm
	 RUMgmwx1lmLxjr7meVqKJWc88A57sgTNswn+urI6ZgINC3ac0VnHMZUvcC80lhs/8Q
	 iBP0JqFEdIGMl4xull/afHSG0qkcdNkSSkkTntkgO4xaOwEvIznVnFyO4wxhb83I4E
	 nPqr3kVQ9cXt0JzpLi0sVxYXS4LsSwHQB+QxatqsFU5IbyfESuxhPv27bdg9j/wo2F
	 RZ+awxfLKiBTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F98D58B0C
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356369358.28440.12868405307963543464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019a0ebed124277cda9eeac7c49a721d608e748192e8a9d466422bae39e846fc
Date: Sun, 15 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773563693
