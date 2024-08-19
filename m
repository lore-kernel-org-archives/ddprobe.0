Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6CB10E0
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724048154; cv=none; b=gIunDWfNGDq2zzjqQJZbEJgtOJISeYlMOMbMfXJTCo1jfoGi7yGl1UEZUBFZ6lH6sqRa4UOj1GoGNj9nxcrwoGcAsdLytX1hnFb1Y+V470MLnS9DMr6WBtkskrnHFdLWflD1wEgYa/w4P+btSFHGM2bzteLBIt+QdK7O+RkQ2RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724048154; c=relaxed/simple;
	bh=w8NxfnNAqFzzoaHdDfUruFZUkUPk8a8/6icLmCDlAnw=;
	h=To:Subject:From:Message-Id:Date; b=jFYF4gTjAd7aMwv6UgHfpQEtHkGviN4XDY0cuBHd4BSjyfRMV7O1UUJd0yPlAfH4iZAYHzWtNLU5LzudbOQMqXf7zreJnHXdJrCVpyvQjRzfXSd54HBr9HhFWR/yqbbGOhZ9aO3fWXsAYlNgvDooFPcDkVEav3HSs5MjplhPH4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3DguMRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3DguMRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A7C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724048153;
	bh=w8NxfnNAqFzzoaHdDfUruFZUkUPk8a8/6icLmCDlAnw=;
	h=To:Subject:From:Date:From;
	b=o3DguMRyFH9Ta42ad7EfD/h/MuNkMb5Psd1IYwbNuXJo2+5XE4+XHcXOraInrY1tD
	 8f4kJijHSn9OVfdZrPVgokg/NdqDTKbbeP2rT4U4X3lRYiv+875MCd3E156zj0uAg3
	 sBMHp13KAbAImrccWm1Gbq0XmOr+oaj0jNSP3kfBWPw3Pn5Y2HFDZINEwyy8nMrxzO
	 DTEcEdyZgWZ/q7Blizo/VdNVCmt/UwyHJ14h1fHftGaJB6jhJAPTWVdT+e3R2CdAtG
	 hYgLBWBi5XkEcuV6sd4wxMtiZWR4JKH6YoqM0yQhgMi3iBUQuAVagIfgYFV3mbjqfA
	 3Nb4FGT1yuzLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9490AC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172404815360.31913.13863056007088781809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153f8a3587b34d8e05df82718489335992fe0dcc1e333669322b4f4dc00ac00f
Date: Mon, 19 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724048153
