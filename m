Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5428738735A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782505714; cv=none; b=pZ6AgddCUnU0ThpCubpa8mWl3Y+rxZH3Ji2aS26pRB0JWi6MYYAXMIvCclGo8SjHkyWrgCwCk9nAHOu7g9DEmd2blmBmCP3eiqsWYkfzsCuxZrUvJ+/Qhnk9HmNkmDfGZtYhpkVSlN7izuJPsN8oimdy4uURSjJuNsc0wfmksC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782505714; c=relaxed/simple;
	bh=ePR1mQtGCAJxTWh9WsCudRZJHn4Wx+38UI59WVs5OCI=;
	h=To:Subject:From:Message-Id:Date; b=i6TTqzz1HeiKrULvZT6N6GfNWsKCQnIwgxoQPOTgY0mmUjDbZ0J3J6rSVUXQuAoJDHTe2xasOEEdd4Nlm2ZHfzbHqqiaTH5rmRcwYlmiFlLxU28BB26ZzRRMsp/4fFmHk+8AG2RsRzf/L+ZI0xJFFxVD7oNEliXrVT1Bc+wmFT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4sJz4og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4sJz4og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0710C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782505713;
	bh=ePR1mQtGCAJxTWh9WsCudRZJHn4Wx+38UI59WVs5OCI=;
	h=To:Subject:From:Date:From;
	b=O4sJz4og3FHdcmZpTeVaCKpueTrGlPBfNBbUJzcd5x9E7ibaUzpKArviER6ZUhAjg
	 Q3krtFPd3Mcy7W1ZP7CqBTfo5W1rFopbrSAhH3Buelg/HxBexVF2uxtIYoIpxytgHN
	 Kx4zjm83Rhd4hOiJU1jgc6qVaBCpzuN8AXDh6y6GK+mv03rfiB8oqQbox8vNSTOWSn
	 hlaBEpjEGNDc5rcUt3ssQ+aOmCqtlDKmowDvHoySgusRdtxJ4GLpbf/DfTR20oklUd
	 VZZU7ZsQq+XMijuoudbOV5+HZ/IqWFL+PMSaifEtYeaYYwnBhr1tGjUajJp8kpdgak
	 YyNFjX1zWtSXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8821C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250571372.27206.17149999048719216631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e8994613dd0f7dc8ab62681fbdd5a59c885dc490c7219c8c51c424d6cfeeba
Date: Fri, 26 Jun 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782505713
