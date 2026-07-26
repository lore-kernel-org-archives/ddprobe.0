Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82D8368974
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785072634; cv=none; b=BN8SX1aWggq2DqbYOYjIWePdFvzFwaM8PdvAl1GkPNLL8hhWbh4Vq5S7jq0ie2oenf513xTJnK24cH8X4nYSryUpbSScrGYE3pKK2SuorvuWhDUOXWO5+frJUdMmRgYYgZOBqvrKQhmqoiPjwuzAdqy422jygUXMl0LwlJ1Sgds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785072634; c=relaxed/simple;
	bh=Cmd1FQ8m3i1qF9cc+rMjZ771X7ZfzHiSo9t1plRZffM=;
	h=To:Subject:From:Message-Id:Date; b=efFPEyy5/fIbg4JvqeyKqXenhvjSQOKpIcds/QnRWc/MtyQMgwNLUwdjvuAOHKosnkcn4/U95f2J+gayAuj/10ai2LSfogS0UsM6J4EVJn4cPlkbJ6aYMcta6PaAUtIweitnm7q9FSuxN+Srt+rQ6hU6zNB+jIOu8gRV21J51Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKRUNyXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKRUNyXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3278C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785072633;
	bh=Cmd1FQ8m3i1qF9cc+rMjZ771X7ZfzHiSo9t1plRZffM=;
	h=To:Subject:From:Date:From;
	b=cKRUNyXWGrAvfUGZ9FAEznytZPmieBrlJbosE+g7inMQE3pfvo9P7C6LyTEs5/eLC
	 Qi42N115NfisDytLqeKhAJuyOpmScBGop6CB4nueb9HO+YkrLGSlhOxFFZRXoKpZNj
	 aza8I0wGlq0yYFkfiBtTmAnufIXjlmGshdxpjigDkVHIWyBAOU4zaZ3ouFM/SeXGqU
	 f7FQHIszjxydECeAEGf7PggXjLzG8i8yPU9cXd/3ttoOazHH020WP2lrWO8jKG1Nm7
	 yG95lxmGghuYio00LuT6KNmqOpvf2mk+cbh+AntaDRCttwhtHdIoPd85jyuII6T1+7
	 hu7u8UHSd8Rcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF71C531FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507263368.24928.14697227931146475707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0e4d19f7a5bee860a0a7ae0c1d18afd363957243a45f98f7c9d9eedda17b32
Date: Sun, 26 Jul 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785072633
