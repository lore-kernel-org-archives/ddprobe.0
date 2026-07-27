Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A9A41B8F7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785168634; cv=none; b=XdvFwgP2tpi/ADNIjPDDZQMe5EHOIpIkl7ZdOwcBW3NSh7P6b5V2s5RhBbRqY+HmQo4gyHVBkmvzIkSOm7Z67Kid3v5+xUKDsgjO4MWt1XJ6+ZGyh8NRaVfdO+IR5z5PRPrD4MqfaxiCSocu/Qrffb7jbrEcBC7D7162ganXuy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785168634; c=relaxed/simple;
	bh=mL7tIjtQwYb5OHIUP4alEzJ5Lw35mzfqY3SaFkTMmKY=;
	h=To:Subject:From:Message-Id:Date; b=EV5QdThqkqEQp1oh9393opoQe/7gM0+Xg89hxGRUZ9s39w2if4S2NZmhyAY74mGIwjkiauaxXtOGNMhM8pZvAoDizCyOsxd4dfuws/PaV/SwuOC8XOcR7CwZoDHo1XKnEwQKlEnBGn/+raG1QHFrwXuIksNxBUCyFnZ9fPhsZAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBN4+Pye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBN4+Pye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB937C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785168633;
	bh=mL7tIjtQwYb5OHIUP4alEzJ5Lw35mzfqY3SaFkTMmKY=;
	h=To:Subject:From:Date:From;
	b=LBN4+PyeO92Qx7ci88Orir9slD8NszgJ1dlLDkODKwvgHd/jDshcEtMh/LFQBHXA0
	 0/eXHclLPGx/wOpSazcDMni5YyyIs6M3sNKKvMhZ8wLh3KUzSFpqC+iXZLEHwlCX8K
	 D3JQ1NY1bVPb1ysVg0WAvedKM0WnrStMxtsH6faqWRpvqV+eZNJ9maRIgmV0Grnv/Q
	 dTRlABEbwnup1a3aOIOGjsH6GcwKWtW2YkDO8ORpdEDFAQLhYnp2c1If3IZrLvgv2s
	 ocSoTE5F03GWcjkb76iaBNpRc9w6OJeNDCBIp5NvWotw01svDLz9KgKZeKiFZDduQL
	 ywrQjidinYVDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B8C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516863368.17932.6060859690182185116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177f25b4bf2b2fa324f148b05d7cfb836c182d6c19f10b6081d176ef8c7e9868
Date: Mon, 27 Jul 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785168633
