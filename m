Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB1416F0F3
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718962943; cv=none; b=QEzw3sHjtM5s5FQT/+kMloeKlS24HrIYxSxNRbYpOMmCafmu08gZqA18Pbg/tJFHfKjfMHwQOqi6ZAXicCFfF8uQzGlPlTyphutsm5niYlo8z4i4ktaWB13Mi+7+fpIAcwz5SyLt3b4muo6H44BJV34PV8+WX7J7geZ+vuqMvic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718962943; c=relaxed/simple;
	bh=hhtKBB3VY4JMYxxpoWtaQnScmpLpJLYh1k0Q5LuR19c=;
	h=To:Subject:From:Message-Id:Date; b=iarZgHhrDBXDNwrRh3aOup5pY6zU+mKwIgq3nXuDYKC12zSf5XBp61KrbvnKilTt9yJ5awfWCa9xzvGKM65D5AZX/hOpkaQEgx+VF8k4ywfrjkx1vYr6MHjk3RPp1j6rkgdYTFtSp4xXb4x/8Gk5RYA9z3l4nhx81ZryAJohvIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMQCTa94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMQCTa94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7307C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718962942;
	bh=hhtKBB3VY4JMYxxpoWtaQnScmpLpJLYh1k0Q5LuR19c=;
	h=To:Subject:From:Date:From;
	b=IMQCTa94nCGjFRbVciKOzIvaKxVxig+ogOHN4+30dgZ2bzUeWEmV2OGZconxydf89
	 1JA5vwHk6IGID0L9WR1VUgVOWUxmHLtMTcSn7pl8WkpoHgDXZcXbLd1MI3ys5e30eX
	 m1fSiCWKstOnqSJigOsz41nsuTZdhzn284AbqsgASeHBw8gubzjGCXqZtpOH6WZSlR
	 CqDfgj0NuMhgb9tsmXSZ8W0WdbvpSzpEA2Ja9iA/Ubrn25jlqWNFeeAxQhriU7l77M
	 EKubQCuH8jcu5ij6Ni8t2BvMcCf+inJyxoZw61Vkd+pg3f+noZVZFo5GnNLfstFNXZ
	 wEkPmfQ6yb+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF14FC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896294276.7057.16857914234765526142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e11ecf5ed9f7117f160fd5a59a1ed21efbd0d05d7d9d012485adb3951d969a
Date: Fri, 21 Jun 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718962942
