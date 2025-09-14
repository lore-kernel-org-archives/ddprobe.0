Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0978022B8C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757851794; cv=none; b=YmBsJO5YwegzjANrBSdWXHhSMZyzJxXqhQ42bAVlsPahOfjbyu7NU2U9UYdTiF+wH5dA2xknTH31bLj8I8IklFmesLb1mKiQeTPYhxOHxd2qiGt3h4uiV0kU9EWJtuuhL02CEFC/8AMXk5BDQN+8D3JPBUh3jCBcw8xgUexynmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757851794; c=relaxed/simple;
	bh=V1JQcUcW1mmV5XshQBo7aZ3UwYbz/RoAvE0kcjINaBc=;
	h=To:Subject:From:Message-Id:Date; b=DAGs+kK7HzgYl49gUzXTZUsGOU5tqE+8FGwRGS+f6LIiqi64WuP7QualtapzoF/dVe7PYuuFVilX095pzjDZYGdtUu0I+qoDy66SreQ5WoVk0ZNyIImiD8iSoRpZkl4iLNFtYRFQWW2fqpt6ilTDAPysn2mDPrJkBcPsw7OwhSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oS7qviH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oS7qviH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0830C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757851793;
	bh=V1JQcUcW1mmV5XshQBo7aZ3UwYbz/RoAvE0kcjINaBc=;
	h=To:Subject:From:Date:From;
	b=oS7qviH0YJVQqWY3ZEM/nxEV8cdF8TkYCpCoL1DT5YC1TKL6fNhXvmqtu+OKI/CqP
	 u/Pt4JU0oDBTcRlqI0FVV2zsjXLd30uFQsw2lMFZL3Z8YB+aUUSQtk1vXXlaZWrM6/
	 ZVCmZ9wVaBZGTY1clR0g0wtY+L3JbHfeYPrsqhyLWkXjKjtuR2rcH2sf/N8Y4/OHPt
	 hra4giq3EZ94+gWo3A1Ug4xa5f48m+7MB1lzKP6v1AJmzuWbKseC+FigNsbE3CoTJK
	 2NUICznCCjmZlnx7ou0iDvicbz6Xc0a/z+f1VKuehQQdX3tzA75qoYCev820HDiagj
	 DMNcp1BIk7w6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BCCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785179357.18124.16848536116008458715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d19d418e848e67ac1d72b07e98e77aeb54298ba1ccc47b5578490bf28b21256
Date: Sun, 14 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757851793
