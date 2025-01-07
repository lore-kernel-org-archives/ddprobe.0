Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFE8165F1F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736223354; cv=none; b=Qs/aZaH2LdZEnNSIQCf8BMdDGnfYHGq9C16obG+UU2uY+V2kzBKTETOu4AiSf1gRlMFmktpJO8eMTAA8LShwRRS/65Wzuuj0AJNYewctQVliaWnKCqhOttKKmYf8nG6Gh0R93A1kojLAaXixtNq7bX2nklnKyaGZ09osTndhdRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736223354; c=relaxed/simple;
	bh=403TfR9oD7jQdb/gtfGeMUXJ7bOC5+7ITxLrg+Uzl3g=;
	h=To:Subject:From:Message-Id:Date; b=Pft8zudTSNpTaCvTho/sqgZ6UUpANjChQGC/aviGa7EO6c8JsUrJDGV8QWfP2i8aIneEO4v9+vmFFGOdA3/HNWz/l+6Pjqi2kP3hJPzz09UyrtVCT2p43YAYtdbDSju8mVHH41XGAg6hpxc0JV6/ljPQE2b7HjBNeEUrghWMvlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOgETTGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOgETTGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49F6C4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736223353;
	bh=403TfR9oD7jQdb/gtfGeMUXJ7bOC5+7ITxLrg+Uzl3g=;
	h=To:Subject:From:Date:From;
	b=NOgETTGzFJzwlet41M0nzog/nsA02ZlA8tdNCBrpR5HnJXYdX7EMKbcapvDQ9y+xg
	 c/MSM9UCnXP7HysK7eKDRx/RSxNYNROJbn+4ZsCMEb1V4qxQk0f47JeS40ioIuWdEo
	 TceO7VrVGdml1OCs8KaRne7NUymZMGtIMbzjRZELHcA1V+7YpGu9hSC8PRJ6dciBTn
	 wZf5krjEb8szWFyktrGUePZ6JijdiPVH9iKPy5o8n9bXp+F0jmf5hSItOCJ3I8LjHj
	 K2T0PTjTRHtAbt3CpnWAxyb4KOVJGiy5HAsrxzXVhQ20RsOUpp1tP90EUf/Ch/HHG9
	 me0XRHvLYRewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2F7E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622335362.21125.5138846156231185232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a1a837ef8d6727a446951a717e4067b9b36e20bee745fd511a405198c5a005
Date: Tue, 07 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736223353
