Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25919275B1A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758526794; cv=none; b=OZ/8EDJgHZvwEpgBspCLhnf80hrpgmvyB4OzfMHokN9xBzs/nwl+dhMmrctAguJcgtyKR63cZcqZZKhjVS2ENDaZ6ypI4iWygP63GR0tpnv1RU8yhlLdT3qkdah09nK+2F8UpdMAqpodK3yS/bu35V23yip6sDgSSau8HvEN4rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758526794; c=relaxed/simple;
	bh=t76Q9V+uosWL6WEIUYyxR0O47wuVWpLVW73ckNoJbrM=;
	h=To:Subject:From:Message-Id:Date; b=EkgAqqPjdLTTKRdF0vCdGVmXgqyY7YvSX2s9az+0CSMtyHTJwPpr1HAH9m/mFJu0rSQGn0fQWhpO27GZG+pw21Kk9GZK0BWIEQoLclIzVulyi8e6XY1No3U01xe0T7IpjLDAZHFmVcoCGDmmMxitTP3n7i8jFvOCMZ7U0pDhZ9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWHHvmBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWHHvmBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF44C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758526793;
	bh=t76Q9V+uosWL6WEIUYyxR0O47wuVWpLVW73ckNoJbrM=;
	h=To:Subject:From:Date:From;
	b=VWHHvmBSJmvlb+3uGg1oIicD15XthcMlcEcZ8VVH3h7SNHO/fHeqKhoo5o7FCLXrn
	 0yxyq82TFw8QlveX+98NqJ5wDylcRbnh19EkXDNcXc14icKm90pZPjaio1l7C+2xCC
	 lP5NUpKgC3JHLx49AsO8Yb1FB19KZufuK8JIIVLI/FACIcEqXW29ZMH/g4K9OLW/E9
	 N3pGlDO8Djjvd8Hnl1c9E8KeXOsxSnLVfFvRTQ1wX4oy1Yop3/8qtGSlSWDwn91OkJ
	 cq+DdWuraeEBGRftnI+r+/o/8ZyBa8hzPaNHyfnVPuc0R0QDxagbMIgF9aAzvVwoC5
	 qzP+bcU9fIPvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A5FCAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852679360.25204.14128074248436403314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7687d4aa87327ede1d4f88a5a6ae2f446d2b115b25cc3d06d55f78fb6a1498d7
Date: Mon, 22 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758526793
