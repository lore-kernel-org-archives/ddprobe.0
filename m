Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD0D37649D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786948834; cv=none; b=EtRi7FjoizzC6/LrajlvewYE9WFo/hoVaR79vWeCaXTbLcyW2U9wFgu3WSO6lPJTui1+xZP25O5EHR15c/Ffm1lgCxv0K3ZkMvuge0lgun8PpiIWMY3mtpL7wWJOCJBgQ2VBe547BSBBEQdz+SWfEDNhI5gZVi5ttem5KicQ0As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786948834; c=relaxed/simple;
	bh=+zXftmoY+oUFsCwpRz5HW1WZ0dYXnGMHMf9NyIgksUU=;
	h=To:Subject:From:Message-Id:Date; b=dl2lw3oL+QN8mG6wLNhLjzD/MEE7Q3t5t3yh5ZjaDvVYyELAW3ja/jh/vDsvX/Ag8LaJnw2k97qPyNWTO+bGqIEUXcMXxSqMsZo/oNGgNeJFip8Ni8YVrjgJH1JQxsR0QGi19TJznsZjaqzeO1YRS6SzHUIjPS0D+LRLRrlOHxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuCACGhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuCACGhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE23CC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786948833;
	bh=+zXftmoY+oUFsCwpRz5HW1WZ0dYXnGMHMf9NyIgksUU=;
	h=To:Subject:From:Date:From;
	b=WuCACGhYthBAvtE8+ycnnzAURfVkj88wFa/R8C/LxsLotiMtu+3OHxM0uorkf2Il9
	 lIXydZHVkI2Bszem4513SzSM2zINGE3V7na/EiMcEw9VGkhjic0XG8n32w5vpEzg1+
	 xtAAu+gkU4KaVYSEcJCYjoHuR86b64PKQfzmwvXSpxMwEp/CkTZPthibbRsd0YbDG9
	 QdTJplpZCTSAnXpl4ooIaQ3qHF9CmXyzt27h4hYl/WN4orGZ/lrCc11w6mVPaAy3EO
	 1tkaNTqAIwhxcd2Rsb48g/u4co6AWdT16gsICKYfIZ4FFbbH4EKayDJsF7IoDgSPML
	 0/CJ/Ci61oxUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FFDC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694883371.7001.7391765631138477178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6903aad89eec5b89df964febd25c0d083478a02d28c7b6c7d12d80ca6e5083ed
Date: Mon, 17 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786948833
