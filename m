Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E881E878
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719749063; cv=none; b=PWGmGOtlt4iPBsEeeskpXDczBfUYrkYeATswLvjoDoVFdvUJ7UX42uVGDws3C3xC3tFeNn/VYVOtR9uoeJMwLj5pM6I47uZA9YM0EtHuwyx5nFLo3bIF6HlOTs+pL0YA5N/biJtUWAt2FYwNeEIYZmDTClbHPUuIm1WmV44VlRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719749063; c=relaxed/simple;
	bh=lqI/3VDhnGQZ4y7jAxTuflrDdKVVYgULiC7Z5Mi5ggQ=;
	h=To:Subject:From:Message-Id:Date; b=tpVDUePXixZPtvnfSQVe5rkcWa+3Ena/kUQ4gZlE+S0M7oMNArwrmXO6mGwpj2rzAXNmWLjkKYNk787A4oJI4lZSjZ34Fx5Wvtw/bpu+qzRrAzgCkApMnDXDfH2nua/hBB0RPIGR41czzY+Vwt4a98qFF4+ugkBury6Lw116Yv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfXQHmAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfXQHmAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D699EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719749062;
	bh=lqI/3VDhnGQZ4y7jAxTuflrDdKVVYgULiC7Z5Mi5ggQ=;
	h=To:Subject:From:Date:From;
	b=qfXQHmAnkqpSTEaUMaxliDayc6pyr010Vdja/9d73zSfU0J2qmgc391k84qWATcyq
	 bf9S1ruhDxuDQcxRpwQJjZZDz7ff3D0VSikQK5OByrGbrhzY7yyxo+3FQVOR4mPHRm
	 tpnECX/cUNYKHLpZWnuEGFErSe1ec/2dqFgSQnXFyzQjzqkSAoPySst+W/XWshcZT8
	 rnRBKRP5A7eM6qiuKqgUKtl3gxLaRtkR95//5xNh7k10TybVxE2lthB1bcaElYWVAA
	 etIWa5G2mPxqHWs/VvUDK4Y6XQ/gyEl//CXzX5xBLVeQJhl00TSfN/odYrJxR2QCO5
	 hqYwiX3QKYSKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA06C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974906277.22080.18030683968430734104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c49732b5d49619018d76005eefbf083a656566f0233aef0a427068d8b94ed2
Date: Sun, 30 Jun 2024 12:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719749062
