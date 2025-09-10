Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2279F274FD1
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757503794; cv=none; b=XzZVuWDqTXe9EUYigHAEslADuUh4m7V3L6bFDElSl8qsRBItlbePjwhTQoAuJzVCSRBytWtE3iWcZ92Q0+lmrFfuK4DqZOQVw8GZMWR8sYHgCjeXqtQZ46h9pmeYQisN39l3KhG9jIdIRBREhopoMVr6H1yjTFNSZEb/YKWqbQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757503794; c=relaxed/simple;
	bh=bKnbxKqdvXaKkca0YoqyY+0CasTGuiVSkPwuqM0xfrU=;
	h=To:Subject:From:Message-Id:Date; b=cjvYNfwqUgH+j1HKYznX5eifAtuWEYMXKAxIFafXdBpXBY8qh6zAeCaSJB02Ge5JQKo/2bnmo9sorYe0NbMBlQubvKXCVIWGTlf0oFpEmHa3p/cfqjGleHAv89CPEYxzy1OK8OPwnvpoedPbYoizBPZTHiZIJ4mchWysVWSLFZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCohdgRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCohdgRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76DEC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757503793;
	bh=bKnbxKqdvXaKkca0YoqyY+0CasTGuiVSkPwuqM0xfrU=;
	h=To:Subject:From:Date:From;
	b=hCohdgRDpidke7507o88TiirTFjXlsCZpkN/qHvBbxSrIdbEODRtnmoul2Ec/tmxB
	 sVp7lGfbkomxtrU0p8zAUGEfSVAOb3hMv3CLDDGOB77DMGWtbx/D/tZrGaQqMeRf7k
	 SqRnRie0Pz27xmKaCZsmDRW4mydHowmJYWnjNynK95kd1msFg69qJEuSfSTmZSaQIB
	 OldOSPuy28JIVshb6msvreQCv/5tUHZxBDi0xI3MAsAf1iTGfxrdJ6Uqgri5zrjZTW
	 absyKpwelgs0UC8ihBQfLv0eU3N2+KdT5DCA5oWylqGDvaj3vTazfKf8/t6kGCjYHY
	 2d6T3zYg1J1mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94320CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750379358.3550.6006110533761417746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcdfebde304c7627cb5c68e74fa67f5d371e523e0805d4ff5d219e43a998871
Date: Wed, 10 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757503793
