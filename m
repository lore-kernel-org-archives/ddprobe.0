Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A63165F1A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767359634; cv=none; b=r0Xx5K5UdJblSX4tvo7URAAPBqSf1d0Dq5HBb3vHvnNJ/AMXNRS/7FnK6DIC7BsPPajWagagxcIdXhWnPizfrG6AKaJ5d6aVcuk+Y8boCqVdyDuT84VD7G40oiZPhbMlo2+hi+Z80vSBMKd7Np5u3nMHkjmu8T5y8rYxpFUrL70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767359634; c=relaxed/simple;
	bh=qsoT4yTmdNaeRYxrB7+DcnL762Y+AXwFzO/ZDW5Lses=;
	h=To:Subject:From:Message-Id:Date; b=h3+C4YQJJAvwqYZricyunQHfOyhkj+DOJ9PXwuHauaSyIE1Vuxmo1461tQJuLUn2ls+m8kKsiu+PV7McO0tG62THDi0AGX5PdoP0D/+je5vG2jmvfUxddBWJNCi3ga+XkwpMwNetJbZBN2GxE1ZfAzaeqIv/lWZZy3QmnV1+GtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPSZDDqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPSZDDqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C92C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767359633;
	bh=qsoT4yTmdNaeRYxrB7+DcnL762Y+AXwFzO/ZDW5Lses=;
	h=To:Subject:From:Date:From;
	b=dPSZDDqxICVtPdK+8spqRAd0EIg3EOqiA/bdaWQPgAxZTw+tnXKHNgS40VnHBSYGB
	 PCj1ehIiyKWq0GzLu4cfkpjrXtihqjKd4g+Jde2ubYc6BTlq65QDlwHV6gkrKrvd2k
	 sC3nMzokEdGE7AZagC8sIwvhsC/KSubb5oIYItOyz4XwHQus7Y+Vh0+pppaa8X/vut
	 V16eCJELuR5Y7CpO+7BaKds0w82PBoHRDB4B2OULqNGU00woZCv/63WddzWYApsjzH
	 T7jYOHhqQQVYDtUewHMav5GNDB4N+NFfPAP7D/Z4z00m2vnadfs0rjx3FDH10iziW6
	 yQ5EhEr5CA18Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F3FA3744
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735963357.7522.11459300951844432255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f03b2a12a8779f895a407045c268f272aa74c50a0d02ebe90d293739157d677
Date: Fri, 02 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767359633
