Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EA172613
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752023994; cv=none; b=NUlxs7m/+N8EDyJCmp4XTMTDkWFxWgXgPgVuupPbPd3wVGXK33VZeTWMq6hCdoMD//4z8m3ye/47fw+pd4BjjsBGHXv7JGWHHZqZgpEuLCPnX16M90sE7xaXlpQmwiXa9KCFKPxSp6kTA4SjLWTpxfolwCP8ovLR9x5AAhZtdts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752023994; c=relaxed/simple;
	bh=lChXIOREoaugUgrJfSRmrE/ZD3ESltOrd90TMSPDAY0=;
	h=To:Subject:From:Message-Id:Date; b=IUDlsn2DY0bJKu1AnrSzFajlWU9NBY8vzKAN0SvdV6ihYZ5JMdRVQcH5xuAf0uLIuISshUJcwooc6CtFa5aiieLH2PBd7lOM5vViJ7dLEtCe2DqVkpJi+QT2m0pXiy5VWaNBRBUAXty+8g2PmoVnwhw6FqIIM8imYF0t8zGs0g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5awQ22T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5awQ22T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B25C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752023993;
	bh=lChXIOREoaugUgrJfSRmrE/ZD3ESltOrd90TMSPDAY0=;
	h=To:Subject:From:Date:From;
	b=o5awQ22TrG0sHEIfqpQl62FauqyfAuGV3xPVtvv09gnh6b/tNqemZPAzV6Mrpb7aT
	 eKuPs4lnyC5aQV7Hr2PxJbwa96vqCG1diIpP8fTYFWuTF9w578uTagpFhJKVsvJYzo
	 Z5lDXsGGLbZ0HjxQQgNSRnVHjRR+93V1i3/l6OJpLGoM6krId2NWYC3UciXIHRaw8/
	 RtEO4gvaaexFKFo4OxqiahxxOsKObep2NrIvCGbO0ipWfSa+NWsgYDBEOPZXOEICyD
	 Y/hls9j0hJKI71FTF2/fL8/lfjfCcJr6m68fWNv8gmyeuXF2/YgaoPI69DI/xmAb0z
	 /R7FvNmmokbGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ACC8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202399357.29066.7316666932677817107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda6b187d5e4d8c4100c1dc7405cfab6be5e00066e6c08b3be041532c7fcb90f
Date: Wed, 09 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752023993
