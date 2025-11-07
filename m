Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8BE21CFF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762559994; cv=none; b=LRkejtWiTkIFnZyG1DT1SE0wIPoEYxSHZ9Kr+sJl8W2EGcQJVCC9H3ytb1TEOifjHeKZkKZDbJGv7hrcTlvIyt4EKXGSeS0e4gQq9C2BBCRjsiHEhJlfkrmD2caDUHw2MPXuzZCFQjuJkyQ4g9r30LOrw0HtgEruXigvwZ+Q+aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762559994; c=relaxed/simple;
	bh=37UAjYVfYAjVBeepw87uSZmo1CITWQ1nFF2+DWZyB9k=;
	h=To:Subject:From:Message-Id:Date; b=du/xMvlqna5LCimKHx5gRgRBDlvO/k6Np+PPTdUjeqUHmyqVeyumM8UMpxdYiz5O1zTaSm5V7xbIbPsiuxD/B7ZA73QtybR/bq9bMTYLjZRo1arTTutheGYhpxU1LZJqDB8hZPs+X71CwKd9Ki/QbDb9Cw3D19DBV01JonAtl88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwqVdnj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwqVdnj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1378C113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762559993;
	bh=37UAjYVfYAjVBeepw87uSZmo1CITWQ1nFF2+DWZyB9k=;
	h=To:Subject:From:Date:From;
	b=fwqVdnj4aE4HCS1qtp1xEvrYByzqusAhDKUoyRe81vZrJguUTqpNosj/scffMUK8V
	 kiGY+dAYlTsYx8ldQh5a5MKZKNQ9YbeaUbyu0N8sKg+KJ4lZHAl6BlSMjzquqAqTuy
	 q9SD8+jjp7Xw4Fh1wKbLl1GmnHHrklclSlY+c9/THsVGP/GE6owk3IeX8GjTIUdD1S
	 8mtvV8R7eX+pJ1402OV3QJ8j+k3TpQlazaGi9C6efKz1e5TnLKLOUPZuME8mMSB1E7
	 SROQBU+gfbxPbe1Npr5prGethVSXStXSpEAj8GPfQ7P/Y91UDuhaUjRx8JCyyBLpAn
	 mwz1nY1ba8tsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9563CCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255999358.19869.2835553645678323366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b84d0f4477f182d54d635c25d4b08e91af9acdebaeab7a724e1edce5c8000db
Date: Fri, 07 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762559993
