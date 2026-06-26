Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837563F8ECA
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782490714; cv=none; b=Rzk9uY/Wk5eEfn2bXGtfcXeVCe/wnBofJ3DTrccX6s0Bhv4gvIsV2YgcXTx7mgTP1Xyk5z8Zk2apsHQPfKPT5cD5uZ26zc2g98uV3TbhyCSSpdlOj4cnNbqJISKsVybZgwezKsX58CiFjzG5ns7px88u+JK9W0W+DbHuxi/j2vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782490714; c=relaxed/simple;
	bh=735+qXmB1uorRCjhvBmueCU6ucIyNxYMdVzYiSgzeVA=;
	h=To:Subject:From:Message-Id:Date; b=PxuFOZlFRbAbIv6qAP11UNlOHOhOEILs/NgdP2Fg5IOR7No6RES48MpKFZJ3Dlh+zSrhA1LzfkW/Vm14zKBHO3008vR/rTovvxivEnfKoqgVenEvkVGttoxR1nByHbC+PDHMAo2YxA7uBS60hfMaSOkw8DeeIbdwZteXONJZ96M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWq/zwWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWq/zwWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB077C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782490714;
	bh=735+qXmB1uorRCjhvBmueCU6ucIyNxYMdVzYiSgzeVA=;
	h=To:Subject:From:Date:From;
	b=OWq/zwWEH9aGmI1uqGLe+j5nTFk30hRbAsZrqBBgOtmWwmTKBzU//IHgDntpRZlVE
	 sqc1Fc8owlKttytyR7bc0RdQzWAgAXu5n6x7n7RsDJREeBETkEXnr7e70JQdoje/g6
	 iUCgEwOx5rqTd/NHgMlMzcTmImlDt7EN/M75OoGhLFVNLhO1D9uW3bOo1CvfuIWPop
	 KEbOPellnekZ0BdJWeOCFw85J/VGw5ye4JygBLNBtWK4MT6b/V6LDZRToPFE3qwQLX
	 yPBsfkbHYKEU6WpPlLEXSUvxbDpk8O7Whk7qrJTHJCYqPH85NzNjzLyrbSZZ2fWHua
	 epojCfx1yumLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86A2C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249071372.27072.16664933749908392306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2d3b38e28623588f5a81951b05d565e400e8a449f787cddf4e8605821bdf0e
Date: Fri, 26 Jun 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782490713
