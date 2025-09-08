Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293E61C54A9
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757307594; cv=none; b=iYA71nA8pVvmFecJWFF3e9iSFpv80g76J+6Gx07cbsD6p0EWRCT9yDO6fyZ4WngIlnoSuBsSLb3osE0eFhOYvnpqqDL3DJIwD00UMUESYxnqWxMKUkE+6InghZRHSKOvp2ZlfW4xdXiSvDsU8ZitD+9oz053gS5iGoEfPwrpjGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757307594; c=relaxed/simple;
	bh=Xa9d8kJv1xPzAfwrPq808z1lYm033/iAUXAleSAvoJY=;
	h=To:Subject:From:Message-Id:Date; b=ZnmCF4RpBd9WPots7bFw3MLpht9snlPX7UmSKM2Ry/+bMQMGh9NIwL/CZb8NnLlbQaXYkq2YfHYg7lHOPH0dmwnxzppyDENcuS2EplG2HJMtEhy/7gJVJJSn1cSKI6Al+hecningq7Zw7W3Camn0MQ+RsC2wfqZkA9ew4zdfC2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPngR0Qh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPngR0Qh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED16C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757307593;
	bh=Xa9d8kJv1xPzAfwrPq808z1lYm033/iAUXAleSAvoJY=;
	h=To:Subject:From:Date:From;
	b=iPngR0Qhryi3pFvmKyDvC5H4jJJMZU7Hu1YhvkqFNTYqFdcGbL78HpCsn7bGvk5Yl
	 TShZAOZE0gm/2daGESlBfwUJPdjemdHZdK7eoJHS0mKGEuHfSxFWNGnVr5Ajuw+aN6
	 FuzNXM22EFSx44YJdQygwUaXHP1HHK+wGyZNasVauZhEoAIG9m7h9XYtPN/Ya10KcW
	 rlcUHuZx0PQn5l6Hp8ntaPsVbZtzIynqQcgJVz/qD7tht2vU+LiDdvmVtiz0LdRm6I
	 xGayLcQWeA/UHcAjYFBMWlGFyXJU/eiUFT6xvGjr/Sl7zyScvQd5KgsLO5sLPs2Y54
	 Q9tIdNbMV0kBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9144ECA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730759357.16039.11357977426704358974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da4effe75b623417260559b9f3e0ca5b39a1175f7414cff02f8b33acee5a5a5
Date: Mon, 08 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757307593
