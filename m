Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E54E18AEA
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733089554; cv=none; b=VT8joDCBSbzcIu8nH4lMY+uLbFPM62JN3pWerCBEJYE0bze5w8/z51l66rzd84WYwql3cywDPk5dLdMZlbMAsIBp0R2bUglgcmJtzB3n0fjRqKFgU/K4UQOR4K1PAcoAkR3AjWHFiBWqgU4fr2lkrzhAOr3vNyiI/0C53lWulQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733089554; c=relaxed/simple;
	bh=HiCKmRVjDEx1TVQo9EVdIGVrVb84H37ny9my3aRCiJ0=;
	h=To:Subject:From:Message-Id:Date; b=An1q0eopO4lN2zPLCHEHAETQk0U75EbAm272/sPWXj0JdkfNVWByIjfAbv764lrxf3JT218VWAsgE7bLPADq4PnH+Ei6wwcxfKM83cZRJiJo1K/LP3ldrbklTUEK6a+Mp6cKDhLc9JbkREbS7WBsdFZWMDC87XEAVeHqjnrQVYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5OsmAw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5OsmAw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB41AC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733089553;
	bh=HiCKmRVjDEx1TVQo9EVdIGVrVb84H37ny9my3aRCiJ0=;
	h=To:Subject:From:Date:From;
	b=s5OsmAw0aQhYA8EjPURXahDPJ7BgXZRQbwTSo9DFApss6WShSJuiJ1ryqbMgUxhHd
	 g08+QTFnhrkG+NG8flek7emVKhUNkq5QtSxKBN0V5hnQH9N7YJfWTBKCVVJIyJ2DkN
	 G93mjuC/1Cegfeqn18ZOYc4O/D6dPKVnZ//MKcZrWxKifmD0fSx3tm8NMju428AWXw
	 tKSoAtY72X+104KY00/5wfc27JZKsaAqQ8MN621gCI0OJiWqopjnDtXA897CY2FuFW
	 sqyodkeeFUTn2w/XPb1Xj3G5ecJGEV4a8DYTbBqhgZnCqDbNepH/8oj5WOdjzT3yaR
	 hn1iRtUljWRMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A5D49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308955359.23473.5339595024696660750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c8e4ead32ce73d68235b5098bd2715a91e82e3885c854891739b355b8b1704
Date: Sun, 01 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733089553
