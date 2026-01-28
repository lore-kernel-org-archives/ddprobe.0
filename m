Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143E71CBEB9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769563434; cv=none; b=sO4Ba6Oy47JJdj5AVxGFg4v6GEPu19lKRGLCUHc87G1I9Q0vpxePPzlCMzwmsfEfPUdtJU1nU/reNv1csjrP1T7Vj/DrBMHuNeD8uOG7PtmYqF9DkTDa/a80wSjeAeePwon3fj9at/t9gWcz8vDYAaEwNk9ERXt1ZLkKI6xZKnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769563434; c=relaxed/simple;
	bh=zJSX/cDMt+IGX0JMNuzYulUlkE8MfRutM3IYwRWcOnE=;
	h=To:Subject:From:Message-Id:Date; b=p7NhRvxlrNu3HbD3gmdwPpoeYFos/ozJMh2SMl5aS5Vg3CI8Np842Pu132yRF3dpbC2APcHx+v+SB+XBwTIDS7sfTBSfnSdDpEUvk5IH/vuivPQXELd9QfVgfdDhBmdLajwpxRPZqOb0tuTWe/216dFMD6sH/iSi41WNllWqflM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfzv785r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfzv785r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C33C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769563433;
	bh=zJSX/cDMt+IGX0JMNuzYulUlkE8MfRutM3IYwRWcOnE=;
	h=To:Subject:From:Date:From;
	b=qfzv785rVR9n3m2tyHA0wo4JlnsXjNsBRPQpXM/ky9puoBxv8qkEjNkIj4jb7gzir
	 b0g5r0Zkaw3oTFpOvFUKoBhuJR+MDmOqOyl7tGZNuaf/xg6dooBMAEF06SoEY1Vcf7
	 Xdr4DAepw9p1FXpxo5MfvflipJe/eA5sEUGpZ0ZywlgQ+xSQrcaGoOJ/3BUqHXStP9
	 9P35hrQpHeQCb3XLaO8HB+1oHOTJdFzxAQRWv45nAnv/oNXg94xG5TA8VrofhBK5SH
	 m5A7q+9H/YSJxXcarPO/N6ey+4uHXNWsO/MG7zroIO3j13rpRmPXbCtby02bUwhC16
	 NO8P/qoKB9XAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90288D35664
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956343358.19758.15816504401477104754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ccdb63493c080d8bdb10823cf974bf4163c66ee3e01b3cd76ba7b38e6864f4
Date: Wed, 28 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769563433
