Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7FB2C11DD
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771557294; cv=none; b=YNYJLJrP5YwpiOGfGC3HQ+0fGkWI+Jjd+LpFr/IQ5M4uJj6ZQGEhmiVRcRCA+brz+I/C+DfKJT1/FjDpdZFFfJdCN7IExP4yLLGeeOJjGKPmgjIqYXd96zA/V6JPlB/A2mquL4zBXj/sUM97+B9RV6gf8Qw7//yBQLS2SG5APRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771557294; c=relaxed/simple;
	bh=/1x1cBv4DUjQs6LsU0eDsN+g/15eNzHCuG9Y4t6ISnM=;
	h=To:Subject:From:Message-Id:Date; b=fQ9BwsYNSyX7UFteGK4zOivRtY3f2STsaAcj81a1oBfLDcEo5qBdK5+PKO4ZfzWQKEz7nFqu6ILPLKBdr5Iamr4Qcy2UxIrmHY4puq0ilh3I280sRg+i++8nTjamxWrB4Ow2e4vhVIk1NTC219UPq14JTS/pbOw2aLxx1JFYbVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmQ4PI6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmQ4PI6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFCEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771557293;
	bh=/1x1cBv4DUjQs6LsU0eDsN+g/15eNzHCuG9Y4t6ISnM=;
	h=To:Subject:From:Date:From;
	b=GmQ4PI6M3WwxyIBp80az65hZFo06UZUWwIuSqoAWxTeZpRD4tPjVbGW0FXzL6/j9g
	 HaT3Xtbzfz1C5v8WNOrAY6oYqIEtq//EXgIPwdhLPFbWL0iV37R6brK5jz7zqWUh1n
	 ll8xRajK9uxbhNmsdaW24YuSJMwIrQQwHtjwScBJLbj2PslLZcmBZ3KRdVXzGAblPx
	 48xrg5HdmLib+aIBpTpfiiZEhmT0WGd1H/Vh55Bsj+vf6nSRJI7FIT8IG3kabc0rsQ
	 poKN4T7ONY4JQ4WaISlX8stImKwE8KCq2JUVMGbZW+hvi8BLbLb4qxpN/tW++Pren5
	 Liyugv+qg5xfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919A1C531FC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155729358.20261.17996766488048243707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a194e2de6779a0d4a1c69446248d5b3ab87425838b39be2caa3a9430704ec212
Date: Fri, 20 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771557293
