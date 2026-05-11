Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3756C17A309
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778462434; cv=none; b=V0Zo6p0ZZ7j/wuzsa0yubAi7vUcelwYLaoQKF8cqDwXd0W8iD8wn7d4ij2cDOHYOIGtwZxtU/bPhCKEUUU5alNQ1lYYFzniv2O7GezgoisRv8FLX8+CD+w1gqAIlofYaqSRIs86KplwBAnpXCaZiTof8JuQjU3S38VKqsXlulMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778462434; c=relaxed/simple;
	bh=u8xllzSojd/ygVshLWwRgCyFbh6kddRUI7lV/eosbEc=;
	h=To:Subject:From:Message-Id:Date; b=VLa7G+QnWZa+/xpNPOvTMnldg17iUQ+rOL126mh+ITC4CzVB7D3f8decBPxIdLWdTdt9h8krG+SvSK8zgH1YV/LITYxTow9IOLT0jIlmev7zqJKTJ47m07qgs+eH37fqz11lLOs1tTYRky6V7D+5XmX0CkQHtBnIIsDpC91JdtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/GiZPju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/GiZPju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29B7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778462433;
	bh=u8xllzSojd/ygVshLWwRgCyFbh6kddRUI7lV/eosbEc=;
	h=To:Subject:From:Date:From;
	b=L/GiZPju9F9QKesu9FtUcv0LRM4LIBQxegB+4wyelXbNdyBDI7D4WmyXbteqGLK63
	 JD5lhcZg/mljt4ljwNjKIzv7NeG9pMHLqSVFjEGPOwa7ciyP7jfV6QwAn5xQolgZuw
	 Lh2UGfu8a6IdxmpLveZqC8Pi4KMw8QAxbCloZEQZnPn0apRcmvn6S9iukUI6c9SZ33
	 /zJRsNqxwrBFWLeTJyqx77cVF9ibXilPH8JDZRuF4rPCUzbgS7I2OwEVSzNRSZcQtd
	 n/cE464BzSElMpuBmgxJlV7tPfN8gn0Lo98krPdfrnoyX2/S/ya56KeMWDXnnAArvI
	 oiK++6MTtNoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7D7CD37B2
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846243368.18615.8989881201485460812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6842dbf118dd11f4d525c90c3303bc7dc0e3e07b95cb696c9c6220e47525696
Date: Mon, 11 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778462433
