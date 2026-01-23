Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3ED82F12D9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769174034; cv=none; b=O3HWShIUCF8QrBHdon6wL3C9g2cbrMWe1G3fa6dd2jq45QLYfwcItZHdkCV9CU9i+qtWQXO3YNMwLUKCPxc6bQvEK1/cNATLVOERGuArf2UhQ+ybBsYKNeH6hKdfvz9YkO0clciebtObDmXS//DC7DbcxGaKXcMvX1elnrggEMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769174034; c=relaxed/simple;
	bh=jZcsWju5QCO0aiX3WfF9yjUL+EfKNRfhFkqyBSUcbKA=;
	h=To:Subject:From:Message-Id:Date; b=ZKywwxpQoAiL1zIVQBui1S7sZhyRVhPenSwcWQZtl2BXrZIkmSpdCAfRrZv0duW+nB2iYpDrPg/KuVsJVxGLUGAY0ia75g9Pn7dh2Z5yXgcKpMInY02D9OLa0jPS33j2GqgTwDkGtBhD2NIv+jIv8+qx30q0TEzb+fJEj9h9DcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MALwwP/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MALwwP/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A706CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769174033;
	bh=jZcsWju5QCO0aiX3WfF9yjUL+EfKNRfhFkqyBSUcbKA=;
	h=To:Subject:From:Date:From;
	b=MALwwP/uMNmPtkW4W2uKm7BDXV+qWDkNdN2GMy/1fg03JczOr9z2f95MVrvOnWBUZ
	 WpcihrDEaBsODSs2vpwn5NLTQy62j6EJfYSOHxNFVeRl+E5pQMPacUMQiDif3DKwe5
	 +VmnrxUBZ7asaHwkVBDryQH4GSLPHIVwO/23SAr9SxxTcBEnTC6PqDq1fF9dmH90kb
	 mYhWBDPBnHIWPNy/Xaczmhd1QVV2vbC9WC28AAucl622oXc5QiPwCz3SjEY4gVrgzX
	 wxJYSqt27KBphAHo+2n4oCcQ3if25m/maqhnpBsB1kMh6vwCs9Yup4rQx8wuDnpws/
	 6BrTVt/dHdGIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94104D74EC5
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917403359.27189.271676814785928746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53a28c7503d4c8fac83997ee7301ad28ca6fefeae24c4cda5f4052d6234fdc7
Date: Fri, 23 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769174033
