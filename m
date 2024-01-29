Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E904555E6F
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706521097; cv=none; b=LIN797uv4ubxOeoUGgOawJ+acwn7EVJmYGLO5G8oT0txjWJy2s2Bw2YIsbK5jWpDobHKpuEfWz0RuVMOHF5tO8+2z3MQuNhL+dsco7CK1ZIQIlzdVZf/MHYxW6q0W+ygiQB1e0eCF+l+1B2Ntt+/YVlTmzSTSoLgPOkakwqdecE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706521097; c=relaxed/simple;
	bh=UPwg58uE3w33dAiOKR9ar/0d4PK0HNq2NxpO52CNkGw=;
	h=To:Subject:From:Message-Id:Date; b=PSp1RAnuM3OblA5r8dNcm6hDzzC3KTouj3UwxPlsSvzwPOXzLDvlSP7aWJSDnPg+nEncRLHwxTSTgov+XCQax3iHAkBGnfGxLgf6/BuUohHS+ISflG+H/UMiw38/I6UB3WaaX3Jm5d2HyEygpA9oRnPlW1UTud2GrzbWbzcznHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ts321a9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ts321a9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7AFC43390
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706521096;
	bh=UPwg58uE3w33dAiOKR9ar/0d4PK0HNq2NxpO52CNkGw=;
	h=To:Subject:From:Date:From;
	b=ts321a9PtgYm8r1MOzHjtM4Zmz7CSaZRWqukehg4HSZmvMgVoSWu5LOfciByn/Cth
	 qkHJaUMWiCalozUv/MjAKbsyChte9LTXjErYLwK/t/4woShu9D7SDshZbEQUNVZkWx
	 lgehFBYvc52WeZV/SqH7d528jfnuskEphLwkMtYY6+1tvwlLawUu6fgltI3J7i68Ud
	 hzEPAyHNm98s+M75BUrX9SvsuhYNPYbVucuX7/eXA9G8K7r1Ehx28y+P0kwneJczR9
	 OuK6F9oc6BGDvcM3ykdmzsVTBw3+iq5OvJ9MIucoc8PCN28vBM2LmEcWJ6YFNfUkl+
	 rsOnyEUK8GGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BD4C47422
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170652109639.30866.6744773355743558922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ee298e23d181afa5cbae34f79e2715b51edd0c678fb0159a1703ec846f81aa
Date: Mon, 29 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706521096
