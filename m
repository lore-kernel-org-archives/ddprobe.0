Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A941288537
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759763394; cv=none; b=BrbisojELs4x7JFaYRT4W2N/5M7dvYH6/ICqSBLiSs7WkSHkaBge8HzYPrfDjfiDnMoFN3z3rZjNCrpNot71PDS1+J8iXgyvWYzkRoxiY7VVowSpqCbW+685c2UIeKjdFoaF3AiASPVCaBSY41yotxHATcwOWUgvhdTlZFijIiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759763394; c=relaxed/simple;
	bh=5Fq+smn97k1YN8aV3lR57XX/dC4CyXI9ZI8EhDwulGk=;
	h=To:Subject:From:Message-Id:Date; b=d+Xm9ueuN/6mVcLkfuhc7ObYOqli2cu2YzHObeH2wDPZnd4agoRt0X5qdpN2yuTfP/s7y7gkV2C1feXF4PiYELI8zSbV9kqOdYZIbycAxbS1T/3Fo8GbVplrE6SPPsseYhsz+4cMNlYFNgL96LAnM3/Vs1MBV0fkBOFgcGt9rkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jftxRmDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jftxRmDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A339CC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759763393;
	bh=5Fq+smn97k1YN8aV3lR57XX/dC4CyXI9ZI8EhDwulGk=;
	h=To:Subject:From:Date:From;
	b=jftxRmDCcUKLhO5ExoMwhb5piuInZSzXnnfQO08l9lAStUKFN9PAoMhSdjWHYBGnx
	 9FcNxaZ1HCyRF8bYEOONmTq9Y7AU48Q4PISylmmBP+YZhjrlHFf87OoiyDX668cJ+s
	 WPft+T3iIUUV75DO4+9U1rRYWilNm+f9wMHAEpHY9qhO9fAK7x90IdEcuGRTceqdVB
	 wzdoM+02hHHEGVSKc3DpAv/VhMbdyqpiu13tgAC7x8McA4rxWXTTdvWK/byPYM8ryp
	 4SseScx03uySxnM4q1LyWGek0QgFsqbfyRa2JeCsAHkJj2KxFRaLV0QNr1KlYFi1n3
	 xOJJ97dC5p8Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90776CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976339358.3472.995508371080044940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9e13f0246fbcff9d08325048e0c66e2713d9669949c59a66923e1f9cf2fa65
Date: Mon, 06 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759763393
