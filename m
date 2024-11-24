Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261AF163
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732479954; cv=none; b=gDY2JvmbgiIOmeNS9K+ZkfC/HrOWOIfyMouGDoKHWlOAINo6rYzhet1SAp9WgqFlx/Q4qzuUJP5eZazQX9kkyCpma43/8DqirJpNawFS2cBWDEguaMxTleCA8dyHMjxQSvPbK6iYQa3xFtxTRBFuiSTZU9fDOSNHgZDIE2NTh9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732479954; c=relaxed/simple;
	bh=QruluwXiEpDYZImjVRfVkAKSFYr6jFQ0yrpSp/rHTtY=;
	h=To:Subject:From:Message-Id:Date; b=Rd4i6WAUnUq6yZCzfV5DTyUaUukg3h7s7TQiOgG0Ekl4CSMQIVz0xxnqYGmm1hq0EJI8pD23PYJsHEYcLDkyydyT7akxU8U9UbCOXGEVs9XBNng99qOcWp+gF9PONRw9aRA8nmDI4/bYrxELvxUnv7wyWeZD5HwdXtMZ4FLdiqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a614L0YN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a614L0YN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6172C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732479953;
	bh=QruluwXiEpDYZImjVRfVkAKSFYr6jFQ0yrpSp/rHTtY=;
	h=To:Subject:From:Date:From;
	b=a614L0YNwrHuDfK3S+XoF/Z1p54cav5Y4dfJSlZitrWOGdcjl+Q7fkFyQOeyAK8vp
	 QQlbR4rK0rfLxQtUmDv972hZ+bd4XVgmtRNhn+476PtCxWFViidVPlIDk9g2bmzoDj
	 WCfOpBb8/zqcTxcHG25n7lQUAxFQr3k+BUWmxt2IvRzaUCxw+jU8Bfu2U2mezqMLVd
	 NyKsa1IN5zxeDZnsHXc09tADJhLlZA5K2Upv4LandWmn3iKD09s7j8J/u9D+4Qaw5e
	 9V5WJ92PmhrpoJZtCf3t1oPd3aV5AJdKkO1wsgtkLcq70uVIo+eHCWyHNxWQfRsnNu
	 EM5IhUIkQPxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A57E6780A
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173247995359.12382.11760440077783304173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d13c3b232a13ec98fd2b01279805d31b09f44eeefb9921512fa3ace44b2489
Date: Sun, 24 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732479953
