Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4050F1684BE
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782510514; cv=none; b=sVsSsi9YH054YAurqnumrbD9/ySh3mjuy2TsriEZmNpQrGywFYYdXtYcp7byuNvLlZqprmDyydj6QhvTn0Ptbo6N1J00yVI30bNTgWA7dM3Q+PyEHLlYA1/lpAz0blYS9WwB0FjQmcD/yW1MlXjWHzd6h4XGxyJIZ7YaNfecloM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782510514; c=relaxed/simple;
	bh=UzJmpNTco3luJUKkla6kGmvfg0NEVHroRYiKLbOoTJM=;
	h=To:Subject:From:Message-Id:Date; b=QsGxCyKYJKkDpBv5xv1onz1HRr0YZSfeXOPUHcweo0qTBBr795pZVGgTK/9jp2xZyl9I0DAPNfE1ZqEEZptq42B5qd12bjw2SXGCtpnUEeIoQNPgmnwMbReBuJblesgsxUS4B4GU3m9FtxDIPvny9Msv31jS/7D6+mUzh066w9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCwp2jjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCwp2jjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3203C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782510513;
	bh=UzJmpNTco3luJUKkla6kGmvfg0NEVHroRYiKLbOoTJM=;
	h=To:Subject:From:Date:From;
	b=bCwp2jjZfGT9o7N64/Ml3UZZIYk5jvGQhkOso34iq3LHLQ+ix8du2zNgdo28eeH0A
	 yno07dNZ67Oo/kFEVWdA/cf2zWCIZgZWqdC0dq5UuJS4aYF11zmDp3zOKSmOUTa38Z
	 dAK8tCXckGcnge2Yu4hTCif0MlN1W39WRhoh8esS5X5RucgtEoh3NclUQ+FJGYupp1
	 LSvVrv/Ey0sbfst2dqypBH+Jhaz3c1hSzVwURXozlMsbLyqYu5AK3+LHLh7Zb8NNCE
	 mXDoQXXppuM7yFqBdBL3i5w+sft2r17/S53/fB3PlHicrffBHJSGxMirxXyCrvZ0Fe
	 RUwaewFAfMcow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B728CC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251051373.10078.12618387105323940746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997d5fdb9f8aaaadf34b3ef1111387c9d5a4dc30a3bc5a3d6dd2853bbc12b124
Date: Fri, 26 Jun 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782510513
