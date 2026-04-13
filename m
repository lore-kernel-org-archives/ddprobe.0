Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157B936F420
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776101854; cv=none; b=EZKdmkhCKs1bNwZCPaQm+ALm0nURwKLm9baF70vMvRXWLVuJUFkHOr8Y3Jp2KZVz9KSEPg5TulFmMU68NQ04vtnQkNoiosMtoirLdMCMknwsxe1cqqbLW+Fojk+a+zL2GD5IKJm6FDZnISph6cr9GGBvL4SZragY+HG4qmYpcOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776101854; c=relaxed/simple;
	bh=63gjgsnOy7t6rJiWxtIf3YneRnMUXUNxulKl72xl+IY=;
	h=To:Subject:From:Message-Id:Date; b=FFXTN7t5PPN/DdF+/eHakGh5ZlUz6jdAmNTzPQme/TAj5bTkOfz32aIEwnuiDLx3aELESQb/2r6gf/l0ZFggJgDsvhxqQdlUCDZKdGUosi0CR99l1bkKg8no9WHtyq/Z1/8PUzpQb+c5IlMIlNbOp4TNDq6fJx2Jz9Z80rW/pEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0EVtrY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0EVtrY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28C9C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776101853;
	bh=63gjgsnOy7t6rJiWxtIf3YneRnMUXUNxulKl72xl+IY=;
	h=To:Subject:From:Date:From;
	b=c0EVtrY0ne8i1Q7XuBdmIE1WgSsjoxkNoaCu31Vg/mLgAjXNs0lgqiXFGM9DeRChD
	 0uruHdyzthwpvBZzDw1nYOSb5FwA7k4GMhBiZ9ys0dABfLBZAMkUTTjmbpHp55vZx3
	 bFJN2yaAfVf2B9hPnoVIXmk2cJTvRGcWgiHGXBLamNu5Ma09n+qON+z5sbM3+gklWo
	 Wap0aYhai3bpm5/iUtU5hivpBYL1o7Sn2NMZEiOmFaobGC0T5kAoMDtbKIdhdN9viv
	 u0l/HvW9oNNJ36ExBpGkpXVsUlwGAHaDhb4sGjrXR/3mS/qqqqRrVYQ0AMh80+v84M
	 qn0Oxf2TuMb4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0868F34C6B
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610185368.24444.5799076192651263642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ea2740e1257b720311527dc42ac214bd3855774c457cbaa41716c12877741b
Date: Mon, 13 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776101853
