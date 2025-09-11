Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CF411CBA
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757571594; cv=none; b=mtd00FRko0fbQdUSFQQ5YzISrvGecU4VX3xPH+Q8zS8q02BUssXUCPI8l3bYF1k3Kzmh7DvAnmE/IFryvfb58k86uPDS05/10Oy1Rp294gl6fw8WSuWlnIW55SfMqL/8Ijy5rcR74M1l/QoHo4UhMc0JFiFi7qZn4sspR4eaEgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757571594; c=relaxed/simple;
	bh=DTvRATqElCzITWcodS9xo0JTq7mT8QjMeNeUlNooJY4=;
	h=To:Subject:From:Message-Id:Date; b=hZHe4N2taugeSVmXcHqeuixuGhiQRrZpA1jWoiy0r9yw33s8gP+3X3BzUb9UJIPezAQMAhYSksIKVJhVE6hDu7bKGSpyBECV3mmGpywtOX6xhzP/e98mSkuX7YfPgNrAWGbRPwaFF1pFRVUE+7ggbr9aAVRP04CsqbHPpCZULvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2cO2iRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2cO2iRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A49C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757571593;
	bh=DTvRATqElCzITWcodS9xo0JTq7mT8QjMeNeUlNooJY4=;
	h=To:Subject:From:Date:From;
	b=T2cO2iRsHX5+mAro5q68gEO4Mn71TuwqYPahFFT5+EjmQs4i01xsfvXlvFpSB38pK
	 kbJtAMUCFJKx9SVEYcJ6xRyoPYAKKtO/pUkBY3QtuMXkC+WlVpcGwcUDUB+f3l6ZSC
	 1BhPqLDxSmJ6MozxxYr/YHEtJNzNf0pAbXXm9UZko+VIXxt3Vx58cHWpZpkR7f7bdz
	 d1o2glGmN6h59PTxQ6mCM3wSE1rQ8Sc1u/akdWEe/0IhMzTCRQDdr7NWXozZKpyhAM
	 GP9sE+z66VGX49plKO5vMHqY7S/0T4002hZHaiJf6zpT6kBWY+k7tD/5XFax1b//XY
	 KNegN5c5AZ8XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F0CAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757159357.17562.18301555036459663264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c676fd7a2677b233e79cc1d60280c6f02a8d8c21d13940c8fd9f3a0d612a16ac
Date: Thu, 11 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757571593
