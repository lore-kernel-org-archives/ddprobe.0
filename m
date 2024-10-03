Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6D93EA69
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727943954; cv=none; b=TGqpTyhF+M4Mr4eFw7Py7KG9ggMijU/T5odgBT4mi0erGxlQi41vwIQpQ3hMszww28HkO1fsgJHfRrfivyhddIJ0HXU5LZW/c1EVGL6QI2LUkYqLVmuu9/7R+x+ZYZplWLx1nJNudKtTK6xojoj9FCOWVqr3zQ4X7bYfwqdPRp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727943954; c=relaxed/simple;
	bh=agK+AyF7ga5rgEz/S2wBBaYGd+DU0b8eFCZ6aAl6MdM=;
	h=To:Subject:From:Message-Id:Date; b=mvLJfvD4Mlp+0j0lYSEmh1/tcTQ5GOZrMjfGVmX5ZUEF5Nt/3rmcLtgw0++/TRnRa2SbM8yBPDyac0zgYuhEmySZZQxFweidAFw8n9gk4zz0+TMZWvqVnaxBKBpOSboEq2I1kCjJGtfjiC775yOKoiqvkv7blW7v3Y93Y2qvtq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peOW0UIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peOW0UIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6438C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727943953;
	bh=agK+AyF7ga5rgEz/S2wBBaYGd+DU0b8eFCZ6aAl6MdM=;
	h=To:Subject:From:Date:From;
	b=peOW0UIkNKlL40ItjTBHeCtd4xZMubtMU8n6dobq14DYdkACX9DjRATMToE1ugg8V
	 QirK3gP1zXzGjceD/PdflM2Brd/hGYvj75zfeFnusYirgKXkO1lOxFHPFwQ29Ey2Bk
	 iDm8BbRCpV/aFJMATtPPklWGj8BYqEyaySP/yX4l/oI4tgOY5C7sksQQy337R7D9jS
	 7faNSU0V342m5T84Mc6TwKIdg4hLyeQ1uL0htARMMn02MKchX487zs1T3YAAM1w24Q
	 6iOD9xZuuhnlR8XPf+hZAHq7keSVofUhHwKsg0YKTeL9VEctlMhJPJzqmxHzqK4a9Q
	 iPH5CNzsjMurQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0FFCF856E
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794395364.14136.13789287711119646568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f87257ed21a7214cf1e277ca5396230107f093aacf9298ee2e216990cf62d6dd
Date: Thu, 03 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727943953
