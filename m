Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F4D3C466
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706477897; cv=none; b=sweEjOrblSu8MHi1FfIDx+znRhUpagAs/DnsUz1YW2/exVYi6zDAzh/ENyXMhuw0GRkXCtonj6E859qdcGzau3KCp0bnPxl6Fu3f8h4/bDxCuUrzL6bqR0jqSqOqPDVABkJPqt2Gw3Q3krxtB+7lRUsjHD/aylcoT13Q0tFHhMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706477897; c=relaxed/simple;
	bh=/ejUyal9Apq04xf5alQyRbub76VX83nRcHNZD0A2t28=;
	h=To:Subject:From:Message-Id:Date; b=nmhgwPZiYRIl2AwxEvx9DGzJ3N/R+I0qRfA64leBRaZhrUaBjxlnu/U+bBB0+EWnupkaqXVHd87miPrVDgRbewWE8DTgkTct5ay1FRy2cp3jps18qiv+A2h3YcQuI0bbllBwZCbrUAMZ85mzHE/GN8qxokK5TkM6/5hLyc1KGGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlqaB6hn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlqaB6hn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D66FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706477896;
	bh=/ejUyal9Apq04xf5alQyRbub76VX83nRcHNZD0A2t28=;
	h=To:Subject:From:Date:From;
	b=GlqaB6hnkFeZb5ZumyzfRDv/2WIxFX3mQj4WDtGiNu/rUTt3FLfPmzsA1QnJ7OIBa
	 IgzdPfwO4RxgPgFEZ0httdISMMT/2h08wsO0bC93gmgjZ13gn6buteboQ0W0CHG0kM
	 3yJYyPD5qTAK3eybeg8IPNhg2mZA8geWD+SzeOJJMH6mQEgOO2NSxjzhFBO3yZ/MFw
	 BW+7lNVqZ11164ZMVQQjGSmys8ecIsKAl3f8cditRQXl128t8t5/C2p21FICPPNtnT
	 cGff+tDmZ6SmPsg4yJOyrSo+WWzy0zI6WFhO4VwV7M4hkpOnkkUCsO1PL8UfUU58bn
	 wiWGvFc60fxVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F27BC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170647789636.29918.2317868402693086500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19260657a5527b33bccd602dc8ad3154635843ea6f78575dc23954e97955cf1
Date: Sun, 28 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706477896
