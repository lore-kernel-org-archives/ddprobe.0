Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B5025A330
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750802994; cv=none; b=LLXEAi2hq1S6L6W8uWjUAp/hK8liXstxPRA5oAiRkOw/DJIngAzcBu/BMYV0vUkugIZGcbvRhWE/fu/852/Jh4LwFnbwkjoRhsFZXspGH0I0/dbFQ+03DuntCnzjgvPUA+HbJLfQmCoIsXW7KFZCLu9GSCUjX0Cp05094g9hImM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750802994; c=relaxed/simple;
	bh=uUjD2qqbL3SoXz6EvBXdNFU3hv4lbu3TQ5sFO3vzyE4=;
	h=To:Subject:From:Message-Id:Date; b=At95dvThkidxxhNdlyNYpnz+p8rMKq3SA/u43WXYxhEh7fKXnemVkN26Gel9L6mByUQxR4vzqIioEu3dF0bV9CaMok7djmBKz7MdE+UdjReRo2jdEORkR9+GzoT6XhCX774xbzt8hI1PUf+eeT8+xIdRCS9UED8ka+F19J3jWHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXKS+alJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXKS+alJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4283C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750802993;
	bh=uUjD2qqbL3SoXz6EvBXdNFU3hv4lbu3TQ5sFO3vzyE4=;
	h=To:Subject:From:Date:From;
	b=XXKS+alJudAijlMHnRFfO5oq5qsEhenud2WMSFxwhqdZUyWvSC9nOkVplzKEGalaU
	 ISZSW+R+SdfmvlmjLUiecGxk+0OpCVl5p+3UQ8AzE7a3wIH2RmyhPfaJJuhHFeryz5
	 dYgA99Hp1/kalOP7ajn8Ey21jeIBbZj0yqqirbE9K+8x/0XGNxBxrlHriildDabMKt
	 66X6lf4OXkeNImxLvLXIuZ0tLbQO22iCSQzg24yIzqnsCZ7TXXm360uYsWh781fytc
	 3qHtvQ0+dvZqSeWNeaZb7rbcIO6/EJ9xl6p2Jjr/MYaMU0aPVexLvyawlb0Sb6MNL1
	 RMGg7plisc4FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9027AC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080299358.24212.3520947200909999839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4bacafcff2a3d19bda64a7c9ea701339b74f61ea290bd62a7a5c85fe0ff256a
Date: Tue, 24 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750802993
