Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1153FE4
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745984994; cv=none; b=rxBkasc41DvMiExjRMRlstXOdbADLPCtTr8XMvrxfaoohWqumqLVpULVmcBzv+r1x7NiIuLiU3FABEE8GbLXGdcSOIx4IkmqqdtRKP8A8PLmCtCC3qk/Aw0X50OWsMgTTN/UwqO5YhJ+fdD0FkpC1hhhvc16e/fLG8Kf7GbyB9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745984994; c=relaxed/simple;
	bh=sqZQEj0newFxBZIr1/+1KeJeQTdizP4V0vOeoH0S6O4=;
	h=To:Subject:From:Message-Id:Date; b=KTNjCW1CujRxCsg/ESbXJEp1D6A1CfcPQ+zDTfPAFTwMvb+otvPNOyWs2MPANeocCjmDjwcx9cf8v2/jDpdyNkCbg50xgd+4uzmL6oLFpZtYWNoXTX82esFiyoAOfPZwjpXt05GzA6Jqv16IcCtGI11HGbMCXv/EAytSIR0kK7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVTJY2xN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVTJY2xN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66DFC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745984993;
	bh=sqZQEj0newFxBZIr1/+1KeJeQTdizP4V0vOeoH0S6O4=;
	h=To:Subject:From:Date:From;
	b=BVTJY2xN9Cm58M5KqlV/jNqq7fLmSCrVVe3Vxt0DDnpvoTfHTX51qmuZkn2aYLZHY
	 YS8lVvI/hF05hjYW3eZYRSE2J1tW/lGDSpIrrIudFWlBInYYxlPutzwKyCQ8/hw2zg
	 9iE0Kx1mZufHr3P74am1Rl7WbpgH/qOBpd25qqO9zxl4rbn2CW1EIwPdslxEBuASL6
	 l7fbpJ9C2Cf56z2tt8nClFV7tSJExlm1VTDMvpBWopy0Q46D/KHh+ZwYO7u0J34GQT
	 4M9c9FEEIzYkkB9Z5AyTPDwGrHHmF8+0FtbLrERq02Sl9AVhLJcOalmTaK55zKc7lb
	 Hi9uC1E6vg3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92627C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598499359.2997.1584859231118712112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17e1aa2e031155f2142b917db01a614f91ed5da9fa4660402741c44b59a4268
Date: Wed, 30 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745984993
