Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6751A78283
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720688243; cv=none; b=nMukgqI7gKZjeGYwJcYU722zo7aoFPU5I+4f+fL89KdjFF06SfjhoMLgehIzBi6l3nL0WWOk2eW1m4RlZomARJHDBaGy89c/HkB4uCUQ6XlhLF1DH0QZ5oydDN+FcOCJ5Jr86kn5VQCn9cTMBHh3fo6faKy1H1MWHILUzX2g6R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720688243; c=relaxed/simple;
	bh=+4r652JsujkpLpg+hopLnjocJ/LHFSvrAkATDLcKTFc=;
	h=To:Subject:From:Message-Id:Date; b=deuDOxPtigt/z8xwwBZ6gIInWHF0sbgeHFgwfuBiLi9Z+rprLAx4lqlAgDBnoKF3eadH4dcWsaNgsTa/VJgi1fdGb235C18YcQU3k8ydNvr3s5hQbcR+kpLo2Lg5MOE4Ah3v7JnWWPDBSmJFHb9WgB6TwKwR5YBH9LvChHKqyPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GymuhCgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GymuhCgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE001C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720688243;
	bh=+4r652JsujkpLpg+hopLnjocJ/LHFSvrAkATDLcKTFc=;
	h=To:Subject:From:Date:From;
	b=GymuhCgXWzl9vgxUHybp1T2WxKVqvmS9ZwIDZ+LM54lxJmHTPZOC8fcMbAOLAivbN
	 HRdz7RVHHj5AUAsribhqRvdr21O38XDFOnEAlvcOs2HdLitLOvwg2d7ne6YV6zRH+H
	 m9Vw9UfmIpckV4V12tAr8K2H2dU8k5mI6nVdaTpcWZ6xiP6OgWeZP8cNpZork60NIC
	 Atb5vip9C4MXlp2hbQE1X41klBHZLAAYFNCh66DQpEzollZAwSxQVVc5ahyGBFIwnW
	 b4gjUvPVhfMjpMpssuk6WMBtr304re8OX8E+oz6xTWRqzoDZVMuZGMEilzNY0n4G7B
	 QQXAYt4W2fKpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D66F6C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068824286.29390.6169560578405378770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ecfbe228207d5b9c6c179a9360133e92210566facbdfca1e583f5f52fadf5c
Date: Thu, 11 Jul 2024 08:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720688242
