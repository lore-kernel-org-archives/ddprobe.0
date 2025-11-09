Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBDA2D4816
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762681194; cv=none; b=oX/Gdp/6vLJsAVuYNtsL3m6+KXqizFpT4XqGh8zypGUBMg6pr+U8gNx4TOs9LhrPBwYWAfQxQ4LUy2S/d3Yx/vcuXzjCgemvjvzq6JEHodv4XhaU+wXWznpktsaKXgKzzuNp2jvxytIJJa3xTgdpcBLxBt2DenlTYZ2QGXpRabo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762681194; c=relaxed/simple;
	bh=hFPi3jCF2WHEjP7fq5m1UMGDmlG4fY/FqOEBk0LyKeg=;
	h=To:Subject:From:Message-Id:Date; b=V4htP8o8+BB1nWg3MrxX/wfHbT8XcOfNtINiVcYqc3KB+QVx3vQWvSceYTboYZGKKIoguZMKOtqMzkhR5IoLgfqF28/6Qo1NlaEhvgjEcBGUGao4sAh1xVGQdoLE7j/2SxcjRmgtivT0ygExZWixpHwzoqH22MYLEMb+qPKqBOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vENY+A+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vENY+A+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B9C4C19421
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762681193;
	bh=hFPi3jCF2WHEjP7fq5m1UMGDmlG4fY/FqOEBk0LyKeg=;
	h=To:Subject:From:Date:From;
	b=vENY+A+TgNtdQlwsW7SiWFWhZhsVuiX4dEp2xZMgdH2lSo1eEWPXOeuRO6epER5gk
	 Z2W883kap+JrtH7X1hhlks1zSpzQe3SQb2Xr2RGvmboQev3NXc+Vt7zQcCS/GnlWiJ
	 whDOwEaZY1aW0FcX5IonLxdoMjwLQbSrE4DOuxW5cheuXuAbXCoXGaLLdOkn5AAzaK
	 RP52ivm3yyaq1g3nCpwo/rzbSZ7PB2j3obPR0196fAs2Icsx2kC7sZFv8xtn9MtHlF
	 y7FRR3gcAQ6xEJNO9aieT3JFppL0rOUNYR6CJsi+cq4nP9EBRTIv+S6B85W7WWWLoC
	 aBHhN/glib8HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9100ACCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268119358.2405.8746739339916898151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25810c6f45758e58955cab17ebce15d3cd4c7beb6d2c37f21f91cd9c10383218
Date: Sun, 09 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762681193
