Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3747037B407
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776653854; cv=none; b=UtaOk8i5Azh3T22OqITf69iZ2Wig9p7qzva6EodSenfw+QS5FkzTayIYTFc+r6HxrG712b3yZU9GHbXSV3OE6ooAuJQMO3CGpy0xDg6qamG/fbZbfp1NWD9cJBSIwJlD2CJtCshG18+iHgxwntdwX3xP4WHPEsJ+cuU6DkpufxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776653854; c=relaxed/simple;
	bh=fzraullZmqPzU0+0bN+K/NsIncoIKUUlSrFP44o9K8w=;
	h=To:Subject:From:Message-Id:Date; b=f/NjMKCzTAL1yov2yf/e1j1xsjLYUQuiiF0pVi1aCGOwIaomaEOnR29CluHxoh9imy8/fYZbelAvyCUkuOH35+Vp/j1nN3TRcdyL06A0EjJ2aiOPyFqw0d7H0DeJMjci5fc/VqH1ACkwin4CxLg9q2GZDsdQea7GzgQODkLxUY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMgBGQ94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMgBGQ94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81EDC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776653853;
	bh=fzraullZmqPzU0+0bN+K/NsIncoIKUUlSrFP44o9K8w=;
	h=To:Subject:From:Date:From;
	b=XMgBGQ94o/m34nI8B+J2gUTp4DaH9fKbIlbIMGc7ggRiHVlvaqQyqNX7S+OpfoNu0
	 wI5lLD3ABeVl86hJLqFYFLDESqL8e010QoSHTjQ0AILiyn/70Bp69PbznAuIDxtuTR
	 TDdxg2PJRNJLIMedgJuZODEWi8i4UgcfceZsE6w0iOFxb0GCmvSX09KLq8qb3FVWku
	 RVBApC8c2xa7dTu6MgrSgRZa2FM5w7ziARbtvNFNNLYCIZMmDvn3/W8bhEaiuGitiu
	 dwrfdtiSGcn4jPF127j+yK47YyR/sRYWg5MfgkMsZ7TYo0am68vC3OMMqNeHhUm0oG
	 TfAToBV/wNb9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FEAEA71A4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665385368.16191.2433138610970557132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188daf74be28c087550d83ed43f3e8f2296d1b795cb806dda996ef6b53ee9932
Date: Mon, 20 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776653853
