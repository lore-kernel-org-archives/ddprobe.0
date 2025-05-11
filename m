Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A0D1096F
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746926396; cv=none; b=DXOD07tiUNJMBP9P9kUVMqAPSidKOPsB60bujoURqFQIOSawouVWGBvXVbBd3yPWfUNYr9Z8WZcOt8nPEvMuw6GoXEl7GtLnuc6r5wpCzw78n6lYUV5TR5aXtwkg0JN7KHVoO3ZVC6FEEc5xMTJKkeRNEFPZ9d+ZiSjQWl2LAy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746926396; c=relaxed/simple;
	bh=CjfWPUoOQ+83SfzztC4Yu2TRiKKcoFhG50W6R/XQxk8=;
	h=To:Subject:From:Message-Id:Date; b=t7BcX4SDPthdxrIROrIoUJ9k0bTz1S31eM7MA8S8mVqKyKqnI7YxLLac8krBAVpm9f3czFeD/9TcmS1tbzecWmq+FFiVgZNlCG/Wna8Uqxx2j59x+57XarWdPzXqNceyVCEO7DVA3FeuDohFoF9lOQGdwxmieHMqBPT5q3ppXLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIiy3DUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIiy3DUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EAAC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746926393;
	bh=CjfWPUoOQ+83SfzztC4Yu2TRiKKcoFhG50W6R/XQxk8=;
	h=To:Subject:From:Date:From;
	b=oIiy3DUP2dfg12qTYVmnR3hqmVJJ06sRk+NDXlI3LQfy+BrHqYHqN/IJUAUWNdiP3
	 CRHxM4L+ALkbW/KUuzanC/wnBL37S/D+cwzOkTEKyxRpCexzowPa84VEA1r/x+P06g
	 Q6PKMzzp9eRgZMUO7JLlyeloB/eTCBKF/K5pa2KD4gUf7exWx3bmriXfmRL9AwkWM1
	 ns0vLaxg6IYf07ovChsEEE6DVRxj0tNggC++4nrgl1+san1hsw3DNLBaFN0xgQt/P0
	 +tAX8uZXSUHLlmxnLDfYAXMw96aIQdtUoAAb7zUNkPN5SRvg+ibxjpiGr6z6BQOcec
	 Ug7AqtD5LgOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9472BC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692639357.9178.1573522094958794322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366beacaa43b72740e08d573a4b0ab863da17ef1dafeaa534704069307270053
Date: Sun, 11 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746926393
