Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224A649B1E2
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788354034; cv=none; b=mAJR/19VWG86lRVcphdLh8J7SM2twGxTKMwCoEQ0QTP6q6LrVE67kq65Rh8h/81r2SzV4q4WphKxyzeFE1vvHP78akSxfDxY1DQVCzHZKNzIrTDHrU8GBy96U3BliIA6qJttXv6Lu/YMt5kV/GGbVVqCtG5TD3XQm07MOWIMjJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788354034; c=relaxed/simple;
	bh=zki9us6u0iQinfwj1MV6jJ+WMzF6nu05jjK5AB170Wg=;
	h=To:Subject:From:Message-Id:Date; b=FJXGiIkCCLem5B03B54f9hrGMTLohtAgyMMz0um0xkA76MFX/u6WDh7KK3cHU4qqHtzxn0nkzqmP3+eS2xmF3s7McXIxoody5P446IcK0RBd+bEx5yhH4t62fe9y6wEmgZNJch2XAZUMXVcq1IvyIbZKDAo0kTk/WBFRLZVP2Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrpIlPBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrpIlPBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD798C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788354033;
	bh=zki9us6u0iQinfwj1MV6jJ+WMzF6nu05jjK5AB170Wg=;
	h=To:Subject:From:Date:From;
	b=IrpIlPBNH3KBWGe7j3Lv/7b8cDnIq1IUdsS50+J7PrEY9YhKs3THaSN+pbd1DfR0M
	 7Yt1tT8WEcUSq5W8blsoxJU/7kSNQe5ZkmFndsfGamYbHP8D32i5T2bn6o3woT6mNG
	 UDLIQd8GXviRhWxWH25lIBK0cByyxpL4+xGOP9hjJ8tVktVsw3sliYLIpeSrtY6vzs
	 sEZvsghRFwefoPEig2w+0ngZcjTZpCIGaeLdjxxsl6Rzaj3PsdF2PNo6CA/7g1e+z3
	 WlSnVwTx/DV9suaO2sxyKr0X1nOUcBtdQbVz/GN2jOvAaBKtpLn+F4vDSGCJ6gVogk
	 5acubbdsIZDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA7C624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835403368.26969.10707050685122976806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141766ce617812813e3239e9e26d944957a75538d67924a463e02a56716727a6
Date: Wed, 02 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788354033
