Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464F017F385
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 19:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721246123; cv=none; b=iUEhAfdpMorMmEVe/wxuUFDe9Ob28tpj/iNzs4Ttv747bvxSx3UAMIH8RogsJ9uh9aD/2ahmGJpDGgsubeojX/fTBQroyjdHCGwpLiNKPfDsRxJ87Shl938p9nItLjSDae7ETIaWXM+MtuZd6VhrBloIoDR4M620EV6ra84w/UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721246123; c=relaxed/simple;
	bh=HXNK6qzYHv+ZilTGxexmJBkQ7OgysMHpGFrZZwE2RJE=;
	h=To:Subject:From:Message-Id:Date; b=geUP88pisueETEjb6E05sI5fodM67CY33L5j7X7ZZiKu2Wr1ogHy7x8+CQ5kJx30FhQTzwTXzxvb1lueLzMkZF6RzcPbPM6UbhJ6UMOkbizDLHpnQv9qS/Nn9ME0XDj93Ha66uM0QojfmEoAKDuoEWlF6Rjm0j9VFFaYUWI1VRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRwSEtNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRwSEtNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1186C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721246122;
	bh=HXNK6qzYHv+ZilTGxexmJBkQ7OgysMHpGFrZZwE2RJE=;
	h=To:Subject:From:Date:From;
	b=JRwSEtNPed2T4uJLgsgKjtN4XNHpu/0CZLIU/eLWrdwDmGWwdSf2MffjUPmzmUmCJ
	 o7d3RY/Pzx5bQplTgXzEFiTfOLU2m60z6sihwA6CF6DQX0V4iQi/iFicgeDOtFm4gd
	 5IPedFnPvkeLKo+9ugtBlasKQIl6Lkw7QgYdNG9VzVk6pnTZkCbO977UgdwjHfMFor
	 OK4xZN/32D+yfZ4gCKDMAPJALlJwK1c40xkbRkZDDPoTvMguIBqINExU3NcTTbeqRN
	 ZN13gCl0zc5p7W0WtB/eadBDDZoTvtPokB8Qz1zrmGLHTNN3i83N4LuGp79pFj8OAv
	 iKdjgkNhF+3nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00E6C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 19:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172124612277.20946.9073188404174396259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6188e0491d06e99e889827a6037374f93287300cb529778a1f346f483610d336
Date: Wed, 17 Jul 2024 19:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721246122
