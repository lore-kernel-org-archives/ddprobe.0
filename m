Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239302F363F
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779299434; cv=none; b=VSpUReOTSwihIu+RCaDnjkWXuRMegmqEu9cnNi4596LtBsnr0LE72MyRAwCt0zKmf+djPmxU+UZWhxKkbX8RRAqhxf+Evm14oZG2sA5RGfMmu3/JDhxTZPMTMecXW+VeVGX6Y6Sf8zcT1qaLgvC/jLDlZYGbB5Ylwe2wRrRaqKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779299434; c=relaxed/simple;
	bh=2QIDHX/QA16uLmYZfFIBGc78Wes2KRFVCd8V4OehbG8=;
	h=To:Subject:From:Message-Id:Date; b=s4CAQMzlE6mPcsop+y6WDECzx/QLq9QK9hCpjs6nxgQQBa8ygPLhaFFJ4GfnSJl63KQ06tVkyD+uhoIABwp2Kz2vTGQmCGVh+Gh+G4XMREex3o3FLzRJ77nOoCBUCBOZZVLL/Q1kEbr0rMIl6BmKsdk6grMmW2cn8+W8cLXayew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IguZBjlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IguZBjlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B3AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779299433;
	bh=2QIDHX/QA16uLmYZfFIBGc78Wes2KRFVCd8V4OehbG8=;
	h=To:Subject:From:Date:From;
	b=IguZBjlSZWuO41UiL74ihId9+vQcOxhstBZjS9ICY9GySEn34SCMcPkAvi4YS353A
	 ZrTFjJzM0pVmXlqmyMQ5YQX8LnkXoLqTsCWNKGSayPofZXVmX0z1Al7eNy/YeJEqS8
	 yxE/UXrf0EOygEcCHAW+bDlJF5T5YO2uUTVKxo4qZkEYdyBJAVr4HTRuFhQp1djsb/
	 GfqgPmtmW9r/+L41wsFImfo86HlM9gyM2P3lwD+6udsExvKqOUnbUsm1llyrn56BZS
	 4UyfFpWWvYZVePIBYREu0attyl1l38aUq5x2EhkTtzDgmOLKjcdPB1qZncK7cXJVms
	 CdiNbDBz9v2hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD176CD5BA4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929943369.3421.760483990558384617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e282292c43319234d218bf12ffc63e50e6f399ad699e634ec563a3d27a641526
Date: Wed, 20 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779299433
