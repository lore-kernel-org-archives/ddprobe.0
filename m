Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20520356A01
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769073834; cv=none; b=T9KXqlCrC1FkloOubBJb7HkDXYBLGX3cERuUDmXXs8bBCJSpIpCk4d98oxHd6ayigPOR7YwbEax5o6QAkSRq0no2BI+GxeF/uRdfPXECdBXIjXT9LgI+PdqAZr5vFM8zsxv7zPbW8kJaWB0W8TRJLxeDxq9UrkvZb8lxNd1IWWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769073834; c=relaxed/simple;
	bh=uKH9XYTVz3bhUytqZZpKgt4zwomqGFkUqxTwyTPpjo0=;
	h=To:Subject:From:Message-Id:Date; b=mxiZ4UIalvV7Ud9sd/GI2yiZIw0sG5FnlHokxeR5wapgMuzCUHaYN7SM7y8zdG2Qu/XAsqvbVyddRXDemAN5UHl/TbkoukBpRldExiGhZzjch3cqndFAAKb8PbiZfG7XgTYGTzPEH51s91It0n4N+S7h4Mcg0kJwEPAC/1VTDAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmIugu9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmIugu9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05A0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769073833;
	bh=uKH9XYTVz3bhUytqZZpKgt4zwomqGFkUqxTwyTPpjo0=;
	h=To:Subject:From:Date:From;
	b=nmIugu9wvXsNyMQlQFG7xT95lF7SXVa4vR57ls1YusGu6s/oAaCH1s392z3JCR0Mx
	 aHG9SCFKsh/JyfU7czWQmprU76CGaU0lPdggnnGG404mRbqWBimx/24kn+QDV5e8ya
	 H9T1629NafVlL3EXmIbqyWDjVq1nKlgpZhvK9kKr3MuLjKQ+4utLv/mL8auUlfH87w
	 atm+Y31K1u7etQ01GmQcUwqFc/mq5CAny5CRA29A1yYqbx5ay5kGqO161LQwB8dDbE
	 0ikkpnWUpiem4YqN8jf3n/Hld0Y2tCHX9FaM0iT0ryEvX4bXpBPRRhqULm0tzqAntk
	 n59iqVeJc68Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D0CD62605
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907383358.16718.10251655200182908895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ee2876d4026515b4119c1f5b95906d47cd669ed0ede8d1f92dfdae29d028ba
Date: Thu, 22 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769073833
