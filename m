Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177F11C860C
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774762494; cv=none; b=nbtwSNiU5+afMaLlU5clgSM24z6B2sh991jP48b7PCMUTFoqyrmznvT/m5qHKZTLTSNrRmn0IXeY1dBzaoOc53qaTE3xgME1LvCs4NSCQB5whFe+7LX7JDALvNpS8Tb8sSEzw0ZcE2fwZZABg6FWg2oF09vZ7Y9018w52HX6AEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774762494; c=relaxed/simple;
	bh=lN4UwZ7k07AC3Y9GnxremdDIgrCtlEVUOhKO+gbOi9s=;
	h=To:Subject:From:Message-Id:Date; b=Qhq/9lpHpNeQ2KFIFbc++4g2PfHparDS/l9yIxD9aHrexHJc3QOqnR+eM/o3rUzwPPhAi9f8RygaiNdtqo3ABnvyKwY1pD1k1cZSa6PkV2OYPwh70lp14QtfUmbKbDckbDfbn9RyL/KK04C3TvJZjw16pl1qWjEtFCm93DDzQ1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAcUZymt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAcUZymt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC2AC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774762493;
	bh=lN4UwZ7k07AC3Y9GnxremdDIgrCtlEVUOhKO+gbOi9s=;
	h=To:Subject:From:Date:From;
	b=HAcUZymtCrDq/lYI6T0ggsVR+3+7BT6P7u+ornw2tQWCNx8H8gIoNXCu03I8BnmZL
	 iWIRUsQmVmgr6qT2nfwKK7UofR8MCVoFG+Dd11mx8VK7c7YLATlHE+5qAAFQOnpc5n
	 EfmRAv2VKqXKvgy1UNc/TfeXZe3LLM/Ah/mVF3/Uw2VG3NU4QRTnxO6HdNy/s9Z/9I
	 9KxpLMd/Z5ulg0soQGkQj+K5AHPDfSd3lZK2vPOQfarFKQ0wOex2E3VMH9QPRaKX1+
	 uVtMcITqzta67WmO6oA+YFyfqhnf+pNvrr5grTs2aP++0lTOeLa2NiLh2OIhvtrmtr
	 frjqcHP35F7rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9829AF3D5E5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476249359.27905.4733812524010900628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd866701de81d22a6974515fd8e556aae0546b7dc5a6a03f0d4b1f0d5d4c3d0
Date: Sun, 29 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774762493
