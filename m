Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3287218AAD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769127234; cv=none; b=U1lk9qYXMNCOYHse0iPEVpSYGUdUhUbemNWfdiWaJCTdB/KxyAhZezI/fLZOXouo+iFIEb3Ehlx2tC1JgsT1pykK/NhTGuHXKs7QlH25yaWu7uoz+TMfVKcBZ8uBp+elPsdDH3hUV2nHqnnMzJXZ3bwoxarCqtBV6e8wp58Yj6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769127234; c=relaxed/simple;
	bh=W1h1Ys6b10a8DMeD2uxLW04Uxi/+ymDNxZoEyRcp+P4=;
	h=To:Subject:From:Message-Id:Date; b=lAYLZjz+KHU1QbM3A/iiT1CD8uSTKO83z1clUPnTLRmTJNmpJD0fv4PNFFwiOEhe3tNWqVJJmF3roTN9N9fjHFsLnfr1g5YlWVFsxDPt6mUjUXpl1Hnzhv4A1apXt3ZeD1RR1BXYbSQzqnDo0kW+dLcJj7VX6urgINXdIbh8haM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5HBwawC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5HBwawC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE382C116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769127233;
	bh=W1h1Ys6b10a8DMeD2uxLW04Uxi/+ymDNxZoEyRcp+P4=;
	h=To:Subject:From:Date:From;
	b=J5HBwawCKlkjfqw22uyk6fMWYLCPM6FxqfBTteAPswWno6UhBoUwf5ePwWyVuUmvD
	 +NO/QIh1PXQUGOxA6yK7NgzNvX25W2jJQipApModrsR9QjpFV2yjq6vTqG7Lt308Id
	 jmvCAFCsjoPtfFuZE2QonczGGbMML4H1Z7rQrRMktom+wn6aFPgB25ar0tU5MtuGrx
	 sbcXBN2+45b3zSw7KOgY1jTa0X7I+MOn+SZC5W6V38vYvN+uaqu/Xvg1sk1FrwN2wW
	 zCtvM3nalENHe1CfHiRwTBUIeqQYYX4xpfjgXlO6XfHvz2puQJyOx2BFpWvFKKndqB
	 d5RlzJ3ehl4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6C7D6CFAA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912723359.5060.9127430782511593179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca304219714f9b5af69de0fac77760b751be208f2d743a8d400f4ca06e1f5ef9
Date: Fri, 23 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769127233
