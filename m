Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B0226AC1
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725216954; cv=none; b=hsXKg5HZU8O7DSqYwg615iIX7hZm0h4qxugDmB6duhqDghRcZosPqkA7aFHXUeIX2cm9wANq/Tc6jgDy5W6OwkvUHG19ScaIgYfux6S9CgSeYiGXv87L3pyt7mrTkgVmoM6bZMgHWJ9PvQjK2BUxBdr+wwXWtxA9kF9grvS81BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725216954; c=relaxed/simple;
	bh=GqXU0Zs0ryK2Qor30qjUi3ehZbbamrJHL5mtvtZW6OY=;
	h=To:Subject:From:Message-Id:Date; b=Ij2cOM8b3dWsYqz4sJe0nFpwsaM+hJu1hBi6Q2U3L7BTaTvy0oIQXVQIIZm4f9O4RXbrZ3SbPgmHPQldS70x5TKdS9eBJuzeH7FWC59eTPPw96x6nqSgN58SdVdQz99Vzg60mWX3dJOTBccRcLmRWMAKe8ErDYBGXwGQD56TDKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uf8cg/y1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uf8cg/y1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF8FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725216953;
	bh=GqXU0Zs0ryK2Qor30qjUi3ehZbbamrJHL5mtvtZW6OY=;
	h=To:Subject:From:Date:From;
	b=uf8cg/y1P1UMUee6pNl+BKZF7WgH/kKFBWdgTAgyRavQRTWA+4TG+Pt4jAUKfRSqd
	 TtgeYv3czuCxtj2Dln0jMIg3TeSUOMJR9tdfDBTxfSOPYXpa49jLAlQh4f9oi7YsqW
	 ehT9i/z0I17ZnkD7wWTpRN1rhcpbuQOsVJumeWsSdgphubTvKwXIxW63DdrK/dSklD
	 LrhZsrg0m2emiDcU7TlS4grokITISe9cHcz5HjGvy/e/BWavJ4sw7FyBy2h2UVOLLW
	 ubprhTj6v3Nqco6o+Ezuvbx8KVDNZ3Gu89RK3dWzIj+oOW4zEhEWQVV3Dhf8+a83HO
	 3XoGTEXOTGimw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA9ECD3420
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172521695359.32310.2487449822011274244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d285037d19062c194a778af5be90613209a36ee47b4c49731a683f0a2996d8
Date: Sun, 01 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725216953
