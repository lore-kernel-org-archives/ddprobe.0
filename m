Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432463264FF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784614114; cv=none; b=OFvLNNJOS/0MGfJkGqftwQJUGxUwfXIiNJcG2k3tRX/okEUXWRfYd7WPzTsPIlK6M1qvTdJpE7jHybLnopK9nPihX/otfRxyPPok5Crs1gYRdSbD83bSpN6vfYZOFAFkcZbaEyQeABLqpztOD6ioxBiwvJ7fAnVGzJSqK/6MDRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784614114; c=relaxed/simple;
	bh=VJaR8fr5sA9Cs5hs+ud6ZZE3ZbpTn8yx1z07EesYTk0=;
	h=To:Subject:From:Message-Id:Date; b=URl5kLdpFIgFMi4rQ6FNEweixicYJm9A7LciY4xqHACBDXciSgapeCiBR69zJVlR5Au6itAwX04ATUNnh9mMvP/2KLYToxe8XrsZskTf0KHhAs+res+Trir6OA1cHOwIFL+GaHG68H3bmTBnPt+XQU/sGo5Y3ZsyuIVbMKypArw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coUOpG0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coUOpG0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D686AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784614113;
	bh=VJaR8fr5sA9Cs5hs+ud6ZZE3ZbpTn8yx1z07EesYTk0=;
	h=To:Subject:From:Date:From;
	b=coUOpG0P+s409FKGIO9Tjzlf7KJeDaAnQGUF2MXJ2MAlZG5hldic+RMe/8coRMl09
	 I8L1ILt0oUcsLOp5SVEhxdW06I+89SqpYFN9LovrLFaQ/th2uAuSGsfVw3yv/Ci0Ba
	 1kBTlfaDxutB77bMvhw7N7amcXEQXRS3pyKEnYhVqPGIbKpZg4W0ThW7SyKnNL9iAN
	 iE8qEj7ssF7+ydULpOAI+8c6J6X23nlIl/3jcxlnTyGQRts/TwMQVJ70Qa2tse8irb
	 fmTp4uO6iX6AHHX/kkTbUG+pBlumk/QmepN2NhZTxbrVCTSWhsZ1lAeAQ2fApMLv65
	 8gEKIsk9XvDug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7ECC4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461411370.5940.17855643733043952182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f179a08a626b5ce21497d5a96fb4a805cb1f20820f26952ac368496d97bd1530
Date: Tue, 21 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784614113
