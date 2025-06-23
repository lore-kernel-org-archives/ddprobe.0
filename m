Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345C82AE7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750651194; cv=none; b=usx8hS/eXFM60mZawL2J8gSMe0MRWQuxBb9js2JeGUEY7aNLgHQu2p9GMBvvaF1Wk5BRRv+QUi13wMxtMiL/BHaTkM+cXrvyQx1woNJl1LDAmUkNH9IKJ48CspVgOK5nLfO99BiFiM+0ta1ZBT5Ik4QmnMZ8n+5cIGIt8Bc6U84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750651194; c=relaxed/simple;
	bh=p7wX84aMmvfppquBjpcjrgVxjpCou/J5OWCCYqIxnww=;
	h=To:Subject:From:Message-Id:Date; b=mfg2CesUr4lA3QDRg1tCtFfcpspZkQHmiUruNrBoAUALMsO2eNPCBsM3Fkuy+jk4rCQ6ANK13absjyN7idUvxJMxqYA2CY/R8JvVFuR+dDn8rVlE5qF+cEqZqq5khwTb95Zd6co+AGMMgihxbQdhPRarBjQpfcUl1yUE3shD0r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPVDWVpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPVDWVpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B07C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750651193;
	bh=p7wX84aMmvfppquBjpcjrgVxjpCou/J5OWCCYqIxnww=;
	h=To:Subject:From:Date:From;
	b=XPVDWVpONcfiz0cK/S8tK61dWLr8OwKaj+5dUdsKhhjclVv7Um6KF3rUECJO+4ezu
	 zZ8+kzgkC4rO3CMSOmRiDBWyOZ9/KxMbdWnQ6YM29lr0PV5su/8vLa9Ej3QGDZhE8Y
	 Fm4C275KqnZQiVIMPiyZGonxUzIdo4p79krPa0Nnwxj+Kk5bxs6UEt26ghUDnP6cei
	 duuyhFTYlbIRdjOxSB+Zz49I0j+DYLElUmpP+u7bcImSBTTqLAn8TVzPdO1sHc9ty2
	 0/ohrR1A5q5XlKHbJ71YXZcAhZKSKBIO6FLYRQqUO7ud5bwVFiL7HbiFFLNEnqHJwK
	 DD9fLxr5c24qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD4C7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065119358.5293.16506824100750237674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d4434bc29045ec5fd46c4850c13483a3809f5a1a8198c5782fe23c08711dd8
Date: Mon, 23 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750651193
