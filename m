Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EA0139CE3
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738658156; cv=none; b=I7o0EGrrMWskARLb1TT3MSm5s7PxFbElbwItUZ10Pu86fpg0ayyC5jm/Y2LlIpaa1PYdp1ljrMEtU7A4x01ff94v4OGGQjx0/4ECfBjlaAWFq9+f1nM34sFlEJk/X61aXoBhZkSU2RUkpGehWRuvLm3ofIawdI9R2OrFfGbGcCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738658156; c=relaxed/simple;
	bh=f0oq9fjZxmSKOuQHlOlPValxUK5piAlwBfm6vrf1dQs=;
	h=To:Subject:From:Message-Id:Date; b=UV4+ysOYjgop7ou9n50rw22MRkvfhKig48wSQQNfSrfu+TOChTAXS1h806GG2EpEAhtgds3QvBnwZznSYSVdGTFxDEr/JsKRMZrx2yHz59MFnIvckJmin+FWNcD6zAmeHd4fAyaChETbpRCGLxQMZFsM8+G7kaAgl7Vl3ZgNKJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJDBiBy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJDBiBy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4F7C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738658153;
	bh=f0oq9fjZxmSKOuQHlOlPValxUK5piAlwBfm6vrf1dQs=;
	h=To:Subject:From:Date:From;
	b=EJDBiBy+Fm1Om+fbTDIlqRT2brdHkRrkvhgcayBwvPII9+t8P32kbu5ZsJxN+ImMz
	 YXL+yIkgSvemZl48Z8FDJrQDxAdujyzze4O4H/teWCkvfyJO5fhINBeU6kEZCqUjhO
	 f5q/TN9ganfejngt7xGsSgIkCLwQPL/EXV3A5kDKQHcDnRvMhoVCxt8p3w197fQSbM
	 rwdq9OgNd6mA8k8SICLq0F65iO7rEzniUbzDGfHaDNasniX/cCN8RgkSaiH7PaDDZd
	 hg+0QVmVAugL4KFVQ571R8qTs+Ck1iIxn5tJvWinQxqncfjOcexS6dIQ3THRUF9dku
	 ujuWUxQWG0YQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0D8C0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865815362.23281.567740670909141848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b07296937e23b82919eec0241be11b3266c5d15c9f7e21b81dc20690991cd36
Date: Tue, 04 Feb 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738658153
