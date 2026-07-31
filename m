Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB19489884
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785538834; cv=none; b=FxPCeqcR5DS/Otb68TdhdieGzlmcriWNWu+hhDn5BU3k7/j1ksQQMW2fy5FbdC2GvcLiWUs6GRl/fLNVNqkm7OTjktd4CgKruVTvS4sDb/3gVzUsYwibyPYjEqPOzrq04kjoiSSsQGS7OVeotX7fo5lMndNFZX5f8ePr45wG174=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785538834; c=relaxed/simple;
	bh=TcxMQgWJSnSrXD9XVUP49Uxs3EfMkpwHgD3huvvDIcg=;
	h=To:Subject:From:Message-Id:Date; b=ToXofq6YH7m6bdbsylEBGEYmgJBkuvuNt+qCd8nAlBk+zQ52F4iZnk1FOCn8X6wc96Saha6kUsf50Y7MRtiqm9XDsqd8yrEOAfdKCogGs1DdaJtgJm3mumnDMqzDBwz9CeNlZOaIn6hqAVnjBLhqMi5OAt6CrOBXOTwQ9ItSJC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O586l6WO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O586l6WO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD86C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785538833;
	bh=TcxMQgWJSnSrXD9XVUP49Uxs3EfMkpwHgD3huvvDIcg=;
	h=To:Subject:From:Date:From;
	b=O586l6WO3GwVIy5ydyzudqRSzayHOe2fo8hvkH2KHUR8ZNtOk2nd0TGEtt4wpGl+D
	 nB4LpJvSsFrpsmheP0jsqPXkBRs0kg/mUmmugwaDIU3Ws/3YDLuZpuCleV8d9X7gTT
	 MLWUyz9b0kT2r0hjAtoYTONyVEfejI5V/FZdqFa4BKSvjZNeOoQCfaUU2PzADxlUNz
	 hpGPrUXFAzusjaFYkALvf1+fxbYIV+8WGfzmeVMvQ7MMNTilqgy9JZXTZGa4nG6U0Q
	 0IxVKm7fzzepDofUSNhiPaPfjTUhXdrKIjd1CZUdTpSAhSFDqQm/gC9bok1lwfrGwf
	 Kx/UEdwmYC98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECF9C55171
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553883368.14748.17698536817552503631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123611c5190231a26c57b12c993af728a67f8c5c96b073f41cc63b5af5d8a08d
Date: Fri, 31 Jul 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785538833
