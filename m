Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A863537F1
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779010834; cv=none; b=CnnXnxd2tfFzGi7TrAPSmC0EO8oLF3msQVbIKpv/SELdMx8lMPqoWhWeKKktTsnbrTtjhNcKa2HGRig6DkZ0GodQt+MmsD9qZohdrytd3WcgIwKecsuNuPjTHeXpiEpRRW6/fnuP2iF0OEXNO6LN1gf2w0MDyEegyxA0EG9Cu4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779010834; c=relaxed/simple;
	bh=ocGNPT4Q+LhHiO/oVyg/9F25swNA912CkvpEHN5egDA=;
	h=To:Subject:From:Message-Id:Date; b=GsqhTRkVztz3/HLyfDjHRCZ/neE0pepJjihNTQMIp1wWksiubNwcLe8IQuoOantys+uNifgMm6QDnuHj4Bfz2SD1kOKUFDymF8dK5/dso0SQUkIr3mkToDWHfeNmr/4G9MYy1mhQ74xkhANPRriJAbgSZ3a70FICcPwEll0QWEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0djXixU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0djXixU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6C7C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779010833;
	bh=ocGNPT4Q+LhHiO/oVyg/9F25swNA912CkvpEHN5egDA=;
	h=To:Subject:From:Date:From;
	b=A0djXixUJP4gg5aF+NbAExXhwrX5AOH3tUvt8KzunErX5L/y4f868tszmSJls3Hcz
	 x2bSWPfyBVkr5fY6Qfw02paiG9essPQmMc3UDkwc2AX+/PBbO3I7PxMkcYNFMutjNc
	 J3vHONHDaEP1+y4jgfgbp6NrsYO9qBHMPAUy8QnQIJj/ATnPzV67FSGkuAiUjafnm+
	 lkEEg6iboHwwLVV5iFQHeVSBNpV8SBm/i4L/P5/ITBJC7DvvJnZG0sIxf4AVS4fQ36
	 X2Up6+gLUojG2YsqQMHWbrsoz8CEAKL92Hdxnkco4FWw7ThdyniGUECObJU00X2WYH
	 USinsCbsGatRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA76DCD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901083368.30745.17979638383079867531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d75f05b307cd76e39afbf5ae170da8fdd877d1d45e39bcd31244c9db82325d
Date: Sun, 17 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779010833
