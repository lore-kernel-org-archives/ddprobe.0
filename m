Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47424C8E
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751033393; cv=none; b=mBP7M/QZPy2UK6juJjPib0v6bMSnCZ8wymZNqszrom6mfLHBkqY7nIq/kNl2fsWF3hiDLMsPtW9yE47jmIPh9v92h32KOqJAUYSndZYIhFry36BHo6wv4brmp9rjSbbC/krmISjDhtT0EZIN7/e3OvFAwC0ruMLw0ms4jntFMvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751033393; c=relaxed/simple;
	bh=r7JzlyVEXERFIYbO8OuncCELQPr3RXCBvRxcYjldqTM=;
	h=To:Subject:From:Message-Id:Date; b=VMcWPrY6XG4JeBAzWYC+S5fqa+IVFBBycKAkrl1E0ZqlpSOu272ZbXfoyokNdqSrh1UmaZrO9fsKe7FL70o7BKQLlV+DmTQd/Xv4GU6yeB5vnDY88oEnxEazxweejB6G75vodshb+hhxIWhfMXeuER0ypMPHkfCY2/1cJF15iRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgwQxX4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgwQxX4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8648C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751033393;
	bh=r7JzlyVEXERFIYbO8OuncCELQPr3RXCBvRxcYjldqTM=;
	h=To:Subject:From:Date:From;
	b=ZgwQxX4pUKHHGRQkNMfoI8l//9sB+cdm2DEZ+n6TJaG2v3sTSAnTHaVamFYOzfg3w
	 zb+lDZEpd9M0nI4y/a2X1F2HwozD97BacEc7fi9WUJKsRYJV3/gko/YaX9gfhGawZJ
	 Vwcsuzexk6TqFqM/bJ63x6ooCIr7/h2FeAnWAIeKCuNk4XL33iUKCxQYWfCZSEJe6W
	 L3b8qZbBJHq2EFheVoLiu5nullwunvyNisN0ELlylKTvBRcOZphCaUvm1nDa0EFgKF
	 NbDtfF05ZJWl5BmVHxiy5q7G2fFXFgtPLbbSs9RnXsvmVBhW9nFrL0qUrucFFj1GMK
	 0JE7BIfCeVcHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A25C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103339359.8673.11150200643080957598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ed2d796f1fd56d2ade2877f25bcc5095a0826814befcfc62a6bd0a70976aad
Date: Fri, 27 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751033393
