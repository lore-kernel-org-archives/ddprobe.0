Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2A93E51E8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783379314; cv=none; b=qIhlIk4WnmQWd/SuGhliGf3hN96Kkx85UOnc7Swncwe8pLXtD5ZxGGwRa+CWyw1FMiro4/weq0x5/BZGWGudHRIKAybl0dp6QZKTw2MhwrpMUEPYsU9b6Xcv2lCih/uG7wMcZUcKwMT6QU3be28IBwqWh1rGycUVIBnh6InfJAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783379314; c=relaxed/simple;
	bh=6LtLhUIAqdxhDEXMWha6IY3CN0ZH17Hl0vvz8zxmcAc=;
	h=To:Subject:From:Message-Id:Date; b=DTwqOZzdkzbPqlIkAOhmHSO2sAy7U8c2LMhwOfGbI6Z4FHkmqb4jXAJvSX84o3GIft5NGAFjk/1J+npVGqqmz3ThAqXURJdnrs/Yb0obOmv82gLi+/U5ZDLkMcVX9LNNxXGfoH4mkJJ/CmIBIV+LMQsC52Ph2R7oQiQQDz2VXvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGYHzyjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGYHzyjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58B2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783379313;
	bh=6LtLhUIAqdxhDEXMWha6IY3CN0ZH17Hl0vvz8zxmcAc=;
	h=To:Subject:From:Date:From;
	b=FGYHzyjP8eBAbS/AD1OgJGNqOMOvrcQKhAAC8zJvSmiusJZohC3s10zueVb53G5eL
	 F1ABc14vw98QMF/pJLJKLAwlb6GXI/CBDGoP3IVaHFSI6u3n+1pHkKKxSh+wpoO+1g
	 o3RJwgJeASaZizGuQbLBayBv7OqLsvdA3yYChipWPicEtfBusAUMr0EOJEt4qh4xeB
	 aZa8Jx/VbFS0Lqv+qR4ko0sZrwMg4vfmVlwVHbO9bVRe7L1QBG8yeN3LmK1mJXW2wG
	 aog/dDCoz9l6nX3l9BuOJax/Br2tSI0JXDWO1Ky9akQbRJ+SHesAjWU0V86fPU1GOk
	 6iM19qeI73PwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E53C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337931370.18590.18386523636593619890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8969dff353680bac7d242d5fbb212dd4cd5a8cfbc76f78b6140b1888324aef
Date: Mon, 06 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783379313
