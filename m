Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410C610E9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746366594; cv=none; b=ZohZrAwHlb3JDS9UhUaC+TN4rM/+U+8MC6yUcv7n97UwmyNfoVj+91SRq/sdMh3yHHBoGwDGKzkTiD2EsW2sOPpokCHlZPNzk4njEgecxcxBc7Iv+kvw0A2+ycYE1+jhonhsi0eS4Od5w7nUtz4JrJnyz9VEEOQL3y2G76oaKWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746366594; c=relaxed/simple;
	bh=qAeVquOsrixz5qradpd6zy7cKGB/8FUdLhMvs6FnsKI=;
	h=To:Subject:From:Message-Id:Date; b=tC7FEVeJx/lrTCduc84oiR7IQVRBeGaTQOi4AfvBe/Ct630i/npooOSYuL+hI/wFkNQbvL6hUJ3scgWyR7/XLaf/jrh7tHeM4L1QbxDBJUMO1fHVuYXVIwqelbpEd1MrK2C4XuRyqRX3wIoRFixYSMGx3XNqdv+GyxZUe49rjY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2mhqq+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2mhqq+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D8FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746366593;
	bh=qAeVquOsrixz5qradpd6zy7cKGB/8FUdLhMvs6FnsKI=;
	h=To:Subject:From:Date:From;
	b=O2mhqq+HC1T1AaU78S1R34TCMMTAnD0MHu/MPecKJCZjFxcVNyzX7c5/JtK05M4cs
	 wEhB8JDRIUAT97Iz7dwTy9bF/Y7sSxlJDhb1Heaf2KY2igKxg3gM3Fze7vVsACdqmi
	 dSwUQWKx1vb6p2rKfiF2U/7NZGq5Z5LsDm7yGtSFM45b057nlASLaow8ehtLQPwh1H
	 PXAkZ++w9m3QfGOZsen0wdwqfwnOLGlhjfrfyLm9LgsoS4mut1Tp8006+UyDef2EH0
	 h99l3TT2yYtWQ+VkBZojK+UWqQ87xJsUh8JbwDX5iHzVAylsInANAvNT0vrP4csFyQ
	 xlhu/DVV0351Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D807C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636659357.1062.9133668267055515537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f71f0e14f1ab2ef379e5a030d02ea0478effc2cf9a7497779c015ac4d40585
Date: Sun, 04 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746366593
