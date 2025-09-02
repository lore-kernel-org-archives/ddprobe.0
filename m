Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D8532F74D
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756797594; cv=none; b=Ks0pT/aUe6Z4jWG4mvh95kJJfyrX8RBwoQho7j1xyg91yfOfy3cTe2Y49nT5tT3seehcphXpo4wCq1HHksaoHI6fNvyCCiKxgrDppsYl3l04U5pBWtgZ76ReOVtZ1LmFAaJzqGXZ7Hqt0gnncRFgr+2WSS3UVPP9tVZtcw4k2zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756797594; c=relaxed/simple;
	bh=04XB43El/Oi5P66V1188y8AMg3EYz4T/bVk+GQCIwKw=;
	h=To:Subject:From:Message-Id:Date; b=MoEZ5xUbiwOElxVWfN4hjavnAGREtxpYikznhe4/112RJ4/b1Z8Sh33GIKDpFVfEbmb4dFJwvoItbEThvKZZMfu50BE+/RBsfiuomt7QIn4MtM1JozEtkiDvl5YLH4SM/7+iakpSzjRIyR6kyfhM/GhcM6I8aEr5ei+EJXP9sok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gt0f2y84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gt0f2y84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2828C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756797593;
	bh=04XB43El/Oi5P66V1188y8AMg3EYz4T/bVk+GQCIwKw=;
	h=To:Subject:From:Date:From;
	b=gt0f2y84712+l9jDUHPwEVcLD0RIyjIipWX/Exl4oZjeix5nIaYJcZno9Mfz+gvZN
	 ynevKN6pp3W3eja6tTDUhYpHFQ93rpc87ffykht7YfGnVvPAw5G/oOwbZ3GyCb9XG6
	 oBwL4ZlQYdQdg4Z8apCUwCkJ/SpJ0YJDRQ1ai76Ik87gl3SRD2rwdIWBFvwpDqbCLL
	 CY5UA3fB+QF7iouNYwf5uLdw7b1/F/L957Oy5k2wkOjWi9edmJd4szATKWyUan6jYD
	 IlQ85bx1eQAX8zAZMtrWri5sruf2H8RRbcReCCEMRrw5HDjcrYC0q8XGrhQOGl+S8t
	 Uabu17kb07ZGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E914CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679759357.18541.7529121310280710942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d6670ff439a71a25e6cb7901da8182340e84fea73f64b8edfcc9a86b920a8d
Date: Tue, 02 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756797593
