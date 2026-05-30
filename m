Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3635C219E8
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780115014; cv=none; b=I7z+4G/cz27UcWsKi9UKV/jFlX4ZnSjNG5dNhww6j0O2ZaRanSjfzs2EoaZRcTf82RaLpk6XMVnXDrB3Bck2VIO72J1aS2OGshdcyudRaPs0yLuaWjM5duUtZ1B/uCahM23kEin1zDp6lJLcMwkrlmQOUccmHZYECVAJShjjy7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780115014; c=relaxed/simple;
	bh=vXDHj6L32iyONjbBALre5DvhUBMs8pLzoASN4rTwFKY=;
	h=To:Subject:From:Message-Id:Date; b=AVZZ2VhRp5Tik+zYl9o7TBflONdw8qX0nOcu76eIj8agmf8ASBvEsDfQv2m8dGd+fzJgAWXJY8qrsDE5ZofWHT++pdmAXrsGvJwATQsMdqrXOeswL7mCGXdt98BsjT17/Xf1LagIg03hJFvAEFGrFwda6G4l0C5q/AKEUTpCAEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRdgH5b8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRdgH5b8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B95C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780115013;
	bh=vXDHj6L32iyONjbBALre5DvhUBMs8pLzoASN4rTwFKY=;
	h=To:Subject:From:Date:From;
	b=eRdgH5b86zMHIxkGj3Kq/oLBfslr0sSkmmjn3NDrylAMMZvZEodetBt7M17rrzzaM
	 O6ALpLJEjJ9HjxEsVOphHggf867gFa6vRW6F842MNYXH1/EFIf6uMwjlTJEMPj8p3o
	 IPQv5ydbgizAe0QgJ2l2X1+oHul7z3Tgf+HKk8f2PqzAFnW47/OUZkxq66JkPxzoYD
	 ID/Qw1+PxjWgPWsFQEtEaes2EWRltv93wy7y4uDMIJ9aeOpZnch2ypsM74LiIO9TCZ
	 JMDC1r3sEUklqwGGcxRZePNkD3kTkew/eM9dzvWRVR9suGdsdPKLKOAwMUwN+s5P5e
	 370tzF1U2bb0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BBDCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011501377.6647.3970495136281583732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d721dda02340244cd163d119a6aac4604e533d299cd5dcf5159faa5b7fbeb704
Date: Sat, 30 May 2026 04:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780115013
