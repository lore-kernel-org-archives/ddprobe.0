Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7DF261393
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771280694; cv=none; b=VO4SFW8/LDA77qHbIr1Ey8tPh3LCEyz2o851xxke2IrzAYkZVYxTRAEwAwac/IdoIVk7zaPqhRNT2kXCaYKadbcz0iT/8e5SuPV18mMJh9wsNkCbiWizjliI9kE6nA7KP4XjTPJFtP+FnarZ/lFGwwndJK/EnqJm8baMjT8r2Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771280694; c=relaxed/simple;
	bh=X2oopTY9eX1X4tVP3gWP+PXd3s8hp1RKviT2gAvm2l4=;
	h=To:Subject:From:Message-Id:Date; b=EZVxJKf9Y9GJiadQrcSQ4DiWU22ZxfLt2IqBYOBBBpY7Kwxs52o/y0iZelFlW8nx/quAv1Hbtn9hivobBVYgvHj2ULdCU53s1hy4a87ng1ZrfCaBtCPrV30BwXgwHoRTqzO65qZv5yXYDCVeZZSSnEXr7xSHS98+S4Xe85BE5jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hv6x1tHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hv6x1tHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ED5C19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771280693;
	bh=X2oopTY9eX1X4tVP3gWP+PXd3s8hp1RKviT2gAvm2l4=;
	h=To:Subject:From:Date:From;
	b=Hv6x1tHtr4fz/ItS/2l2XYftrc82k36MJTckHKQJyutP15ZPsnhzwdA6x6lRFkQTv
	 i9PYghrscvuAiKAq1B2wT1X00/XF6S6xZTzpFpGDSc0ndgyfJ6//Acu4jwlv+o49hg
	 URtlapJhwTka6a7ZE90jvdVUVNWPIk3MpvvHhJ3j+AZ+E46Tm3G190YwKweiCY6vzN
	 JkLPgCaa1sVsONrmbOv+Lg+jx/pCIprjvsBn7nhp3SKE1ssR7ze4gamaitXzFsx0Fh
	 ZLnxeVJYHEkoRu7JNvPuDaUi6/QjLYvKPjFpZ4Z2C67f8SpcP1DquoRGX580uav5xI
	 gRVpaaxkZU0oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A9E83840
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128069359.14323.15756113547171312043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fd6042734a6774ab361f5eccb4f91144fe215baf00747838512d839bd0734f
Date: Mon, 16 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771280693
