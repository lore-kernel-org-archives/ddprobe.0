Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EC4101E2
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716500603; cv=none; b=HENomnfz3ZOHKiJhOlFdn/JGf8YpXyC0iq1UwNMtSxLlFq3g91+FOMZFuJ27mjVb2+5F0OBEJ1iAfcftX1Z9h0NOVjhRa4oKuYGij2UmsDMvLxcitHgGIGhHaqxHbB5i9ywwtjuDaWdtDHOzM9wk8GR7BjJukPH7aKKEECzhlcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716500603; c=relaxed/simple;
	bh=VpQNPMe/JgeKfRtHFLcTzVvKeySVQ6pxBzvZBoJdaR8=;
	h=To:Subject:From:Message-Id:Date; b=Av2XtOaDg6ttRGqfG59qFJwG9YRjYLG0mpbCwX/KUIERL4a4XeWkcO7fv4ZqEbfB1OVbrLqYY5n5YmI+LPDHFrgCes+s77ZVCtq8MWyBxux0nR3DmL7TYyJM+pcWpwXr8wuK1nJMSNjx9b6RK5tH/9zTUGhGMBilMsRQ56C+RCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkVk/aRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkVk/aRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95CEC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716500602;
	bh=VpQNPMe/JgeKfRtHFLcTzVvKeySVQ6pxBzvZBoJdaR8=;
	h=To:Subject:From:Date:From;
	b=NkVk/aRl9y6deM8LNYTQTQfxuv38vGR8sAXZqsiybz375TWv0p/9occC/GosfWlwd
	 DmjYhM9fVeuIfog5d92DS3l8Fsv0uBRq/CnC7vFYgTGnIWUYk55koFWBLkbWSd26Z4
	 xJxNvAa3BQJlC53H8LMisUIePjx2G8qyMt2K08yb3Fjs1cquYTFStlkhOD5bpsJxXZ
	 2hpRtRvRsNCLR4BwP852/+9LffoK6xBu4SaLt7M5hwQZO8UN/p1X9ww2oRjKhPJdhZ
	 SDqp2R+94RP+dUNvVjBz6AhMySHgv+22FmDXVe0L/x48yf+jRSFv+BmCBsUGbQRY+7
	 Iln0aSA1FZbLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52FDC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171650060280.30941.4149848971945530019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee1c1276a3026ef28ece5ea985aff431477f9857095ff238239b1c96e0f0094
Date: Thu, 23 May 2024 21:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716500602
