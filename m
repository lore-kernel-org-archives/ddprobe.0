Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442AD188CCA
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732525554; cv=none; b=qadx/ZzGtjGvuG9Qdku8Ax4MymXP1S5+nUQgx/skgOxvUI08gyvNQiU2NXveAz/HMVo/dZjUpwBnRtsNEfogeP9ODIIEfkqBcZdSTPmjp8XMP2vus+UrrLmhsArQMOcCTk4COFxYXzuHVFBBgdMzPLxKttbGav2uZsCPlwkfcGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732525554; c=relaxed/simple;
	bh=ZzAQ4j6ZBg4xPskqJ8zG7jL0zIYlTSavYDwxMVYjBcI=;
	h=To:Subject:From:Message-Id:Date; b=oARu21+waa7Dx7JZjkRFUa276UQcC6sTLMXZDAO9Pjc6iQeSoiuQWs30NTtcUKP44R6MkggZkpZf3FpzpkaWIg1/81s0jDiydD6AXelDW6HYHdEPHG6eSKMZqvANAgYmAmEPTegNv/NJAWB6GsfTVtzFdCWf8wSSebr0zdp3WrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDW5CKXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDW5CKXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CECC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732525553;
	bh=ZzAQ4j6ZBg4xPskqJ8zG7jL0zIYlTSavYDwxMVYjBcI=;
	h=To:Subject:From:Date:From;
	b=EDW5CKXb3oK7zibvrIr8jLrjdSqcuO5flH6ursV77Ge7SG6pLoO8TANfi677GqGq2
	 yA+goFIBUGUykoIHkJz1eda0U194+oNga6Su1WyMF5f51nQ9PpMoHA1g6x/3yGpm2X
	 qEtUW13Iw4CVueVKilK5J0JErDu7wEccStIk2TDE6IqdfoBtSYpS6hKwcYvCTFfE+4
	 lrgyP7xMMcwJRginnmwkG5qEZdrqn1ZDymiebefYlA8YAQTVw65VziCpnFFqDzW5s/
	 9iigD+rtxfgOUctoZTd8h4UDgh0IDLqt3GntLIB347hzpdhp1jMe6yuBXFUGTiJGFf
	 mNLBKBgrxVWSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98998D3B7F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173252555361.11734.17859897574010354572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcad42b363ef1fc921c7b069458ef5701e7fec9d2766aee7e14c7a1c80aba112
Date: Mon, 25 Nov 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732525553
