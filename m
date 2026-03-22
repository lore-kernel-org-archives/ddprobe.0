Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E9F347C6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774198494; cv=none; b=s9KICk3naQzOlebAq5DgRzeDUo0pJ0z8jLQeo5O8tKBfI6tY6HudCXbT3DPO+TMIp8tDl2Mt8lJcwLvcqfdq52YMa5OcmHkek5HAcdIUNECuS7krdbTw7bvwjY7MKLCxv6+pbtJbtBj7LGcW/G7UIXPyqSE7Pf7m9k5BcNsDVmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774198494; c=relaxed/simple;
	bh=iY7DzqkdYGw0JK8rI7HH3AwTVxvmAcTonsAlwCTWEIU=;
	h=To:Subject:From:Message-Id:Date; b=DUcGMqQZh1R9foPFsyHjXSBii2uUh7eSsQS1ioPLbs/gjrEJLwiprZ2Nvtk4hSg3xFE7WJzw9fj02goz6jIVp87wtdLlQPGuFW9Fg6BkHAcZ4DxCGmRzoQ/u2Vi0SgEZJrDuHvFsmK7Pj0s4zcAPKzSMLgip0bgY5waUQuQ3+98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h44I0x5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h44I0x5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B5C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774198493;
	bh=iY7DzqkdYGw0JK8rI7HH3AwTVxvmAcTonsAlwCTWEIU=;
	h=To:Subject:From:Date:From;
	b=h44I0x5Ivbzwev8vmsihKrPOPYOCexVItzILB6ODKS6cO+/fudRzhNKwv+wv9Kryt
	 xSD4uen0U7YeFN2ab1AYIxox9NtZUCJBUKV/P0YD690+4mGfiWOCfaAN9C4UUGAHNW
	 rfJ5BD1AZ9cRNROSBB9g5YkaILlCGNFvIvgz68BM5s/8sPK/m6Tv2+X1Kh2tcfbM60
	 Ujzv3lIvOXZWknayQhKMZxJqoafKoT3cXuX5XcQVCirSug3XwFf5TM1vcyDmmu3hWz
	 JOazreIKIb6wSusMN6nRqUTz/DkbKYFBipmW5ZSwFzHT1oVbY9ficrrUY7FfCxiZcx
	 aXeSxERU7ttZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97684FC72A9
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419849358.12327.13436315091292872528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000aef725c86c34239bc5e99c198e58ef26cffed6fce6ee348898d75abe0eb51
Date: Sun, 22 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774198493
