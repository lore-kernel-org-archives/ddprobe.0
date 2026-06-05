Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E523A7D6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780699474; cv=none; b=sSbjdmFl0eFcAGXaedwTDd2ww7AejBZP7CEmZX2Di0mXLUBezEhdiwwzFM1nZ25tlaOfw8x3DMc3gaA/iyEETibipxkaNjWUqFLzDWTC7c7X4O4aR/bN5HcJqfkQq3AtDKDdjuvk2tCuBu+Dzk1R2Uu50at5uMxdKLNH02Jhmh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780699474; c=relaxed/simple;
	bh=xkttu3kFe2NAsqLwTXDUoWI1v3BnYaXltiU2V3Vizyc=;
	h=To:Subject:From:Message-Id:Date; b=icRRdgivu2TD/DeAV+W1YRpcPm4LILd/UD6xvUPZFBllv1afNfWoPF5XA/xtysU9lqAvdN6OzafXCJy3Ic1Q4K5H8lAIATU5Ccutk+QC6dwX0z7KFFr8Zdl4M3ZXV+YfAjQrmEBrYihj8azred46tkgmfg01fYL16ILb2G2c8oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qf30fpge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qf30fpge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF693C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780699473;
	bh=xkttu3kFe2NAsqLwTXDUoWI1v3BnYaXltiU2V3Vizyc=;
	h=To:Subject:From:Date:From;
	b=qf30fpge7VjAnTB9w0G2jE237Zup+R0iqYLKoMrXs9EllfXjAkdTq2xjDGAGvA54g
	 DN9TwT8tLUEge/MZTANUS2F3hZE4jy+tE2nZhk5xwEhU7IggQmVH1F7c2nuhg/vCPM
	 cxhysPqHYT/sneTCwUBEqDfXjOJ8mhIXujzvohd3rKgHT/HTloVX4UlLynr9dbUjEI
	 2aNoEuHgi7woTqHg+BKDYrxD1vm8Ef4ka6eLD81LY0iOWBpUTUQfkVwavIyt2t+xit
	 MpGI+Ldg7+hbyZIBLtH9/iC87zoIHToiP2EUVwahuL2Z9NWHH4tsPbxPB1Qq+V3NxQ
	 o8SKM2ntyPl1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE675CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069947370.23213.3676271834790230122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513b27938095f3a74fae7fcfaf353791c8d830624d9aa58d65657bf7aa05bb2f
Date: Fri, 05 Jun 2026 22:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780699473
