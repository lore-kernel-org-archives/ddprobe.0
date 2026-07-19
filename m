Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D6739E162
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784481514; cv=none; b=E33Gmw0IbLKzmUQEnxkWgzGfsptYOua1d7W2uqfWGan+i7QUIPcXP0f3KH+vAhY8qL/Z3bye6ilYGUg3uaJ7PD30H2syWIXsoOjTTnGo01YQ6dNhdK/oTO5YCEeL2NABMsPP6CPxT7a1272BOqQWiuoBElATcpjvygBoGJaXlNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784481514; c=relaxed/simple;
	bh=OavMjhCw2m6LPfCDrX1sZkpZoq5P4b02/MMzwmIFH6E=;
	h=To:Subject:From:Message-Id:Date; b=oikOiBG8rKav7ReROHw2tFAmrupHJWPN2aJMN//xk+0jmCB8M7Wil8cDH/9FHSXbL9q8M40STM/Ij04YHL0+0t33SokcJNf7C/aZdtoAsAhYwIN1oSuDsJzmjeT5yXqJ7GuOUGfQkzIi3eOxpYU9zMU34NyLfqKmD5x4DxgA8gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVxRz313; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVxRz313"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9B2C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784481513;
	bh=OavMjhCw2m6LPfCDrX1sZkpZoq5P4b02/MMzwmIFH6E=;
	h=To:Subject:From:Date:From;
	b=eVxRz313BqK8x87oVFbbfo+se16JVEwv9SO1A+sJqO7hIzTIe30gfi7qG94FDDAY1
	 ZKsB5Z8F8xoSH9+UA35KoEKwu33ZHGN3jMbnT+6JjCAJWpH6PKlbZ6LrUz3dm5xp1J
	 1ckIkxFcvCMMvlDcSIkUOXizB1+wu316t5DIk1bmrWMLDx4YztE2eGQjDj4GTdjAw5
	 +tdR1SDv+Nl8+LZL8qa0mAKk+GTvy92rIdDAUCzZbciZeHZjt6qyb7bROL/zvlgaQv
	 h/7u6v78Bo+kKLhMTE7KUHdPjH3WSe7+UA7vo3POqSqe6qVoakyIHwJ8iHF4i+Wmp0
	 ilTJX6AlWDvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFECBC4451B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448151369.17164.900912464653023409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8c37c2051339f40adaa4e038588fff4582ba376c1b7d9f10cdae283871a61e
Date: Sun, 19 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784481513
