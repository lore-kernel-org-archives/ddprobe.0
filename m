Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D30830CD87
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763500314; cv=none; b=BLiyOwyluVm984nxs1QMgtyLdf6lyKt/TObHK1NTjBXmZqXtUbzF5G+7RvOCxuOYBd/6WNNGPa4L4ZZG4pzp7M5W36eV4wGFAFlRUzY94h+/L/LV+XCGoY+r0TGUNuDikOuvANOqXdx4BoLsh28HmvJJGhQgHk+WEkAWTpPTsAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763500314; c=relaxed/simple;
	bh=xTAAa9h6MiwgHOApFt+Ez4Ppvb4tARfDNM44cslQpPk=;
	h=To:Subject:From:Message-Id:Date; b=YjPm3lKdtBScYWvCKnntmMuoqiCIOUdP+m9oCb+/GMb6XVwbTuCno9OgnBIziPIQE4vmYCHYgWstZ4NcABAwlaIUk7qFVnsq9a5tr5aDWGgQENVsIKIylLpV85WfQonM4REzXy4Nf3GKwwxIwzIBP99NBdKnRKFwOS1dlUeUl6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OO4D6J9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OO4D6J9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C2CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763500313;
	bh=xTAAa9h6MiwgHOApFt+Ez4Ppvb4tARfDNM44cslQpPk=;
	h=To:Subject:From:Date:From;
	b=OO4D6J9cJfvmsy8LPv8c/Mv/Yi2MTLTH7HJcOt+jwhJ3KtsSodP49z57EBaTQ2rI3
	 6l1bMWXgaIivxez////D8qngqhe74Cj7nbJFNTajl2X3X1lEoZL7khmz+N9UQU4p4f
	 X4zwRHxNJmXEFWGEsZCTlaJFRh2O9mmovxBP4jUdZEcEyRUg91ez7COvYYxA6K/VSJ
	 DG0YjxSfheXbFepHKSKqg68byi5UqK+B87i+JD7B8tka1JO5JDNTRPG8Su/hRyP2Fm
	 I85wYUoDZ8h7uwVgBzsNBlNjyLf75be2gwXeyqjcRPESb5zPLTO2X14wLu3uJOYsTv
	 318/188RWm9iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977A1CEE35A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350031360.27698.10637739685802435027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bfa6134e92e6cd50b17b05c9e69b953ef17978619076740bb716da2ea76c680
Date: Tue, 18 Nov 2025 21:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763500313
