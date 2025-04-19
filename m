Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222F64502B
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745079594; cv=none; b=pSOYnUZiGGG8tXnP6o/16QY/8lavo1e1JCbWhtCuyUY1a7P9zJDFWphEhT80ekQSclLgiVRqO9rqawW85NIrVEuyNy3V/u88T96YTmJNI1nF3wC4tp+69D+/u4ODBF7s0/+S8+6qFD52dW+6HNnivK//l9T1+wiHW4nYU3TMWFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745079594; c=relaxed/simple;
	bh=c346HKlEGEN9KKJWaH3+HKVsi/zQjf4QkRekHczVzfc=;
	h=To:Subject:From:Message-Id:Date; b=ea5l29HlsNJs5TMrbUIAmMM5/6bWK5IhKgg5gxwXOxT/z5e71GB7NrBb5q6hIoCYdSpXF0YMC+/E6U/US7Jj+BXMDbQOW4+MZhdgVPCW0rlOkegcU5+11GNRHg7e4L1qOXOpcfan6La70n1v/vkcZsI93iX1GKTjhKhCA68yuqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWVUv5dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWVUv5dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB632C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745079593;
	bh=c346HKlEGEN9KKJWaH3+HKVsi/zQjf4QkRekHczVzfc=;
	h=To:Subject:From:Date:From;
	b=rWVUv5dpN1aL3jP2GtOrgbmQ5sSynqPfEtzcU2vq75m7BR0DfLovU2EQNJ4wLe9th
	 RcUKYgGHoDQ2oXSWcKs+fFTgUb0yZzMJLGp8llEyBTVCx9i8vFmtiZllJKVPGRQ4a7
	 oOV6DpNsbmupsi8/g6wa5/gHpNlWPxUOx7IsU9FMe0EI9kdzvANcrjDsnBOtIHrscM
	 +YkLwS3Z1qYqBsLEn5fHbhFPmMQQO+zdjloXxc3iH3Pft4eOzEKi1D0ND/Mxk0ZhcO
	 xnoaOKM6THWOHu2G2US0z3uia4PxMjscfrugh/QK/wotw4bMZnNdR6xTUrNqdq+Bno
	 Z4Gq0+QF8PKbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C5C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507959358.23343.4721300293370439814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a07220d3dd84f43ed446ac9e693d2175a881adb14e56b6966973e68e15349f1
Date: Sat, 19 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745079593
