Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C353385A1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781805394; cv=none; b=i9Q5KpvEcKaxjh7Sg9Ngsf8h99rUou3e5xE9yTriQtUi/zMDVaqvzgTpBZkIBHOkjSVIi5q3LcvCrT7WeZgIidql7MiM5zGyAZ5Cfy2YOymQXRY1NQp0RNfc+EFFuZa37EnehtDkqekB+vT1Ceg193pXWzVwnemQS/XTOsXT6i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781805394; c=relaxed/simple;
	bh=Rh6JzsA3ly+oOpJwVbmDEO3bHqUPOs0XStTaWGyf3c8=;
	h=To:Subject:From:Message-Id:Date; b=bQ/krh34FZJxeDxFhElJv3W9SgzMMxcxr8ZZWyyBsjxfmovxcaxyQt6SB1G10JTxYbDcQi07b0zV0VHrAK+Rz0TeUEteCaolSdeKRnJLLVqEeplH5Kyd98M7uGpLljegPjWC1iyZD/+WMPX6sCqmGZ2YgVw45HQ8s3rJREvtxTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9wAuzJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9wAuzJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B49C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781805393;
	bh=Rh6JzsA3ly+oOpJwVbmDEO3bHqUPOs0XStTaWGyf3c8=;
	h=To:Subject:From:Date:From;
	b=V9wAuzJQXXLOxWTQ4p9TuRmGaaHgPgXWuJYge6s07NyitQBYJHHilCoxU9RphhRbU
	 +aj95WksKfRlRHm4lE+oxypIV4MlYNBLgNSGMk/VqfwZFUdTbyyNtJG431BV+hlfEf
	 kV2JnKAc7HAtPaOIPow7CBcjj5s90k7Sy+qt/o6Z68CZk5kc88ZJyh40XyNm9knu62
	 nxonTJKS+lKWcqcOGQvcVsm2FQ7fcE0TSxtPdRMODQ4ssPQiT2ED0RXsqGDREPcKAR
	 Hl+0JTJwK+y16RxI3hUjN+NwR6JMLCoqRaq0yAD6nXI94pS8Hg4XoUm/aRUD4ffQar
	 Q+VVYpKEcyekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD05CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180539369.10600.4510740534114502441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0108d213d90dae532bc3a79ae385dfb4facf8b9d47ae199fb711185785184d8b
Date: Thu, 18 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781805393
