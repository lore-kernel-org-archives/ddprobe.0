Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CEF72616
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753027194; cv=none; b=NL7N7Zw/cTqsSnGRuk+0OaThYQDZuxBrzLFmAMY2Hr3CTLtIjEon1B7t0lCLgrudtng6enu4Bi4Y/ukXTfKolclKqwJMPQMg5TW2w10ihTyNldKnoef1j10xXT/w7nyZ4jhkQHH75xNJ6COsO1vhUi3Hmq5w2lOdAQdyHrStLwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753027194; c=relaxed/simple;
	bh=WT0Z1alRbnQHceFgjL1Hblu3NSWABGInhCPFat1wlfI=;
	h=To:Subject:From:Message-Id:Date; b=CxzLtg6sic8szE83gB3shLHetqs9I5hXf3O6fZhViE6vj9LB8m9gOaQ/s/gRREuNL11LLYhnvG095z4zY39nElsEqacMp/uO09lw6oCKPYZ96k7YQTX/IW1cKdQ1ikK5hwCXds8kGD+SOANDbYciM8oWylwihiSb0U+y513PY84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsZPjZiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsZPjZiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EE5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753027193;
	bh=WT0Z1alRbnQHceFgjL1Hblu3NSWABGInhCPFat1wlfI=;
	h=To:Subject:From:Date:From;
	b=SsZPjZiHGDHXJ39Oz+cE/67FuOB5g7fhGxrh1wR58KMXO82ld9vaZv9izN0xcq/HV
	 T5ULffUQZhAD/U90P0vVipY3IRvi+7FY2yLwW3HNsIjfeze3fAX5W7RI6gH4MqKPXY
	 BHg1utg4pc0bq/mlCui54v9I9V+okxUJTaH2yoWHVYElOiwAk3LXr3ntt4qh4HRgky
	 UgaOPl3Dld+4GbRMYhjEdGeX2B8kLUJohEo1JRnjW/gUPDfHC0BOnLPP/iibiW9dw/
	 p8D/HoYYasqP5V4ReYj4kE6mjLnQydhMpBtlYE1LY0rI7ByCHNXJPtle7MQVQKyR6T
	 6xm8qDIqV5OZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95294C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302719357.16835.9426816829934589777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ddbc996888c12b972553a4dd93484fc6a4db2d0a70cc6ef5ceccd721b03d22
Date: Sun, 20 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753027193
