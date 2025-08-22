Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2DD205AD7
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755881994; cv=none; b=A1puYdAkcLPXxTSylNzFhhXIeHLFADKqIOFAV25tdtcUbnynxMVrda9IR7MDPhGl1qLhz83CHh12CkMXy0r69mdy99pO3niR/ymhHgWfZfdonyC7sniJi21e1q6xpKvIKHGTBHE6q0OimmB6ME8PQYV6UYSMHHW+Rls+frUWcLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755881994; c=relaxed/simple;
	bh=27EucpCkESWfxQ+WeNaasOjA5L8WH+5x6uovazeYI+c=;
	h=To:Subject:From:Message-Id:Date; b=IGLjLsswOmtZ1iRejwNV/capLXZ2C1kTG4rygY6vzFE2RBn0YX68EzmpzLo/qRx7RlDwdwvAmibLEzpCu+hFkWCfXjpHFBWVw705ZNPHc8jOVe+Whu+UvqFzpEjsMBf9exdC4jZuSLUp+IWxw8XkxZQ+IVe8hdE/KI1kfb4GDcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlKQtlZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlKQtlZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07B4C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755881993;
	bh=27EucpCkESWfxQ+WeNaasOjA5L8WH+5x6uovazeYI+c=;
	h=To:Subject:From:Date:From;
	b=HlKQtlZaFdjLuxx6Y7QSr5MAKYhCZ75eTHHyb1MBAXK3jGZ5ntARLtJgWRwmqV+Ah
	 wPP8fd9CGK+TzwNnhRVhYNiFIEJgSr/4XZaklsoIiLyMwvUYPa1A/eutxB5EMDkic5
	 lroBIssJPW/XKwDucetFQxJDqVs6DXqfVZ/QZcBxJzOl4SrSrU8gpkuHNB2pYTcLpM
	 XRvq+/0J0GgVI5Q7PawGvDh8g/diP/N4NQr/gPb4b7epTOuE6mVIrKrQZEV3pfV67/
	 g0TwdD7w8xzKrlvNL9Dbusi6rVoGUVIjY6ycMk33HL71w9qSq8/1I9P0frbtOraGkK
	 3ZCo7OdqHLh3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC9DCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588199357.17551.8495668679116549572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b8e6b45fde0f1b0232db4df420f5901e81c636a5ef679ebf84f37df8c9d397
Date: Fri, 22 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755881993
