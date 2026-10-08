Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777F6392C2E
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791478234; cv=none; b=N71cjVxbXXwfgvuU8+iJ9fObwGUOJM8i8g1CevTq5lQEv2vUMEPwnpUDownzK0SWO17ETJS35Y3JlD7k6juME/beN8W62tYUsnKRI8R+rwGY8rCruLdGIn/HbiuJeqSonUIoZjSVAJFQIz00onrJs4RaieA847oph/85K2BUg78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791478234; c=relaxed/simple;
	bh=OIDixV+1wmxcs5pOI9IiGwL8V447k5YEd1cGOz2igs8=;
	h=To:Subject:From:Message-Id:Date; b=CcQ4+T+WnNi9QaZzjdcztHUq7xFMiYNCpMrz4inxvrnykZzXDXnO1CISEeprWnNUQZJtx2m4CEY5XKa3bFKMMZTSnkYvLsrK+u/gCrhqN6d0fgv3Et8Nz+Duw1FpDsEWX9MQ4FvnNCTGWBZ484iL5cMzYcQmHr8TxcqHCf4akms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U27e24PP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U27e24PP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C064EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791478233;
	bh=OIDixV+1wmxcs5pOI9IiGwL8V447k5YEd1cGOz2igs8=;
	h=To:Subject:From:Date:From;
	b=U27e24PP7oBot2/Pb/AIM97EDenyNiHF+UrTh7tJ39OHz0Qdq4WkLcugLSFe2tH2+
	 p4N8HF/gT9UMkrUBN6pwYBNWUUzZKMugs5GLp+jWbzQL7WSBJFcU0n2YPDgVLn14KM
	 e3VAdaOQwhIHpbLIDfBW2qzVJHcS1epjmAkeXGhCVahps1J8rZnlgp1NFr2yy6si0J
	 X0yuJiiR/YWvkN7AaoD2wsiwynYLsRUiuTZGZHB//XsKskIpXzWCt1Vz6bN1TIKID4
	 MiGOE/tPg4J5sSGufz6Kjzl+WQYdKENZGLwMYQItwKmjHILCFDu91xQKpFbQSUcEh7
	 RN4+PZKrlu3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC7ECA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147823369.438.9264819677005277151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3095c06d6020512acd42214c41231e3f7de4acd8fed7c86d356284ebb79f2235
Date: Thu, 08 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791478233
