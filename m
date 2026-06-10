Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783A63FAE15
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781089534; cv=none; b=p9t3FA1NkdeZxTi42981ceqMtVZMoGz4O1sh99bnU32art6g+s4xypUynLNcU9MXzhIStkO+mxPMUXGnOHfEJ+xqJ6PY8qDnd4FRkgym2imtjwlKJjcf+gB/Q3erRUOxVYgecMHVmyYVl/t+MkZEXRQ/NGOjK3+4K+L0c9McTzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781089534; c=relaxed/simple;
	bh=EForq68Feyq0LokKAqkolSOwsnLhNk3GaRMfiyYTbAg=;
	h=To:Subject:From:Message-Id:Date; b=aoQcMojY0UNDq7RTzhEY3MogEqxeBoVLnd1qAUnXmcuhxW0zJz3w6gta14KpzaYm9HWTEBenelo15zusAxLRnjKGbP4SNROnUnZHAiWdFOFAugq8iD4cwwfQyPLMJmWPgNx/McXeKVdanS+6wwg+Z990yX3SxawgejUCr1TDKPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nM7n9HEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nM7n9HEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5269C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781089533;
	bh=EForq68Feyq0LokKAqkolSOwsnLhNk3GaRMfiyYTbAg=;
	h=To:Subject:From:Date:From;
	b=nM7n9HEAVOS+hoQshjvsZLno/cf4IUArBg5Y6gLIu5zituRal22L0I2/pQkfBvNEW
	 /Qg3EBcTfQ/hKO34gmc/NECJXVeGDq5fYnT6U0p2R6yjwSc+XuecYBke7q4/4FJyDz
	 loX8BgCakJxlGrlHZ1cUXlPQsfny6FlW6/1KOmOUBgZYohexlLsbMqLuNfkpqcCYoX
	 ZGTh1vGVbYSZix08Q8xCXf5KBwBZJLM8mJ1AwrXAng8c8e/HZ9C1QdIPMyHb4CYvVf
	 hQPJLBPSgZlMrgBq4GxmceW8BzjtCHK39uxz344aMiMKSa9NXDaSkLpJXX1Dv/0i4a
	 y3VDvUFSCMfCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA156CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108953368.24048.4607987243885407442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02030f1e1f8d30f07b3b14bfd25031aa6f2467c0ea27d3960286209486aea687
Date: Wed, 10 Jun 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781089533
