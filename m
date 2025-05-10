Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D01F3D6A
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746855594; cv=none; b=kGqZZ6nH/9LMmQTtS7j6+W5iVJvCGARCkuKaCVCorHxM9POMXvtigNWHEcmlQpNeN7BD3FZwqb77OmltpfN+DbIRYIY4tdSl6zazv9Qyw7nX/MVRjVWhLPc/QBkulsIPnlFREmxUWY1dp+kydP+s3I9nKsyC9LztpxTz9cwPA0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746855594; c=relaxed/simple;
	bh=xGSKJXFjJG0AM5cUl7UYwT7mdp4p+2gCAIbCcwqX9aM=;
	h=To:Subject:From:Message-Id:Date; b=XaosYxMpvOLGm9VHrJ/AhI8KwajD+GccTIW/AEzWAnPARGOWlbC7rYAFWMzFMZ2QDJByAmcUQ07gCYK+uSN/Fe0Lf6XO/T7iq4vOTCbQbpPAxZneVqoVSAR+oMj+PJWbK5pfGdfmOTmOMJigfPWYdt8I4muOQbU8Qv7Zzpt0Yuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9fEd0Xm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9fEd0Xm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B3C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746855593;
	bh=xGSKJXFjJG0AM5cUl7UYwT7mdp4p+2gCAIbCcwqX9aM=;
	h=To:Subject:From:Date:From;
	b=E9fEd0XmEgvO67Hk1mRrN5q4KL5fzZo2ZqA8Yk8W326lwsb6L3Hs9e2C0DYxJLzcO
	 pvsMygob2FquMDieBKx3Nwyj7u4PYb+TJdzUvHfpNN3NG7v0J6ZftviMdS4D1Xzi82
	 3fjUO4uittgYTHSlLR96ZDpmQwc5woLAQFxYlLxvVWVNKA7bdh9MZvm2VHkD7jYv7B
	 jDs7u9o7sjPncVzvsWcTJSRmXOY8yCImD6c26P55jaFcFPovp1KOU1cQn7J6HP+RsW
	 Iwxtkqfn+UOOfTInjKPSdLmov3jn/rNLfTwyUK5TIul0sF88rJLAZSVZ0Vne8LMZJo
	 zInhrN/CLT5eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AE4C3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685559358.4903.14160680840058346289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786d17026feb33538b4dc3356a39d069b9be3e9ea2e4a65eb35e1dc36120284c
Date: Sat, 10 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746855593
