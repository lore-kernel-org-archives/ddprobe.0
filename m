Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E95F2D46CB
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752571194; cv=none; b=XmhrFAXjlIQawQTtox8mpDlq/Ow/CBwwA2dpzxrluX6LmZhHTXsYrEd2pWEqRzgxVZERCwU8f2V998KyhYSU3nrpG1Hs7pcTQ1l2Ua3/G5VpAAYDI6Qg8TINidy/uaimVjPeRO88dCY/1vSa+yMjeSkDddI24llb0nqy52eeRso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752571194; c=relaxed/simple;
	bh=8i3Dg2rI/zuaYJcoaa3kx/31MJAoCii0h9pPvEVsPQo=;
	h=To:Subject:From:Message-Id:Date; b=rJFxaTNcr9nrM0aSNDH+2oaekpqwawWnsKx5zlTAtb1jcnr0+v93ORG2sJikoXSHJjTZnpjyReZPM3J8mjiQbtEvPnFzXxV5p4Zm10v51AXc0pO9Bq21X91Yg3wJ+PrfveZ0AQOBMrymrC6uGjLJFcbKr5r8O/vWAf0orHrt9Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkRS8xQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkRS8xQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB7BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752571193;
	bh=8i3Dg2rI/zuaYJcoaa3kx/31MJAoCii0h9pPvEVsPQo=;
	h=To:Subject:From:Date:From;
	b=dkRS8xQd3hL4YulHE1ag3VaqVpLZjyQ5GImMHRktFmQn4LMltvVH9vD2hVdG+JIno
	 qLdiARi1f9WpJCEqpc9Hgr2dCfsDj4MVFTy8Il6fN885zs20YEzqfiEIeqyIzJ+nYj
	 1WoRytcEzfWQe1iIkxlXcoX3PxhtL5QDu+IVM+Afc7hZV7hLF8/0SXCJqQt3v6/6/v
	 3mePt/tijBTCj/8Yh4PYDu66fYsAInMY0IJ2NlTksHCs1MoervLei3qKa4Mv0uP7CK
	 KDcNj+6bCL8NuhobDznZFjoATH8drYv3Mo+p64qxUa2JeMgC1N19bNfA7jLZ3NV2BF
	 D+9U6+npYE8sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC84C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257119357.25232.631755088961714593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cebe2b7d719d85f444dcdb20e9af4625a05e47f1d6636f3e918dc85c9a5a7dea
Date: Tue, 15 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752571193
