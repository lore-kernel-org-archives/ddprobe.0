Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7AF2C181
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771724094; cv=none; b=DE/6atIpRwul+IueUJnT5gdITa6sPNlR8rLck9X20hmTaE9BBAhFX7f2y4m2zWQlhnO4FFtjUyugL7gdfVsFMQN/dgxkI6WqQqoT9+TZRcwXaxEXtrX8fJp/k3tVPFhAxuyUodp+BtCIjZLF7GB+TAnPIV0uOLf2hX+NwFZHVvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771724094; c=relaxed/simple;
	bh=CO1pXEZBYX+/f+bb8hbc5HDEkHCxduP48IcdqO8Ekhw=;
	h=To:Subject:From:Message-Id:Date; b=dkKG7GTTgKMAV3uslq4hfZA4N9etFodaEokfY7gefJihuruHFUk+D4cYlMw4JXrVpSEtzkXGnVIhiy9BnPcAQtRZ7XCVUnDO/YRHyKcXeYkTEKSa+n8g6DMgyWCMe5c8w9ajcUB7K4C2BH7YEITb+lwVlb0eAgfbBD0libm0hi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv4TXCLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv4TXCLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1CAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771724093;
	bh=CO1pXEZBYX+/f+bb8hbc5HDEkHCxduP48IcdqO8Ekhw=;
	h=To:Subject:From:Date:From;
	b=Vv4TXCLrUUprHDVcZVUkiqSRIc5hT95FOQ5hEVyhjYrFnEpRrt1rQ6D6McBg9ZKoH
	 ikeyqX/wHMevueDuFLoX9YDXlZkvi2RE8GvuCNt4vUJAm+gXGThQBEHVH6ZUMiLbSu
	 /Fs2xI1S/HUkOs3Z/rmsRmv1jPNDxkOEIoZ2JFvsTgyPn2OsFAED2U+KIyM1LGzTAT
	 NF4u4ElE4pmFNa35nxD8GMBve6Ai5OB/jpYHx/CuqBL/i3DdSI61Ycl6zfqYG10EJr
	 LZ9/BsA6V8z0LxksrV5LmiySSIQZpHZ/sf+mV5XuorwgNKUrOQIdzFPzZl6DnvC4ot
	 b9rMwnRJBAjQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BDFC624A1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172409358.10551.18141586579121481346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1691e77e2feeb1a2783a264f42d43e137be259b2ad1575d92efa87b31ca0441a
Date: Sun, 22 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771724093
