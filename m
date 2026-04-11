Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48F92EC090
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775949453; cv=none; b=QBWZMN356ybvybl5e1X0evzWAxKPlmfpbrqFFTP2nMVDXYvIeF+woy9edI8u+b+CO+r5hl3c++cAD76An8eRsP6EYoi88XyioRdswXGeh8ccnbl+g3SYHqDko9Dj1lfHf2+OAZU2aCE5dNUtxHS/qCUpp+/WjecshcjUTzLGOx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775949453; c=relaxed/simple;
	bh=fTw/nvBxj6yJzmeJpUjVhSricMtrrDTuJ96o0BPA1Ho=;
	h=To:Subject:From:Message-Id:Date; b=jflxDv6fVm/VFuPBh4RAINYhSlnnKbrmom1lYobL1S3WPIpG2rCLScJUv+hDtLAbmZlFcs+cChrYN6SH0/QUn+hCroD5fPWFDB5k6W4vvatQs92DQJ0+iKGoeGIT9QPp4moYw4yFKnTxZFwgdgtVqMlEjXoscZvnSCjxgnNgJAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrOquhCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrOquhCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7276C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775949453;
	bh=fTw/nvBxj6yJzmeJpUjVhSricMtrrDTuJ96o0BPA1Ho=;
	h=To:Subject:From:Date:From;
	b=SrOquhCZduiCDcCOge1E77kYEq1IU771Tmayk2CMBYmJNcQgSbKW1d0hWqLJ5z/E6
	 v062cZwEv60e3EolYaacrPPPGrbNEjCbysiJyMm6ztYHoehWS33X0NxjG546ZlJqbQ
	 B+AVDj7FhZEQmcFc1zGbCnnSKX9CSKzeI0ua8VaXCXj3ZgUygRklid104Mb0qskVwC
	 vpoNEP3ApyywR21lGAC+2WgGD50336yNKertlJxZPaOYHUjK/k4FQQDBEmTFVNCwXN
	 L+bjU4Da+piziqcodwqpeMhdUsIXkkegXNKuLJgBgRCX5+pHjQHVjB6pK54RWvqGfv
	 hNAn+yIRFTH6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91D4F3ED5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594945368.8932.138366241369998039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ab98d3f4dca5db96dc26f30a7e6ede2dbd53e37f4c9a226d3e2d3a40c7cad8
Date: Sat, 11 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775949453
