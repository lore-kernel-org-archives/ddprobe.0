Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195D12F619D
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768494834; cv=none; b=sWvXupEnxvOzmw6FYSHN7dmUJ0gVlQQBhRkXU9jjCv5b58iSvIjXBYoT+D6IvDZ5385E5JmkAH4pdSRwtHz152TCA7m5MYxcUy873BUGTXFDIQSLxOpcGFo5h2UDbWBh8YT26MUox0BlFxvJkU2GCcRS5PyLZ/fX+LyRoU/vDO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768494834; c=relaxed/simple;
	bh=IgbaioWLtrPVcHaJeWUXdwMuASxxMGwEVhPFSCwacUU=;
	h=To:Subject:From:Message-Id:Date; b=hbZIhdysLQAhotBl/RLdvWllR//XcFCuVwwJxAgAl2mqxebWpV2JM+UTMEJLN/e3M6/42R26RgXs6xwQFrSrMWjF2XXRVIwYauKEKjAvbmt9eI5nmOhucZ5gStSOGqqaTEI3qcINY1m9mTCBbarkCtAGtIp5mnEffh87weALfAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZffTzF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZffTzF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A446EC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768494833;
	bh=IgbaioWLtrPVcHaJeWUXdwMuASxxMGwEVhPFSCwacUU=;
	h=To:Subject:From:Date:From;
	b=DZffTzF2FpayWC9tD4H4xWmhYwY8qNhye3DqtUIpLsFryv8sT03HgMFAyGHSsh0nG
	 j6dwZRLbVlUi7ABbBptaDJ/Md+2ja/8+9dXs7IOIaVVG1sTT3+jNyMR/onXribYYXg
	 iYyv3cVN1EdtfQo/vccFBzJnPUkDJeErX0FLwlZf/GOityn7/6q3C5g61unfBYVC+J
	 nkLzLAR56z6J3VPcPUyqAdAgtJOJPsKWdHn/IVKmnmtFHKkWIWl1Imj/vVt05XKAb3
	 Xg4nO1QxXdlKK4V1hMMNwGD8G2z3y5ceufAaPj2XhwbZ/YTN/HELSH+JnOpcH9/uTA
	 70YjKwlY87GUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94376D44C7A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849483359.23866.2515712286733038441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28a80998e3a90e7bbf3bac73eb9ba74d04f800eb316a920084fb43f8859bc4f
Date: Thu, 15 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768494833
