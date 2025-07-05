Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403831C84A5
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751730594; cv=none; b=kJlODHSipe0GaHrnkAFVJt8J0h7/ND4vUwCFf8YIW/cGMvRy23QI0xycLiYJk4AT7lA4ANUAiOjXhC/+Gr6VXocxJt9WCczsBC88wjtQr9iqMSVkuo78MeOR/V0ZCD3axL9clwIFDu/vpsnUc3sn7Gi8sbaUoNwGx8KM0qYaWW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751730594; c=relaxed/simple;
	bh=C/5tR+WjibfwSJzwzuxKn3CUu36/0aVgMt1Ts1XGv7I=;
	h=To:Subject:From:Message-Id:Date; b=mxlPvTtvpDwt+QI32Jq1CDdaBKA7rL+xqSCt64e/Bf2KJQg+HYDnRiZmc/MJZLCxUDYDpZt6MZx/zyt4vsruUsbh6Emo4cG0UaiC89LwXohXz1fqa8TTyc6JAlQ86OAJ6rshAUUe36z/MfwHCdDgF1pWcU/AIAXqTcqj6CopDt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WN2Zy4V3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WN2Zy4V3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DAAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751730593;
	bh=C/5tR+WjibfwSJzwzuxKn3CUu36/0aVgMt1Ts1XGv7I=;
	h=To:Subject:From:Date:From;
	b=WN2Zy4V3ocWNxR94wkR1ESwaqbL7vxQV3b8aErVr0ekyGVZE7ATNTZZmaet/C8St1
	 L/pwHS2nMCBPmMKgsLt4XmbJ2hYCMIlAABkf93fRHCU2DP36YkgWcCUO/7yntO3MLU
	 aRQ4/Y5ex/042LSoOIZB/JLz9FStbjw+ToKkiip9lBRMMaA7xnEjThm/a7hxbwX/MJ
	 7BSuIt5rcxL1TIbJDZCag7v4ITuxgCnaeoYQ2/uxOtQ3oz8lBmkS/RRT4ATd+TYmG9
	 4G0NWiPufp4qSx/32T2b+S7TaaQdMHXNFmj3snCI+yCrT4/271WYscLglkRQo9alUC
	 PPZhmz2NuF8RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F1FC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173059357.2565.12738852105033746330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe14abc76378260d2d4427aee0ff322c65dbfbc085f38278948339532010858b
Date: Sat, 05 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751730593
