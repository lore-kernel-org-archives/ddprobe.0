Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A2C271A94
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786933234; cv=none; b=PsFtSzOLbdma2j12rTxuTvCSVobQ5Or2jZLBU/d3j7ToUx+XdyJuKBI7eV3CGZrzRaI6McsolA+xAn7sSA4lJH6IFGCYIFvRnhiI2xgeQobwOnnuu+G3ne4537UzCed2xdhPM7ZQ4s6YmBGuATGSAuhcyn4S+t2g1saFENVMovE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786933234; c=relaxed/simple;
	bh=wJ+deg9utsHHVz/8KZbN5VAdEyrvlWgs4s2gPK+fElQ=;
	h=To:Subject:From:Message-Id:Date; b=sLjMVAWMh3jZtCvplcLF9hIdPQRt60DsdsDqV9AxGVdZOURGT5cKtIQKJqyvSVgh2i7O6Bu29HH1I3/h90f/4krdlosARGxkbpyKwSWoMPs8EONwBakrEeELKTrsbkFCAxlYvdDuQymkuQoWAMTj6zjQmkMtYRZxmPTzXHS6zm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw39fxUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw39fxUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD2FC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786933233;
	bh=wJ+deg9utsHHVz/8KZbN5VAdEyrvlWgs4s2gPK+fElQ=;
	h=To:Subject:From:Date:From;
	b=gw39fxUWSDtWxn3r2y6xIdKblWiddVwlthJU9gSf9oAiakxLhZv9cYZNG0hm8mpAV
	 f9lX9b++wtvb5/InfsQcgHKNMEsaK0c6fcfz6bhp1030a4KTEnBHKFhk/4hdL/IIKz
	 WetrwQj7dONJrC/U9EMeuCUWlQV6FN015v7a5MyyGrIgeewiyOGKMWSJL1ebs6+QGT
	 8wW9AdOGjfAkQXJ0yaSimYFGQzTCdTc/UfiJdfMfy4D7KEGSgkjBDUXZKIijK8gBOg
	 gGffdCh5RFfVHk1dDh0N3O+Ol4asUVTULu+NChCO+Qm8/PdVh8ijhmAL5+BzYHhzGT
	 OUWrKyRBz+fBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D69C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693323372.12186.18390727759882574914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3afb9d19a7c5baa573c61386ccb37ec1bb114988812fdfdbb49b11824011c9c
Date: Mon, 17 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786933233
