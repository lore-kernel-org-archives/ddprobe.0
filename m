Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836FF383C99
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780744474; cv=none; b=fiPCejLXoY15mLIM2NlOkV81SYv++D2sE4ZlpQUp8VLmWydIfawJUJONiDt2Sd+pRYX2hv89mDXu2Qouux4R9WRZINoKhowzLOgiDQYTuwnUBusbfBcfCNVJ9ekaBPvW6nOollp5LiL720p5chSXPx9jRG2ZY1RCYqNxNZBYaD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780744474; c=relaxed/simple;
	bh=yFpz4ClqdhJifbd7hJk0UyoLhLiZo2QSkdmg4+8aIQ0=;
	h=To:Subject:From:Message-Id:Date; b=CkdUx/0agkAlsLe2FSuPlnOfL8lf0cBQGqRMA6PDNqZx3KCV+Ignb/MrRQ/r8CmyxVxnPYctiZftY3Ze6uP92cUAz54c2ZejhmvZgpC052C+EckSRXNBXbbDaiavHOLHriirIepgs+7ZBSF6YPQrT6U+nkD4mncrPaAk7fXkgAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBUuIrvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBUuIrvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22FAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780744473;
	bh=yFpz4ClqdhJifbd7hJk0UyoLhLiZo2QSkdmg4+8aIQ0=;
	h=To:Subject:From:Date:From;
	b=EBUuIrvJv9V5Ax5Crc+GOGktfnr/e30lXsQU+OW9+exSjiYM8zxwKZBoclpWo18qC
	 24cnYUTO6IEpCcJGmfM08hQ0HeOxKMPH+XLppckR38hF3Ha2fM10Y94FH6cq9ORAN9
	 0FElGo3R+zZ/t7YJQ0MsvnLRnP1TfXMDtRcGcXE7nvmTmwFuez8oP3fetLzu6L/TUD
	 gwULJf6sNu2TOsjJxmXqKiG6MFGkyfqyAAlwqe+95g1BFo928vJUy8oFiAvKMarJI5
	 fp9LNb3WR/T50diFdRquqN1MIoy56BTgaDfNkXpr+bH7BvJWEi2xiE72NH3R6P57Cv
	 TgInxoE5i4/PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA397CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074447368.12707.15222015115478708002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded3853de5e37e34f0f120aa6decbc66c3f4ca99afc06c62e88eb51819e70bf6
Date: Sat, 06 Jun 2026 11:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780744473
