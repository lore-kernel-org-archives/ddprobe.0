Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47702139F
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 20:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715891543; cv=none; b=hjE7KzEQZJBDQ4vn8leCTkTlLU3QtIzBLNVvYwVSjGo8E2blAeQ6GAbdEfq2QQnfltj4C8fd9QGF+4xguUklemjMZuzn6qOi0Qww5rPmiBjgpfsSjlMzauXAwE6dWp+tkDd8lsmJvHXFI2/67LHeT20iVwSYc7Y981BZ//HZmwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715891543; c=relaxed/simple;
	bh=pu9YKFY3LCdd/KZpqGj2i7NVenIOHM9Hqy+jqzj+Ouk=;
	h=To:Subject:From:Message-Id:Date; b=PmTP35YO4Pxh2IcjG27SSF/treCRK0wEXeGKh5gmNFBfbltb8anWFyrNmfHLMPQK5Zis8+XFEGYSezSeMHhP9nFdccGZo1FL+O1HcJxcdrtSOzhi4DoeXeip60LuLIvgqtbwbKMI+x2Kf/MfdcZZFF1mO28KVGkTHRqhmu6ZQSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9l4pUBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9l4pUBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B79C32782
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715891542;
	bh=pu9YKFY3LCdd/KZpqGj2i7NVenIOHM9Hqy+jqzj+Ouk=;
	h=To:Subject:From:Date:From;
	b=H9l4pUBGuYJdrY9KsmXE0n6cAwA3tzKEyachQBkKorYr2ymB8GC/RAe0kJp9CrHvp
	 WChnE+Csgis22OLRltAK+mJE7tQohU/JypNz/OaDrbgeYMRDamnu2cTeylyYv7YgTu
	 dLccVw5iOk/i8QUHkLnDqpP2TDhwqKiA38KOTXOQtNwJgOM5rpj2gpchyGCQwByY4G
	 +EuCYVEj2lpZRo1op8K5WqPoxfEAyLT2vWb2dd2UWMgZVJPs06onywGOhh/yERt8Qn
	 ujkFuXHkJWWchhVBOfGJGp5JL6fSD96S05nKU2G88UpYREzdiP7jpX1qdneH5lIxQA
	 vuMuaqHiYPGEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27B2C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171589154278.23695.7271850111157328622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74ec235eb4b91f0560e96f8dfdaac29cd919b041d363e427c61aafca59ef339
Date: Thu, 16 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715891542
