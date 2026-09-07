Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87636517BDA
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788803434; cv=none; b=ivX1KZireSBcFMxPKiohu8qsqMb4EU5oNmjldHxNtaorskJpxWyxt/OW2aXhLdpWPzw8++kjue5yS7Gl4dxBOEctcOk2DqW93Gm2R7tZbTVPa5Ci4UreZHBRuNsDD6EmluRa8yjOa28GrNGwA8oKiciMukChYqoH7sW0oXaREcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788803434; c=relaxed/simple;
	bh=DtYXOUJmjF6lJbQmC1wDQJmwH8ao5aTgU4SFqfWkkig=;
	h=To:Subject:From:Message-Id:Date; b=tTLn9IPU615PyRvrtiD14iFweeT2zgnrve/88SCmLEMkTIKWd1oNkvwvtxqDp+YOGdEPd5jJmXaopsSlKSKUph3l2bHUeHUpGlUSOJE166auyqj2JWqg3vft7HFuCZtihv+X4F3Jez5ROYWeuiJwsZLQdFAWRh1I0VW2BMT8BEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkGfM11H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkGfM11H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F395BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788803434;
	bh=DtYXOUJmjF6lJbQmC1wDQJmwH8ao5aTgU4SFqfWkkig=;
	h=To:Subject:From:Date:From;
	b=UkGfM11HSOUSOFQ8GFYNyFGNz7CPYJrh3egvULy1854jcV0AtGxNIRlUNrjTcv9E5
	 V15FI8vtf6qLq9zH9x6lkUa2kJvnw+mFr+G6w8dG7sH5i5Yi7Y7IPi7X0pkQXjevtX
	 pBXa5vDVFdO20oljeDqX6VdwcKKSuQ134cJDvGxsSFTvu/Ciz/oUmrPENwmUxQIdCU
	 OIlbF9jWLApbswVTFg7R6pGqpwUzB16OUCGCDOzxFW3r1CeV1cJkwvQeHmLMrVruqz
	 UFUKkVOMvZIqRr/AaOPkez5WNOcuyNq4NZnUDGyjFbAA/Odxst1UmCNlZf3ZnGo3wc
	 X2j5FyycOf8+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B4CC79F9F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880343370.15902.7053510345889959933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2548d476d8d0b965bddc895b336027708cfa13d44f91ff37c10c3dc9aefdf0
Date: Mon, 07 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788803433
