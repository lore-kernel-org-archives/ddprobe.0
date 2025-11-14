Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DA02E7648
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763103594; cv=none; b=htnHHznIpNkN0Dy53iUTWY4Kjv2VlJ9YQoBoh1i7huuDkw8j2JQsxtKGqAQJ57BEk2pNfUIRgx/mtOJx4pXNiPJWM6DA5C1o4EY1Z/t0x9umH+Pkz0+Br4eOIx5Pk4T2QyODfo5xUYtQGefgeqdRnXEJWU6z+2H2i/M+Ua4/XnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763103594; c=relaxed/simple;
	bh=bB6cWmZxaRiLZmcOzErlZEO4XlBXN1qXnoJZRT1cnlQ=;
	h=To:Subject:From:Message-Id:Date; b=OdYwdR+qDnTwr8ABf0qqwydZBhrhJy51X2WE7zudRIC5kbDiE7KIASJWU8KsxwC5Aj/B5d/GMycUklPhds3LYn7xX/qmlSM4tRgdPqKm+e8K+UMoWrX6DFVQqjKFrnbd77Wr3UxCd9VHZYjB2X8s4gMLHSQwIknPlw3faekVYHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxlu+SXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxlu+SXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59DDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763103593;
	bh=bB6cWmZxaRiLZmcOzErlZEO4XlBXN1qXnoJZRT1cnlQ=;
	h=To:Subject:From:Date:From;
	b=bxlu+SXHvCEaSIPEkzv5XN7wpGxaezQsjpjH+RlJCoIN7B8sFopKaQ3BAYGVbdy8q
	 XtkKaS9JDJ6co9Bq1j7yrIbntvyTZDukRJT95DQ+xYoBAa7EQW8/HL/GWt/1xIyjui
	 /TLzAEETwCA/boJ8QqvtT9E0ec1yM7PJUbe5ZbfowwnckrjRiEXAvoOTcx2w53i+qP
	 AXDT9dWA8eFJFnO0nXyJuCX77ZuKqEsr7htMo2pXsAiFfueMsByDmVpfVj3yIQ3js/
	 ZcacnYGH/uEnYdMxEvXxtHe0hGhPjKealYPJ/Bu8dEwSvKIRFq2kDXUcffJephEMGZ
	 Bp2uWj2+xs+2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247ACDE006
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310359358.12817.9184311350112568794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c28051b5ce459372888d85be96385d602fbd6fa5cb25e3997cdfda43d5f523
Date: Fri, 14 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763103593
