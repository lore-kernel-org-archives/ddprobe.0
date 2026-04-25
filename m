Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C9FBA3D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777118854; cv=none; b=rR2myA9TVGAqHppejo2e1/IPrhKrovh/PSXBCwRyzKiStP/DRCyBPG+mX6oELo0h2eFrTL3zezlBk6WcpfuwxdBRSKibTDqXC1muQc0zpiEsQqqvNFMMEglPvTpKGjnXYzMcD0C3MpEIWxgBF3KE4BABnF/Te3J1xf9wW9znic8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777118854; c=relaxed/simple;
	bh=26FlxcEknkufAXLFOtcFAbm8SgafOrViYsarq9N6Mfk=;
	h=To:Subject:From:Message-Id:Date; b=VkC+y7mqtXNvTtbn6oOCtmXTf5mXphKMPwXN+O+H7vhlXo7LOd/N6dkxfYOxleXWXDVrQvKOdFhi32GsCl3jzh/Pccw2edH88lVqewzUb3kIe6Ia4Tx8J/v/ciosS8ZdLzNc5E0yQfV/2bXhe0wIqonQVNoelfCRlgUXuYeAd+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+0SiZJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+0SiZJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7BAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777118853;
	bh=26FlxcEknkufAXLFOtcFAbm8SgafOrViYsarq9N6Mfk=;
	h=To:Subject:From:Date:From;
	b=k+0SiZJznjB9254Ikn9//UDJFeFD+CT1Z2RV1englir6q4+LSBymhiXIu61tPj88V
	 Z0NUZMJQ6hweuikqADhlVXfH0Fb8DUzjX6b1T1hzC6ThNkFLVHO694/xx6v0/kuKOv
	 w8YDeA34QNXTi4Tm0x27YxJa6xIXT4O4R/3x+J1tMpNNw99MOuZrnVEM+zgYcAd7wW
	 J3cHkusRI5GjWUg01gJ+il2YmhxNO9qz5XTkDjJTBzr2ql5IsiqWj070Ra0e+/rv8V
	 nl4x7k+5vhBH8FuV3/pHVOyrdOtmNIEYMkhxgOqpvhio/XiVMhRzAEqMDhx7V/qdpz
	 tvBNgKwVHeOHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB25FF885D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711885368.27397.2503053395044890453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead5c93b1b0553f97165e7eddad6587680d6b5cc7a092f490d3e8d7e7a3e3df0
Date: Sat, 25 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777118853
