Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3780142070
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742248796; cv=none; b=RocmEWElIDNf6TRSYUVGG+I/PRKjyBZhQenT+ZPPzbYgh2qLSvEorEG9WFjaPEYW61wJsKw4Fxoqi5jIreti4WPYPuvXsoJuM9AOMmO40x+8vgvu3iZ0BIdDZRKDsaC2WBfppXnBhMAQSlK2Tv0DNR1JJ80DjvxkujC8jMrWPV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742248796; c=relaxed/simple;
	bh=lcOkeuNiC9dFV1KbTN4OA+XyIjqBVPwU+gl6EwWWu00=;
	h=To:Subject:From:Message-Id:Date; b=XCyYkC3CcxzssX5K13fyjrlihQuALT8JmdgG+oiEqrbPBNG2uGuwSVGkQAtxQvbT8zIEB6aYGwR+z2cg3v84x3ftrhW0VR6Co5+TjqVgeKhsFueDS6Ja5y4d8DQB9B5jKwwjWPiX3K+aG9kPN5xz+/ox+mXRenZbe7w3B6Tc3pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4FlbWQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4FlbWQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0D8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742248793;
	bh=lcOkeuNiC9dFV1KbTN4OA+XyIjqBVPwU+gl6EwWWu00=;
	h=To:Subject:From:Date:From;
	b=C4FlbWQPyw25AJgqEwzMYb7ucC2XePW+w9C4hOfWHyPQQLJZkV+93sOcys0tEo9g1
	 sdp2Bqsz1mUIexPvJ7G7vH8ZuVv+wE319bjk88TfOoTmC8PIByKPi1Lma42H2CxSlb
	 Y5tDyF+aYT7bD8u2ggfc5ca870zCvt6+jRRuvLv4V1eC9IAw4wLfRL6ph9G7C3Fapv
	 x7AkQ95Gx2/uhGPDrt+awXw004x10S04qkRR5MhlUBOfGjEsAmQmWfsBAvrat1dU6P
	 chXOH/AWXw+OFL0dp5eLSWQ8EYM1bzZJYy6qgEPhxh5uyFlYnTmuSkbDdewI/jpWiR
	 GRzZ4FAEVrlKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4FDC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224879360.24385.8488595267297798637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad30b3730419ad9de3ccb925837b4a404289d73b596b27e0b02539b9ad569408
Date: Mon, 17 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742248793
