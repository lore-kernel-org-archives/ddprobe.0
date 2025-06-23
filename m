Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269DC8F58
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750696194; cv=none; b=qs8dwfPA5HgaXQMt00tVc4xYOlMkYM+p7gr0zaWOWFRzNFJHMWJq55dWizrzMJuaI5U/J5SUkaEZqWgZBGpT30HiAvFY5VQWZuuZCTEgJUqa3pSFYk9ISlgZZEE8sS7ibyoGKVuG9tHDHdKGIcA5qYY3TDe2Q3tpkKswIkUQYaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750696194; c=relaxed/simple;
	bh=NcnQ+90S/yU3q2hz2RJFIAGYypMkn8IgVcFy6hAvylI=;
	h=To:Subject:From:Message-Id:Date; b=NYNZcssrgcX0NHwsFYwNckF3cBS2LNS+xqVpz7fmMzJPpyuzumwGpTyR4b4Qg676XWv8sGMq3LKkUvFCU3OHSAvOrD4tke7DYj6wWYqgOuJTZEjwe3LTtEBZxDf/hPEsoKIn08aMC5shjuTFE/esBoF9EiTZptycn0nLkiacOO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQTFALRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQTFALRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E8C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750696193;
	bh=NcnQ+90S/yU3q2hz2RJFIAGYypMkn8IgVcFy6hAvylI=;
	h=To:Subject:From:Date:From;
	b=RQTFALRNJyQodDVJRk263SHAQni/2GIbrT5eH/8alHWcevckxikquFZA7nRWNcULv
	 OUqru/3VRQKRQ+Qx5Z4ZTHvp9MrTeMJTaDa3/miJ9puc0IJCNVe0/34nqAlg3O1Xy1
	 cULWkfSVPrtMUGJCuORusDO2vuCYeL8ZnJupd6MWkQ5LM/lhD8Unr85hWr8nGelgmw
	 iIVf8ielX/MIJ20pz9SFVpmJ2sBjVaZY39eYoz0IzZUk38EwC/cUvEn/4OmCQXsCrG
	 kkzPMqSvh7DUwzg+UjAe1urOMfJheZQH5L1UQ30EuwjrfAgTmPR14HwEXT9W1k+Tdd
	 na1fm6AWfmNIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB4C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069619359.21155.8466917118863723164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864dedcf68c976bc728203220b99096818ed618ec7220e4ef07f31c147ae3634
Date: Mon, 23 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750696193
