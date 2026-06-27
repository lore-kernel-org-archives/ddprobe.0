Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086011C2324
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782601714; cv=none; b=AEXFGDTB3gyrUC2lWc7/jEqOPzU40+aREVrCA1meqlSDIoUhCXvxbxtWBz/gxkr67NLhIOlkZpeGxkOadoFr6qhcAA0R/zLq0nHr30f62PIlflyc9yyAb149zsrrLDVAliuxxXjbRDzWqr8CrsC+KQYwi07fr9x9QtklQleP/t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782601714; c=relaxed/simple;
	bh=wwrQb4ht9YvLmPEF9GHoSc2D09C3C/eXVx+l0IciIww=;
	h=To:Subject:From:Message-Id:Date; b=HsMvjO2933VnrTf0u6A6T3cp8kZ7LG7y3WPzOa+nFuQTghmtwb+HARqIdFC2adDMV3SIAvhel4di9mm1Cupu/uAr2/tvzakZuAPyiMa3GNh3IcNV2y3v/9ELrYyHnWeedKQk/BknpYiV8+sX9RCw5VyPseiKjJWqPXb7tNZL4gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQxnYVgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQxnYVgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3314C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782601713;
	bh=wwrQb4ht9YvLmPEF9GHoSc2D09C3C/eXVx+l0IciIww=;
	h=To:Subject:From:Date:From;
	b=UQxnYVgFO4RRR+ZK/6IDae0RANQ/xjQ73Eclc0v1Z0I2qUJQkvT39fagWFP5dZmhe
	 0ItDMHsRhKj7nDl44qFICGsQfxWkrXLPabTk2aa7de+MrSBZNtkkYzlROJTHrQlQ+9
	 LaZXOEcFTbMXMEXK9pmWMt+GEPHwJXg2cmzmz7uom3WYsgL7KM6ThfoJdxWwpjcHnj
	 Qxt+Jnna4QfT/HbEZo5+1aoYFlhmFBsy9tkzCcsRFmBJsy9JX2+Sxh1b8t5VMwqqWm
	 mccglmk7zbEqD5G5TqjKcanm4KxotE23sGVecScawZPvhAOBK31Hh5NoOYKAO3xIB0
	 siZPTvMY79SVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB31BC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260171369.12873.13076522873446039276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f7c0d7d577b35e7deccb1def5d659c22addef7a56c5e8292b24f64d0665de1
Date: Sat, 27 Jun 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782601713
