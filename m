Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615901C68A0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719590063; cv=none; b=nzu63Paq2Iz979tkRRlLm3m7qoMIwAff84ktjDYC3tFccxuPMO4vW0ubmrB64ZD7A0AS9DI9eew8LEBHxG5EZDLkjxPVkQPHP9Wfoo546hI783jz9GJvQJ6uAHAvUsIV/kl35QJZbTOb/hhIy4/2Q58tZzBcpcG7Im42f9ylm6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719590063; c=relaxed/simple;
	bh=/SbyYGeIFUZR4ZN6NdCZkJmmdt9euCIm0+gOH3YU+BA=;
	h=To:Subject:From:Message-Id:Date; b=CEkYiSpcPmU1mrCf/KkJkyaJIbzJaxxFzrbaYUpBhADVHijcGYIz0mhtmBcxu/6/uKIdFF9sDWwkmizTX4nKsINjBh928C7CBzsCC/I2cdusfOZUovYxr7vE4ORb2yttg+LbbL5pE2XFyiFFDA4yoQzuyuiq+tH8T6S7n4QSSQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xvvh/dzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xvvh/dzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D1CC32781
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719590062;
	bh=/SbyYGeIFUZR4ZN6NdCZkJmmdt9euCIm0+gOH3YU+BA=;
	h=To:Subject:From:Date:From;
	b=Xvvh/dzUuG8FTw5JN/DaS9BhZcmC5e/E0bg8NaFJS8vWNLHXkvBQMV0tucNX2lBap
	 M49BlPLE1i+89ci8EMOyZ82RTZ4D9xF5CZg1aPHnvynspNq3lSx5LwbSC6kcYkXqwt
	 37U0od2N9EgXhXXa90hmCHvlbkvZYWhAbOzMFI1lSeXf8yWmGBdm4EXS/Z/rlJ7ipi
	 mRDNZig3VkycpDNDXQjzj8QAJs4QjD8DRyNW5zKAc1xzq/ZuciJJpYDgOSFVc9uo95
	 rAovzU58YQ42bw6vP8ib7d/ens/5pxrwN9fNvK4w2Cb42a9KWy/xe3IE8tl4+PZsEr
	 DSWpXENwsazVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBF9C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959006281.17617.6787866468662618055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b5a0c646b86cd3750c401bca1179874cf9af9c5829726493dae4efc46c2cd3
Date: Fri, 28 Jun 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719590062
