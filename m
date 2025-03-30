Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C4A155389
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743339594; cv=none; b=hBkvVXlXU2j34G637XP9/JJZHkBKeNr/QaLcfLfNGY9g6Eu6gYZ7iK0lNQXtmNnAGQ5dXWfmtRUbRX/XSHgCYDtiJYoOC4HfxObuuoYREKw3o8h0hh97i/AGFHFbPS4feJi+4akDH1YYttk+bxlrGN5fWbotq5/BQH2/U7qTEI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743339594; c=relaxed/simple;
	bh=oC1Ux7Uk8uVeOsZ8rZoHh1LPO+hbOtBZK80ygFkawgU=;
	h=To:Subject:From:Message-Id:Date; b=fHS4TXMHOAcRBEYHBLtYfseCkFcEaU/6jFuWqybWuqj/f+FubYCB+Rrc913NTxljFUx9Eas5Hum2+PIJ3kBaZub/bStl2wH/S5q2AkNX6AFTcMluY6RlEdjM6BI2qVfaTy5RGKB9IryHmmCfOtHZtIaevf69ZK7R4xlTUxhqdFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJ2C4eou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJ2C4eou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C1FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743339593;
	bh=oC1Ux7Uk8uVeOsZ8rZoHh1LPO+hbOtBZK80ygFkawgU=;
	h=To:Subject:From:Date:From;
	b=RJ2C4eouLwcHlq1Hm0e/OIJVi/qriZ+xnRwokL8RSM5n5s0HlsP+L5FXguDXMrwBk
	 m0SGOtB92v9RttHRLd1y9hYd/rhn1o2u3QcOl329l7hmcNP4jKHDyK1wbjUcCgpYos
	 EJIKUMkqWTcOwlCIZ04LE37rX2H0IttZZE40BKQOzR6kdi6dMH9Qhm72FNJT/MPax6
	 fuBf2DPQOx4Tpw/QPIvKHp8yTyP8oVsaMfLjN9fM2I1vX/LTv5eZSHcBvQqWAAMNrW
	 NyLGIGX/Lm6pAu0dF88PbebUIDR007PLw85yf3whMMJJAEaxFNhtn71IymZrMo/Rgz
	 PIz6yaEMWc6Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E0DC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333959363.32390.10334078148194431005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f76df4692d936cae6092d01d0bc075a0c45a98264d108308d395944bc426ed
Date: Sun, 30 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743339593
