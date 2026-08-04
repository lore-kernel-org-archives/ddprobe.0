Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B2D3F9277
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785829234; cv=none; b=urzpOnzqBThtXfMw6T6Xu1eDMmWsPWVsSnSeSwKui2G62WmM5uEMSwSX716TL8JgI/wZBwjvTXhBKyippmnw1ryNCopBfYm6vtkALXwhBrNzpu2PUp/aMI5hnGxPNVHjW9wOg1GBUaSDCfVOO1xrStz0B+DvGc1pcCPydK7s9Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785829234; c=relaxed/simple;
	bh=QOY6J2PX4pFb/rG+r15V0Ns8XDsXT7fm/O63TNgoQ4s=;
	h=To:Subject:From:Message-Id:Date; b=B7jhBelPvIWLeJ2f024g7WbR6il++MM00SAg+CWWk708ey2o+29Fb9SefxT+83BeacUB8pPtBLqqkQ9KojviiUk0DpwceN6vtxCJBkgOoCmGRmHLitYOxwmG/LS/7UNdADzuk6LX2W0z4P9v21J26ycSvNJJoYH6zL/BjH64qJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBkcjFwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBkcjFwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26A2C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785829233;
	bh=QOY6J2PX4pFb/rG+r15V0Ns8XDsXT7fm/O63TNgoQ4s=;
	h=To:Subject:From:Date:From;
	b=HBkcjFwbjD6McPeeOW8tqlcPPNxdO/6AjPmaAlhVrpa1FvhwSHnEiF+/ehVH8F9wf
	 sLJi0zAmmEr0vqvrKRlV/hSrGlbMjiUIk3BrlKR7RABQzAJCexLQ5egkCBQalCVP2X
	 sdC3fO6ccEC2jKsM9AO+V/qxjyFr343ix0udLsSDqiFkNwNg+kShVppCi2EeYeowsj
	 Epyb/1bxwzqNkq973CnXHcuJSrN1nW0Srg1E+DdtLcdB5cW8cCWqZKSyAJakCk83aw
	 YZUI+OX/n+7cstmdpS7Y2jF72heaFBeB13jK8FKBFUUSmhxKiANlN3hcEFyLZHyJEN
	 sJR/+38NpeDmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A3C5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582923369.16709.4186764388296983354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb1d4578d13899c34c49f8d855a02514fbc2a6b73a6583b482a18122b4487f6
Date: Tue, 04 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785829233
