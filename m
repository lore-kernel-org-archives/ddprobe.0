Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E82022A4EE
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758066594; cv=none; b=cFtBgRJtdQXoVfBG414tzTLb/p5C3t0F6hNJNSW9F08a2Am81zOPkKYA2/iRx+M1cGSRcgj7r+DAkfDOwP34Qelu20ihheAp2FVDkKrpIcLqJTR5fL9lpKrmmqKtzavBsqRA8La3sEBO/hMycreQoPdop3yJbRDdOg7pLzvYG6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758066594; c=relaxed/simple;
	bh=5oVS9IaLjlqerzJzjCRyw5CJu57WdpYudKPP5BksXvk=;
	h=To:Subject:From:Message-Id:Date; b=gjZxEt2kdTQh/LN3rBOdzffFoTc2CY9swIQiLkCpQRueDQ44I6K5R8YAnff8ovod5ZGjBTcBY7RyQrCAsKOgKtqFYkym7pJbJbJn3gUYyL41NZClN16cMpaKQYk+qspgJFZfbzfXnoJTBEwNReZLvTmXW5gAEDfAYk1F3ZIPEFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTkEm11z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTkEm11z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758066593;
	bh=5oVS9IaLjlqerzJzjCRyw5CJu57WdpYudKPP5BksXvk=;
	h=To:Subject:From:Date:From;
	b=dTkEm11zOe5Lagq71qK4ETIeXlcsfCdrz7RQXAsvrqp4Qel9yrenZoZI9K4Dw4NtY
	 LtllMcewYpCrR28Fn4u74NIlkI2xFEc8qqyiZ1QOti5FhdWd3h/e3dnUCxN9Us6Eu4
	 ES42iwoCAY93AHq3qLy8tMQww/YkTsZ+rVs6BUiWKQ19iGHMMnJnZw7kd4FLPdhtWQ
	 fMsS6B4cKSDNnEcRm6IChlQJ/kXGUGBYttigIFK0k44zfS8yj80AVdAlb4H28DVIsF
	 3VCbT3XGjWNKoSdh9KcOia++zOpgwRm+5eO2/EgOaZ51NBxnBiUrzN1WnB965QIIqM
	 aION9pDu54iaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256ACAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806659357.4181.5293312980590155704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225eebc28ab4adc5cd9c4a45a6cbfafa623a6207a052af489f8f6fe402748a54
Date: Tue, 16 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758066593
