Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE7E430794
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788768034; cv=none; b=dkBFrIgJYPPh3sjGzuYsjzbG/OvuXrvwS4pwCNpnrSkXAVuweFU8rMS7P9eSY7ClT06Wa2vdH+Wdoa1+UrQkR4FwP8F7b6e7GKQduIeJP/bL2zHyL87JaDTDyJv4oUch43ym/duQczrHwKyYLlHUVqeImP8FlFpB7VzVQDxGPvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788768034; c=relaxed/simple;
	bh=FM2jr3Hl9IBp8J4mH1PaqLNCiVMf0yXgsldmbWKoAWQ=;
	h=To:Subject:From:Message-Id:Date; b=jG0tPTTCi+t8lj3Fjm+TujyrDvHr3kIqBBmd9r/JpmQnRf1wMmKqM/ML3IrKgWuXSuCTom8C7X8YU7nlRjaJ6pvfQnwffbtJ0jc5wCCESi6gEjcWjAGIyCfE5NPtJHMfuxHq/AANKLREhZKyjigmMsdb/YjWTCvotZGpFLoFQIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3sz68ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3sz68ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6261C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788768033;
	bh=FM2jr3Hl9IBp8J4mH1PaqLNCiVMf0yXgsldmbWKoAWQ=;
	h=To:Subject:From:Date:From;
	b=e3sz68gaz5MwARTTFsulyzz2R3OFm2iAzucgtZsZV3/zlWcl06RVgwXSZy4ZQHkHn
	 8jRyL3A40nX962qmG1k0TYveMfrlayolCQX0q1KrTC7yvb8ek4Sc6fd+Zx2hTjG36x
	 KfpeQdRR08eYk4BdzYGJmzDC8SZlw4d7BT89sAz/opbGCob5TLIC9RU4rCxkS53Dsc
	 VWKbFdIf0ze/bbYfAv3bjJNOTqInFT6gKbUZns6ISjXtkvDcBcaI5wfpAtKuFbdrNl
	 SCxU1eWbIYFKhJ2FsInSkZJsZDmbK4073P5NPQUCqSV3n5NKU6lhAGrKFsY7U7f7Pg
	 3hbVg9hsdjRYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B359AC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876803371.11554.4680209780229470187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8158583cedd29eb287e476db1ff24638cb1f33645496a68bcd0c9176794eae7
Date: Mon, 07 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788768033
