Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208071C84DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762700994; cv=none; b=RZdwD0W0IxBsCuc2RTDKT2M/zDAVKk8Ieir9vK+K6BbJfKNBZuM2FmiKbtW9Ob1IMLf1ZOJBUnXah0cEVVZpbkKMstgRCre4W6yq+eUMO8vSth71wec3Px2Z9nhlP+upEpKcypLsHhfeCy9nZENXlE5eAHkLo+1cV06/Rs6lJdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762700994; c=relaxed/simple;
	bh=rZYw6OB3qJVR9KhaxxvZZ5FElSCF++snW+aHTYJApiQ=;
	h=To:Subject:From:Message-Id:Date; b=Yzy+vavuZKHSHAA+1J0P8KC9PZySnvWX6iQMs7yC5KwR008KkuNvdcZI4jehfIOrEWW2NWNJZg8YqobZb1syPwd6jtkxQzFVFpjWcUWl+qpCgW9jpiOGDRrP7a+5+dHA7Fy7jYQojFvsSmO+LRhTpZIFeKFJJJ9PRpaRW7FVido=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUoJdDs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUoJdDs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A030CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762700993;
	bh=rZYw6OB3qJVR9KhaxxvZZ5FElSCF++snW+aHTYJApiQ=;
	h=To:Subject:From:Date:From;
	b=pUoJdDs8zxJtPVxxpL3gQDI3n/R9SRXuoLjSsszORykK8GcldPo/IscUNplyOizo5
	 f3nIaBtpfUAZtdewhUTlP57X58T01NsUwt2On3b1yB/jC14m80NUYu5tc06vYNkDHO
	 OlgQp4cu853AWz00c6xzzRKd8Np0EgZnqZRZe7b/HmCBXMu9RiWsZXwh9PccsYOZtz
	 nvP9MHhYQZtD/IEMfBsN6P6Y/KgykWPZaAwbCNYG4aPF9om9kSylXAJk9RgnHSL3Yn
	 fJFiD0TyGKpw3kwDj4epkRIR1Ki38xpm6XXwtC3oyf2QJiwwdSMrx8tbejAZFkwPYT
	 QDLlorNC2UIQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95451CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270099358.4573.11346190718004374159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8ae3d7d6a910f223a4a3c027b9c5811fda599b3bd8dff1988f37baee19fc36
Date: Sun, 09 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762700993
