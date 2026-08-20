Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699DB3B7B97
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787262634; cv=none; b=grRFFB7/VJbAZcIlAZAixDULiy/BMOD+dwtprwEpUsaA3guidE1w2XVI0521Pgejt3dXnKkUe2K5CBRhqx5Ers8xKsT3mngzeLDYXVYT2/65/Q8hfSNZCyv55hcxZil17Vr3XBMI1bw4QMYYT+ijtUzWb9FExQxzjWkywS4X1DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787262634; c=relaxed/simple;
	bh=c7FE3F/7ir5eUNaHZcQOIAe7n40eE74aaL1WZoIB/6A=;
	h=To:Subject:From:Message-Id:Date; b=dMSPzHzy6SfkcZPLNZnNANLJyXDj7AqTvj4IipsiKGaXwcAmh6jtTVBB/WfdR7kRn8p4DlG8YqwNzueeXtj/rCb3VtAqu0furxgv0daMxtCQicQgHUFIgqvrQ9QwxIh+sQXVf8LyhCeUH+VPv/i1p/78U3fdxPHjFmCEaBRMjvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmwWIYS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmwWIYS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC856C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787262633;
	bh=c7FE3F/7ir5eUNaHZcQOIAe7n40eE74aaL1WZoIB/6A=;
	h=To:Subject:From:Date:From;
	b=BmwWIYS2InOfFWZzPncKKOHNohTR1qqiah9yA6oQuEtZITFloTvcJjW6qXJRjbBVl
	 FNWqmlIUq5vJ4VyFMSgaCerRVAmPqZml9l6s8RIdQFv/SxuJ/pRfo7dur/lBaymB2K
	 EHFfb/3k6FCo8NRNHC7qMmWzFLBUDQH1yfBAvhXgb5a7qfEqwu65RWrR7jZ0FFhro2
	 BfKNrVVU4kW4nadshK1qGWK/Hfg5sSE+eoNAkFVyor1uA5fo1h4x4u0rmGC/UmEUlm
	 B04S/9BWziRugqWBlWbjVFK23gRY86XBhXxtgQojDspsibml4v7evCBE/FQ6bZ3P0O
	 4rM25yFmQyDzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4240C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726263369.3741.10135541306699586674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b28f30bb28c338055a53418b47ef04c98a8e2c7aaababdcf1e3c7d201b951f2
Date: Thu, 20 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787262633
