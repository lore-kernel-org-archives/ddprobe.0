Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D422A3033E9
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771707293; cv=none; b=jKfWjSuaYzWMYvKfKn5UN/m4Ji3AaUC4BPvF6dJfHgkgY8y6zj7K8Msx6Rb4fGfrVwbT9oGsv5hSNTz/HVvAJu/OI+ToqWlnHPgvb9hpIf8JLpAsUrHHcBHzCpG8biahHKAZr1WkXPZe4Q9GXS6lNyqv3zKaKrYn/VlIhUEHUKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771707293; c=relaxed/simple;
	bh=VnOhtP/RtmLwgfzP0yyFzwBEodhJqtsW9ZSotfAwb30=;
	h=To:Subject:From:Message-Id:Date; b=WVA2BS2cccMypxirqMCY/tXAHuuNy13C7nLM2/d7n0Azk9mJMvh5XBTfvSw6fS1YTwATHOLDW0IrZ00EIwl77dFIIFsn/96z+FYo1fNsHZ3b5LkELt/qMC4CFQqPNjK2Awd21liKctBrMhQ0jAdUFm6MAwRbB/nyub/Q7jL0LZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/lGUbYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/lGUbYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7076C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771707293;
	bh=VnOhtP/RtmLwgfzP0yyFzwBEodhJqtsW9ZSotfAwb30=;
	h=To:Subject:From:Date:From;
	b=o/lGUbYtQp+EFuTlKIgBkQVRqw33PNKUFmHV/YjVR+3+5xaxr8XB/oWCuALjjVkVb
	 3Id0rh5+ztFgYw/43pi7Fp6kD1v2VJ9zQ6+sH1XOhJ7AcjxsHRvDzS105RUIwC8dQ/
	 4tkdk47CNRP0f9o1yN9igGdpN0jP/loc7w8EUFqXTUxu0yVL5RdJoNb6fO/M7C5X8H
	 G5+SlutZX6GNSLErtnWKBRunhWjbocu8MWc8KdAI9Wmg6mLBqdO8XNnc2YZ1v/IXsU
	 MyxpRqvZ9EceluuIv3PQS/KUPowSjOJHZgGSXTtfwBP6YCcAE3dLbWjc3ZOEYnM/KM
	 SNXlL/ekjAkbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A668AC61DFB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170729360.16301.6621444575207288541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b899776bd395e8d32497fbd4065b8fcffb9ff388f55dc54dd2ecfc18d606038
Date: Sat, 21 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771707293
