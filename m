Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED9418024
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772678693; cv=none; b=juRSK9SA8u6oXusagaOfuMDdip5l1/y5FcrA1BQlnBUCac1zbfDhktoI6NtX/iuKT169MfwKsSF/7BaGh8DPdIPq5aD9NRWwPNbNU8UjUmbm6I3+O3xCeKAmJGIIMeBJj+4lAG0+fzO13g3LSs0WdH7KUR7V80zDE88NDt7D7kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772678693; c=relaxed/simple;
	bh=CQoU7aH7A42Lxw0xOL/naMqnrVxlr+TzBoN5gVLaoeo=;
	h=To:Subject:From:Message-Id:Date; b=RY53TfC87HOR+bBB8BUldbemzp6soWXPlXzBT93ZlshTVKH73KIzm5YgoGmclk7uDSuvHuqr/JYnVPUPOqA//9dGAlEFEtwXKEarscA7Pek9AgBcdezVJDBDBlAFRVI4eSEVr6enDQc3x86a6DcPqJgg/+AYjDs4zbIslrBhx/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubF1PqLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubF1PqLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBCCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772678693;
	bh=CQoU7aH7A42Lxw0xOL/naMqnrVxlr+TzBoN5gVLaoeo=;
	h=To:Subject:From:Date:From;
	b=ubF1PqLdq6CdItYZAfBW95vUvg8U2qQGF2v4qy6aj50BtslqklkLVRmcBRbVlX6E3
	 nc4ZB7vqpbdPDf6NTvwZ8V9sdGPTKGCM/wTJb8AGTiHSSZQEBaQaAAJpyI7OqrqcsP
	 QJ8Te71Uf1XZar2cTpaOMwA8nQ1OIVy6QaZqMiSRg3ZRo3ELPPY4lrP6xvXRU66rWD
	 Gr7PPJviO7TbjFvAcfU4hYPJ49dhb26McT8DifgDUyXax8sNcWXszRgruxMKSwXNyD
	 /QUiG6D3mgjwENLN95ihOnjPrwduNZTVg74qNAfryya+MJvPJf8zkjJuw+xEE/4j5l
	 hmkahz7GUoYKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D602EFCE53
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267869363.4740.6996132618043280441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90347c7a79a64c68fb4d78f5409e887721459a127e5a703b47fdae1b4f97c31e
Date: Thu, 05 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772678693
