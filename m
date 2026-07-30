Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA3837EFE5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785402634; cv=none; b=tdpOYS/5d5WT+cNph+vXx6IYVsblZWH1XCCMmOzpldzRZ0sLhAJXHon0xcfWCwEpKm57onmIZ47DYSrbEg/uIrfQfBj8vYQY/dgVj7KuLG6+eB5xfYTRlOILYHZG5z0hhPbSvzDi3Ahy8NhkOB549vc5Diip6ahhufmm/oNWgPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785402634; c=relaxed/simple;
	bh=6S7rlxX0eRk7Az/HlY6MZi9jNEq7Mqy0/Ksc7GFFzkA=;
	h=To:Subject:From:Message-Id:Date; b=iRGBfkyLFCXlT5wV/nP2wAAng3Jbxrf62gIx3Agk11wV6mXvyfXP+feCjoKDMnJgcVHbzNGVgfbOYe1pNtS6ETRrUD0ipblY7vFW1VbvQeGiU7eqffC1ek5U5qcdVOLuNBfAJnAJt55y9n5HPrjmwkltHYXVZD+kM4LbigTd8WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGBTSb/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGBTSb/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA192C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785402633;
	bh=6S7rlxX0eRk7Az/HlY6MZi9jNEq7Mqy0/Ksc7GFFzkA=;
	h=To:Subject:From:Date:From;
	b=oGBTSb/bpSy//zNN7MPL8G1GBLc+f4aQk5G/F7ecm6xeRRUPiPPelS9H2mwMfACzk
	 h73MPMLGWJ7xCajOdmpSAvQHA58TENk5vdTuU30tSlEBabBKMBmdwFTJS2I8Y0Z6iJ
	 /JBDn7Mm1tLD8ackKVViKRp5DJCtMUKudPFscEyX67mE2dVZlUEFlEmPve3tULPUsw
	 JQK3zJPMiJrvNgmw6EUwlmAE/6dZ2SHSx67nG/P924412+l3gvO9dyr3SprcOBGFAx
	 +TDgo/fkLaSUQuc3+xPXzENuWNwkYmXJHQAM1edzVuii9qe470S1FXsxnY0eBuZ6BO
	 JqVBqxKZIQF2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E95C54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540263368.19771.3154494949855101523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714a980dc043f6e68295a2c9b46c5886d8e562ef8ad54adc5737dbbb7e4db226
Date: Thu, 30 Jul 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785402633
