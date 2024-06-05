Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CC7374FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 02:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717554383; cv=none; b=T5w7YqAQfyw0kRXkOjZIOlGZeS/V23qh/crF/pMt4EMlzZs/d4JdgaZuSeZgdhqLaw7IuLtf3aDu9YaJWzYlM2N1IDczChKcVCaMBzbSQSg6VfeSxyFWhEanjX9aoYTJAoJhYylUWZc31aOzlzArNjJrrbtgUtJ52PHJuAuUJDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717554383; c=relaxed/simple;
	bh=Ybph3zxXITdanj+CeLMA9kWDBap0cf+sUaiuKdwUSlU=;
	h=To:Subject:From:Message-Id:Date; b=IKvOPrFjI8/wP7UqsgOoMqp8X81zJrOOIvGCGfJhFKOnqq1y7Bl6t7Z9yNcFhzbAPfnuLQoNziNGfRwwQRAb+uwxEK0kprsNc3orgZ1gbtteXx1OUp/DwMrbGlKujbfnYT9r0lENmVTm+7uz4nkmqd6JfqhdQZbCqjHOGz+lKxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=md6GvqVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="md6GvqVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E4E8C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 02:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717554383;
	bh=Ybph3zxXITdanj+CeLMA9kWDBap0cf+sUaiuKdwUSlU=;
	h=To:Subject:From:Date:From;
	b=md6GvqVcNGYRR1JXTgeaFZOMayXZ7BwlNnAm8bJXgrsmWLCtRmwCQKcftWtenIm2r
	 1UdzVoXnDqjdOxHv1/ito8pWzkA9Dth5XredHau4WgmdirWKUthaox13ViizQPf0fU
	 1wP/ofwSBkkh0OMePrfu6vcYltvhQjsxoR6WMUGTCs/VgU/ogXjD62e0TyqHTqfiAT
	 iOlMUDfwT1q1vBo3nEhK0EzdQZ0Cyf7m+Zbt94vWAGNJdTKTxeQISAZNSF4emgU4SD
	 OaW7h55go6l9OLGjFR1IDz98KRiRkEJ4khxoqy5G8wmoqhUAlmKOrK6P76ke5YnlZU
	 Vy8XsaqBCvPJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E57F4C27C54
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 02:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755438288.11792.4795836387114741510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08a2bd8fec25e4ad6a472676eaf2e537f3fa8aa6eb400a7c9f5452eb6330245
Date: Wed, 05 Jun 2024 02:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717554382
