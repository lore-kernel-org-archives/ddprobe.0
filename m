Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3181E267B12
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754717394; cv=none; b=N9SLJKPAlPqk2TgTO9OZghtJTF5YAN/Emmipnm0/AV/oiLRqqngsXon6GBJ+BddSuseRGi0vIiapfRIoToRRA89I8hSKdtKZgcxfzIYzryWbp991egwbfPzeR4U0V0tRXSmiHhM+AAeWzTsn+T0i1LsNTachWaqccy5X815pzLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754717394; c=relaxed/simple;
	bh=tLnkJm5e+FpHVXUGYIht5S0vd2LtXgU3BtfZ8VlGUC0=;
	h=To:Subject:From:Message-Id:Date; b=uUtktdmHon3yB0iWXAEE4WEQUoNlX4qHRB2Vh3zqH0KrfJWUlrBlm41SKeiym+OuD6j5XrEylRPsaUTrDbEaXuVmN7xv/Fi5F6DiwbFT2XzzUxUUe679pfRqRyFsw8JtcnO87jpmecDhk8XKoTHqdiaFnfrhlPvIXIsVLc/1EM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCgq8Ion; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCgq8Ion"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754717393;
	bh=tLnkJm5e+FpHVXUGYIht5S0vd2LtXgU3BtfZ8VlGUC0=;
	h=To:Subject:From:Date:From;
	b=tCgq8Ionw7q3T3I4uR/b3tW8MMAxrcPuRFfOpjhne2McVCNP12tkSCe5+fmXgTSbq
	 OS2FdWoVjYci86zrdkxKjsYAznzQh36XdVQLmMwjN5e984peJB1daccyOJZkAu3hFZ
	 XjrACNzcYAK5G7ZCSeMI+Y4vj/7JRak80Sa8DqKp4B4RHn7ViomB2uKaL/k3Doc3Sa
	 OINwCOhSwOgqM/kQ47Y5x+Rh2Wb9hcv7jNEqqSUH+p/riO63IAhX3k53LbcdE8vbVh
	 fmaolzdc8dAkbzjBIQCWM7g3oAuHefFVnRkSRUkTdj30Imo+ATnrp+YeYatmx4hO0m
	 wbPx3T3QV6CbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DEDC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471739357.23257.14003176139302980995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95b4c5a51ee452aa3db55f2c30b4c7f77dc6ebf5688996ca6337a4f999eb8e8
Date: Sat, 09 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754717393
