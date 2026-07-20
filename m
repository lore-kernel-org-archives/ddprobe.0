Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B73D36998F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784546914; cv=none; b=agS2CxKup8r09+wBFfY2UyViHJu4OHK1Iybkg3E5qF2COL9DJ8wn/BRwFH27+GscxB/pbVI2xkxi17/i96Ofp+k8BA1XniHSVJlkLqS5xHVnVGDE+XxH6P0jG/ouTY3GYc/pxhUfXDEcPrwxf4Liol5RS07MXfTeywDoFT287Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784546914; c=relaxed/simple;
	bh=XRxCipfUHc+IQSbXHuLEZcqmZ8UykdlPOuz/WM5eX9A=;
	h=To:Subject:From:Message-Id:Date; b=umRyVtM2l5TcrKnR3JKl49YYTUKIqTGtFWHdrfSuuZcqWDBovbr8foRm6sM4OfV4WmzPnJybfYrJGNN244SkINaq+vds4QaOjiRzIhBdZb2/2gd4ADIzPr7EYG1AceYfKBv21dVgGOMHq+JBJ5FSI/clKpR9Xo6Vo+gSfLeTsWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XN9FmjuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN9FmjuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBBFC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784546913;
	bh=XRxCipfUHc+IQSbXHuLEZcqmZ8UykdlPOuz/WM5eX9A=;
	h=To:Subject:From:Date:From;
	b=XN9FmjuKc4Q3I6yqIlickE0zs7gcfnSK6JQOEr+T2JQy1UkepznNBSC3FhLPL3Uj1
	 EhHIJeOQSMdFVuc0dav4zpSe08UdHukcgjWOxDfeHi7pYVkluVKDqGqBYR3iDdBCbY
	 qLizzG2l4fi0N6vau5cB35/sHhe8GHycA8PD11Fnp7XP1gUiQ/MMSZgcn8Z9KY6U06
	 164Og909wY08A2YiRpLZxGe9rQKgzKPBYFKMzOIG9TmRmUUWI7rvGwgEWz+T4xwWjj
	 90DwIio9JlFr9DgpEs1yvDzdBEtQRJrrUCopkMf3GWQaudoMEkRpZ40XizHwnGFmml
	 sdnqlNTGtzczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA692C4452B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454691368.18839.14001543322972500498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13300c5a2cd6b303ea5dbc58d252e91856e4fff4e854510deec3bbe1bec0d4cc
Date: Mon, 20 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784546913
