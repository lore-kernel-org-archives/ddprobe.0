Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181CE30AD13
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767643434; cv=none; b=DjQbP8QlGvLMybIFJmhmvTsAknOMNwfCEY/v1PJcN3DAg7JU7L/kCCTTxkm7Fdwl8QG88GDSlvIMVW04ycLu/SakHC8EgEswchLvLbFJC48h89PD1SJKMcsx7aRqHn/vZmleQSDD+myxKh6aXKJ9XdCZOe7qww3k1zVwkME3znc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767643434; c=relaxed/simple;
	bh=9zZL9vVpG7aJI+DZA4TdQ1POgR77MSEymNulEPr/B50=;
	h=To:Subject:From:Message-Id:Date; b=XWpnSGljr0BfuRfGrzzzTNLXf29Ykj8lhOtQ5VBmP+hwITj1yeWU8J1nWOfQAZr4b0Nn0b41wqs95bGVGHtvs7Hn9mB0twElZuElF5frB3ZvIM2uJa7zpvo6duSZKcC/oJ1JYrPys4JB7AnONAAIPs/URAxkPlQ1yEav9z+/mLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GN6WIKR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GN6WIKR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0542C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767643433;
	bh=9zZL9vVpG7aJI+DZA4TdQ1POgR77MSEymNulEPr/B50=;
	h=To:Subject:From:Date:From;
	b=GN6WIKR/R8Qx7L3YjcBUWTxue8TzTIL4mP0c3HKVrBiW0VrA4Iz90I/ijyS95Z64o
	 AGR35DqZQknweBNjXM5GdaZx+n10CvJ2p+JQ7MwV2XE9BP1DFD5mu0vXDcOxXZCpg0
	 /KpCKBP6uobe78N6SvBAMgoiAUYgxajifyQcrDJm7fJeOAbuJwbc+rR0iOBcEN8weD
	 xxR532X7I+FYwLXjkXeprDYW1ZjYeQLBLz/XJwjZMhdcPe5awLdS1fK5V2yZEGd2kX
	 0ursUOLEXy4EqtVrcKJhgHCVHA5h0sqSSp46lhlDWH4per84UGBq51vcSklqN6bfc9
	 BsBGw4Rtjan5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF70CA601E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764343357.25333.6491418160975803919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7229f22d9c3fe00d84b401f090ddf53b86ece1fa7c21e3afa2d5a2681ebce8a5
Date: Mon, 05 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767643433
