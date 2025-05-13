Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285DB18DB20
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747100994; cv=none; b=uHBxhhPjq+i1ax/u5pn2gavYhtAruAKQ2yV5MejCB6y4cQpJzdoWda+mWNC2VNn3xbTQZ4Gw6oerZkGz5j+cqfG0Tq6qg33UBdmRcskMFpmESU9iuOUME2Qm3YHtNCMFbAlyAmCOqU3fg+mzQ9atzjJA+v+NW3bQkSatxwcuqjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747100994; c=relaxed/simple;
	bh=zl3cXF/zuhpuhnZ7bOKQ0prqgN0iHPF2gSxiOsXpH3E=;
	h=To:Subject:From:Message-Id:Date; b=Izvd6Csj5kZBlBdloqZTknFY7SAEt+bO9jMa1TmB47bhbiYB4iEtVMFzRNQeZcNkTD4WH7G04dluFGEZcEo16iZ/DnR5UmmP7N324gjQjPRcEyqTAwbfUINpVKlzop57ugOVz7kDIOKRmykCMoX+wt/Wf+8UPmz2DBKtKlcl160=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ocav9M/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ocav9M/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E246C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747100993;
	bh=zl3cXF/zuhpuhnZ7bOKQ0prqgN0iHPF2gSxiOsXpH3E=;
	h=To:Subject:From:Date:From;
	b=Ocav9M/WrPruUd+aRPUgxB3rZI2r215ggRC9jKydXN1KHBsddxYfHdkomYCiM9Ui9
	 zrsixU3A3nYH/HSm674VB/I8HASTX9tylN9QZDZuRgXeQRdKkoqCigxU7pD2aL2LQA
	 Tz8G6qmRyI+z6NoK393nhdXlKeG+iywceyw+7crPeOBV1nVe6kvI/3Jhgd6RXLFKHU
	 biokmGev0bBN/hLnGGAteGht1/vL1m7qNkS1x56sEPXBxwSxHEE++ozASeAtHkH7AM
	 ZQv9Rm6CYfkW9Dz0nztO5uFf5FpZsuu+HAqqbktnznHj6S1vzx+w5jyVFVfR1esFFo
	 4Hwd0RUM1hBXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF8C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710099358.17080.14548250136423686223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad965d1c2b83c9a60925f38d62a42ec972fbf75d10604234bf648c3b06575889
Date: Tue, 13 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747100993
