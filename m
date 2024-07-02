Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F0C1DFFC
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719931523; cv=none; b=YQa5qoyMolMmqwaW0krsdV/7KDoj+6CxNGinghn57fE9mjxuGKI8eNhWSlLpgt1lwoDhmujkh7kUx3+4qQXf5lE88SVIsHpmkEv/ONlkWgQKzcL7nREBOl0rz5dY1yOcaxpsSauLVFwrrpC16lZqlGIw706GWULYGEyGTLflv7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719931523; c=relaxed/simple;
	bh=TssdgA8Guo3LkfY5IAJXkQLHS4jhNeW9x7qaV5nvGLY=;
	h=To:Subject:From:Message-Id:Date; b=LzIM8K6ObMrgm/22fh1axn2ocWWKkec7Oh+sr0Jc+sN0MbPY21RDILOxLNpJJ/6r/8bnDKrAjnzpCih1uzH7Z0mNWb60Dpobv0t1Zm8AqeP3OaZ5rxNyt/74HnWUgRD8/Rd0MELZv7KG6+COYqE+m+dORKy8q6cuvAOsR8GBrqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9FQC8rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9FQC8rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34CBC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719931522;
	bh=TssdgA8Guo3LkfY5IAJXkQLHS4jhNeW9x7qaV5nvGLY=;
	h=To:Subject:From:Date:From;
	b=Q9FQC8rk/lRUNWz68c6x22lFcXdEwHDWzgQnmL1QNacNARCoa1wMINsdy+XQdquy4
	 dk9g7lroCLkgybWP+Z4GoLhfCe3PbtSmuPhy0NZjXxRy22FEvBWDSmWhW0K213GId9
	 H744n/iRSs3sFbfGkPPy7XbbjIuSi5FSaMl5XvucgQmOl7uNc1y0JkMCNy8uYwkkXL
	 kceSadAqeEGaSMiuZwA8y/olaHIjMo2NS9EtCa9nxv0icwtKmedD9515DvhKNQ5RAZ
	 1433WjrSt1tyNog/mrpozOPKASDngMAWwA0zrt0WdUqyIfhIwTdnYnoXY6/oNSokSB
	 fQKENhf3tBVDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EDDC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993152278.16957.15250101051177689809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9befa63f7885706d56cd7505c89235a7daa4db30cbaebbf05035b445dfddb931
Date: Tue, 02 Jul 2024 14:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719931522
