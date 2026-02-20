Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0451A0BF1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771555494; cv=none; b=mBkgd6nRvvV39vU0NtgwVVBfNMWXlkBAQn7rJBef7uRDQBvcROQvXvKvGdKcU79+k2OkbLJNzHcrJeLVKZGgwdbBy5Pfaid52em7Xs4376rHEaHk/BL4pN53BAC43ij6vWdUhWdCC1p+ZTUdoBpBuZ1vS9FvpS14eTDXTlqedAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771555494; c=relaxed/simple;
	bh=e53IWHijdNDzgwcZgfuEYIjcsY9y/W4txJmnSkaALhU=;
	h=To:Subject:From:Message-Id:Date; b=EKFdY2jFAbMpDSfKcbLipU024+cw0o7Z77cy0oROWevKpD99mpbSISvUnGj/ktzUl+ld627JqCNcqVxQhObXAvKYM+Psb9oEhbU2Lrxmt5oEvfW4T7XJc8s95KVhRyPhLCfc43XOHcNxDSpo7q3Rbynt7tkyBVpKZKucpHo1Flc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzoEgGX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzoEgGX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7647C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771555493;
	bh=e53IWHijdNDzgwcZgfuEYIjcsY9y/W4txJmnSkaALhU=;
	h=To:Subject:From:Date:From;
	b=QzoEgGX+h7sJxkj2InSpGbAlYeZdjPytQY53YCkR4nOKufE5ZU5rMq+ajzGIJqb2a
	 mBI3j6KIlRphcPV8hosZGy6sd2nbDO0cGpxOnT2toL9VTpiiPbXPiB2ilsnNGFd43H
	 MLqVuKTjZvAL7g9l2CY9iX7qvAuqAlrVk4PI7B6Kkt151OVdv7QqPC4PiubeuSyoOR
	 Ljbt3svF/FrYSGs8LRUq4wmj/Yf8XS9ayuE09p6ZoXh44C4IitWscftlhWR4pVmI9n
	 M1bVkHLlC36gGRpnZDuhCGAvqqE3OFaMCLkHuMqzu+Q72MN26h3GspzfSttHxVRuwH
	 xghqL2/WeUB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944E0C531F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155549359.6748.16956096079420360438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a30d14be78d09fc4770170e8d3791cb5dec9198a29eee61c3783ce5eb34d7e6
Date: Fri, 20 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771555493
