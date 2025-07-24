Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C271DFCE
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753319394; cv=none; b=gDylkdHtTQ+dD599KYjG/EheRgSutBgx/yg9yfPkxiRd6hOLQrylFDXIuETkGU0wNvAHGNHp5iKlXP4n7K0Kg8j1pcblMYPejJSadtUyTFwwdUIOO9RS533G5aEnbF7OcOZjR06Q+eCAZv6UQ+FLixVEQVVDgRnKNNRw5o7e7fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753319394; c=relaxed/simple;
	bh=rdTn74/PNAW2bCEVCaM09/RFCqyOSsng+beGSw+oJ1M=;
	h=To:Subject:From:Message-Id:Date; b=m+nDGrti5oGbRt+uFGv7374zxqI9g2n44fIdsldr3E+SR9E68SNsaxyjxxJLClUCo6Oms34WPuhV6tSFKM2mfrbHE5bq5hh6kD6OiAFbIRG3AyvEbVZCBbUoRb2DtiXxmt/7QP4lcmVlV+BMPfcCQdEZ66v1xKDgw0JTWy1tg94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMDHtIih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMDHtIih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753319393;
	bh=rdTn74/PNAW2bCEVCaM09/RFCqyOSsng+beGSw+oJ1M=;
	h=To:Subject:From:Date:From;
	b=LMDHtIihAQur1SiFS0OmKwRWs03spIyvGoVmzgyxeiTozvqc2pGYk5nPp9S9Imbrx
	 jLQkkmzBfcxMmHJRObK7QXR5JLNbOOBDiuM3i6B2h4PtpJh+CvhXmzLdsXoJeelC3G
	 h/fQZACqCor2NPDk64q/evlkVJaIrQv6CZom68m5R4IRpZ2vh1rbwXH9LsevExseUj
	 idJyX4mzjPL5nMWT9wkW79aO2bthpwV7aH8Gtjm0xY+wMVBkaulOiKRw8ZhAkVUYqS
	 NFtVIkHWWNhRC3hLj3nAK9OLMx+L79iK0XWKCG7Y11DUyYpipVsqOieS8Oxux0b/BC
	 yfkQxSg7UzcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91282C83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331939357.6209.4642603601028882301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b0d0a65d06069a7a397b7bd522b77b5dfbe1a1a290c7f76916539eafdc2e3a
Date: Thu, 24 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753319393
