Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B9A2248A8
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771847694; cv=none; b=EFOJZhNVGozuvo+tBPGXmxIFpJK9we6IFbusH5uYppt2CuU04rERrKHog67QWGmwZf6YP2kYSou9DvmWSwm9z5KEXe1x7Y0KNBv68p/uqhBsmL1wgImHJ3Nfv19PBTz2WNNeDIwOsBOwNa+Sfn+WY2I163oxE/xrT7Wg11hRTa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771847694; c=relaxed/simple;
	bh=xswc+T/OBwwg32+o5LyHXmAbCZo+gRvU826OrSiXNp4=;
	h=To:Subject:From:Message-Id:Date; b=H0lGtqhX9Tz8RXqKfV9QKzEiyonTrvqyToSiVSqBbYMGsAksZN1LU9nRZsJH4K1HRmxgJu5sv9PSRaC+orIoRaLtkOlpj1kGDo21SHEVeu49ZVLSaGpNig6JrZtiH8hpFtsnYo9KAz8mhbmXGob5n+7B2nuJBOOg3N8KHm+8QmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIa5M7oA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIa5M7oA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A466EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771847693;
	bh=xswc+T/OBwwg32+o5LyHXmAbCZo+gRvU826OrSiXNp4=;
	h=To:Subject:From:Date:From;
	b=PIa5M7oAiZiEeB1LlaFxu4rtv+1wXTv7VuT24J98F1kPBcNpqRyQ5OCXlnpo6O6tO
	 aUVrsJTZd4/JGtto6yZgL7wCHofrz8wnWVhoY0yqcseHzKUjuqhsxQQEGZviqGiik6
	 wZafdr6F0ZqSidU7BmkjQVg3nNEqp5XpNyjrEmeXMIdkjIFkD+MXn0Q+GJEPFHWn5J
	 Zurmv7ySl48G38JS/GuhK9N+GRWFmroS0sus80v8Q7+KjcQjOiHsGf3++oyJ+5Pqp8
	 46LpXrYIeFrAAzMjuw4zFpuFQumWCDSOTlKB8CF0dEr917gXyH+sM+1aManJZA4oPf
	 ieBOY9OYttirw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912DEEA4FB3
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184769358.3549.14516365460779651798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6f111d95ceceffccee91d53d766f044c83c87de21d333f7f193c8d7d09e16a
Date: Mon, 23 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771847693
