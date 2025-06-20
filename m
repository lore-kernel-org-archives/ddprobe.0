Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271D670805
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750381195; cv=none; b=VXoxH+Z2j6BSEyklXCft79FbZ+uP+S+1R0ao3V1BQInyECXezoPEhoU+Qh/FZZM726C73DH6s9+YXuh1HgSby6qM+Cx3bEuCSp+wcNcT3XdxIPDcr2LUEqqIGdRA67aUWi2LisVvUs9SA28XyrcUc5K8hMMJZbqnrIy+xQwEEeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750381195; c=relaxed/simple;
	bh=9Jr3XSHtKG/fvaGrZslNc5BJ1KmdnzPW9L2F2ZiXPJg=;
	h=To:Subject:From:Message-Id:Date; b=AdJNHkJvN3ZqL8+Y+vP5o809As8aFy+lJQe4ueMd5X+yov8mbVzKZ88pFsvOVdm42FVNwq22oyLZPICzd8N8bp7P5n7AU3Ro8w8rxqRuOBhHRj7HuvThlk62ZOMqImVlMapaly7KDM71ihXr5+g2gDfXngiKw81zJYrU4lpVMRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTlGG53h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTlGG53h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2A3C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750381193;
	bh=9Jr3XSHtKG/fvaGrZslNc5BJ1KmdnzPW9L2F2ZiXPJg=;
	h=To:Subject:From:Date:From;
	b=kTlGG53hoaWdwyvrZWphq6tvj/fd60YHHICOn8YTlLphEU/v10YzN1O6MkMmadw0K
	 mBTGKDV2JvuKQ4kVbIUCgrZPGemYspaxaGj376w+5XkU3VG9/EN496twHEQOc6rW/y
	 PoiXenbjREhPltLPlMIIp9OSv5Y62g9oxPha771LtCLxwxQDDFlzajEAJcALdbGqnm
	 ODxwC8tAwtwsa+TlqdMt9hTPH0jMklYL4vFsFRr25j8ZEqVN02uJutmztRfDeef6C8
	 nU0g3/V6cJ9TRokUHeebwO031nJOhVd/4DhG0aPEkbLiTSQc+hSkzU/elNs8TAmPKR
	 mbdZbdXLMXAVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB00C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038119357.31976.16540720112121484754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e05d39b692599a4c091630698b2502316dfe37544cd472d1625a21a772144a
Date: Fri, 20 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750381193
