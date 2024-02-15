Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103311754B
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708015097; cv=none; b=WJpQXz7Xvu4CO+FtP4yH67GiQ2WHoBNZVhRrZelHuQNXGteGVaG0N0U3HVrJUWl+QxkP8Y/cyca8Gl9Jo/FA9GRq3pKRKupG9CGtqdkP11W6nHlQm1c6lVVUysuYO87PFppLBSsK7TDpsOwi/N8p18DF5iNbM8ymFaTecvNJYGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708015097; c=relaxed/simple;
	bh=2byZGGhtVq6ctizhje9JSnv0EK6jq4rFUOCNtpJyyXI=;
	h=To:Subject:From:Message-Id:Date; b=WHEVLAgR+cgnsrjaBmg/74KeC5brWJMnYDRICrz3Tgxz+Zt4LJdVFK6Rny3EApssGS3Ag3fpKwClyN5A2nrMzvhKeUnsXHmrZvA5aFjiSB23FE44PFfDDqjrO+P+upfZL/I0IN4s29QVcVJUxeYYrAMy15H1SI2MXCLClHZnAIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfsL5YVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfsL5YVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8534EC433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708015096;
	bh=2byZGGhtVq6ctizhje9JSnv0EK6jq4rFUOCNtpJyyXI=;
	h=To:Subject:From:Date:From;
	b=dfsL5YVoDLlB8LOk7dgQkchbkEJj6Sk2f+q7Y/fGQakDiveMq2ohQok/o8s/dAxac
	 YS1ijMTsxK6WPuqUWqtL4xmGi8M38xKqYHhdGXFQ/OIiF0vdM+Ew0eg1O8Iws6blp+
	 kFAxXTGim5SQltV+BPGU0L8r+81vu/kZOBx1gR3FFLGgpGixozLUfF5bB8cqzKYlZd
	 A+Oe7inOFPq+8HWkv/NIMaYAs2IAEMoo2ig+bJUSkL67A3Ig+FDcfyyaDdkugmP2Xy
	 Cn8SI26xyky2LPgKR1CIYrZFBOKO2gamXeEgHVmjTXJRxgsQgWTlir3oDraufbkuqR
	 WQpJgSwV2o+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6868EC4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170801509641.18583.678805439104418012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339aac647c4bd7e8e7cf9c6daf459ea94220f0c2794cc65d03b8bb58ff628090
Date: Thu, 15 Feb 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708015096
