Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323544A23
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776643654; cv=none; b=qK2U2zV9l7IuzJ4OEdbcDKq2RtlGYc3vm70gxnlV0gnOVdB2PswmJj05J+xV5c2/kroGcHJhB+A0s5f/TY1eCFhvPrW6otrnBzXUV1KHaukwjp8PDwaSRmvQmTfbchRuScV4+yeGVTT6Lzvbi18VNagFa6OXfSonShX/ib0VSJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776643654; c=relaxed/simple;
	bh=0JEBuMkA85UphlmrWWXU/1KYOd6LCsqrunH83xdH1Sc=;
	h=To:Subject:From:Message-Id:Date; b=Yorx5hYVnPprpB5HQiyoLO2mBAoBRksQxBokAZer0UDbYz31cMJkaFw6pu5SRyMXpiv4KInRakuH5WyVpVG0LJWSNiUOV4ZglhfUdG/G8aApJprvIK/1lwjK3Qs2TbFzDeGaXunEMuvNHiUartGc8EyR+aCPQLG4ZY6O+UmWMhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiYUCSJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiYUCSJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DBAC2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776643653;
	bh=0JEBuMkA85UphlmrWWXU/1KYOd6LCsqrunH83xdH1Sc=;
	h=To:Subject:From:Date:From;
	b=YiYUCSJUlzgXNAG3A08sSWXigvF4A3ccY20n43UjgkPsfHhPVfIxK9/BcJ6rVxugW
	 WSnA5C+PRD6tI+rBXbskkL9r2T295jfZZgP9CvcCdGMILZq686JjzTDakqMc3fTAEX
	 iTR24yKGtqh5FWsOvf621hyo55zSHQcXvpeLlqaLsCvqPYREIhBGVB3PXMKhgYbTOx
	 TzVqTgRjRVx7Q/tXyCFyK9JQOSwm6arfnpQvzlHi3yK6KklilQlSC6FFkI4TjBk0Jt
	 NeO/HU+7ZFLWE1JG2RCXbNy22g1MBIJ+bFWczwR8me4dm60xEoUtFpyojP3UVeno5a
	 zYsOhIx/u5guw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFADEEA71AA
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664365368.28238.2670198427118189261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d020b08d0a43858cc2e0aff0b3300adc2525c3287b78f0e8210c497b3aef8a
Date: Mon, 20 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776643653
