Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446923A872B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781195194; cv=none; b=LvGQ6yGzzJ9K6oOFL0tnBV7D9T+cfQ4Xa30DPF6cZRBrYfj/0Vm+f/puqfo2zaq5GoGmOd6pQSBIU5BxbxmRj28ZqeBe5gp/ZC48+QxYFeoUwfOGpech/lXoieLgsEO7jaJC7HU0OZOAp3gtpMFFr1o6ZLqm13Ksu+zG4PHqXqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781195194; c=relaxed/simple;
	bh=pWWi4aLmRFpKcU7zv2dGgAVpKWr0xFXK3x6FDjZYLHs=;
	h=To:Subject:From:Message-Id:Date; b=YPSrmkeVNxK2ZfXDynh15sohrgPXoKZ5DDcWE6oADXqU5D70eaICMxvoR00NAPVIreqBn8mkZ9n7PIMQX1J1xAtA2hKP2TyQaxF+Yr/nnUtaGrZN67IcSucVFsSQq0VAvrOuqCd+CY+QaNOvuI6KaRMryua7RDj2DF1mlmg/yc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqF5OcoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqF5OcoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE635C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781195193;
	bh=pWWi4aLmRFpKcU7zv2dGgAVpKWr0xFXK3x6FDjZYLHs=;
	h=To:Subject:From:Date:From;
	b=UqF5OcoDATyunPtKltpxTC0q84FWrAH0l+6zVRD7Tss2+VRToJ9qunihTjAb8mleH
	 nvZqm/OmNdQ1hJc6SwBSLNmcshTHgSciHgNSaBEgnz1ZY0RSUCl04hBas6UBi25bwv
	 CmhDccR7ZySKIzqRa4c9E2WQk/cHlrKJICybKtITn/a9AA4RWZlCpYjAXjrTuJ3BZE
	 r7lrLxGVDkdwxfQYWHiKAGpOsNyOEfluWsMjEsZnNmwnVpb5saVOSFEEf5i0/OhEVg
	 TqWpcQww7dFp7P3MG+PJRgnXUUfsmRVHmi5mE58rFrAyBDriyg062L3W9wNbo7TDXo
	 /vuZOpw0+A09g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE97ECD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119519370.19131.18047156043276142189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49a1f81fe845f5f635ea96e90ab6924928a516f76a53a275af65919696be35a
Date: Thu, 11 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781195193
