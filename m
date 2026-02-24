Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1871533B6C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771967094; cv=none; b=H9TizSznqNM470mqGAdtyccNfvR3xwsg9l3uo+uWHmhCtx21/r9rmxpMZrOQHbxPlabg46UMBr6owBjsHZ8m8tJLDmncVdYlwVxJqU7PNSEgorKlK2P+UAAWGWmqB3JaLewZoATkWZJsfb2huYLf9R0jnSYVaxIZM0nYq3hWy/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771967094; c=relaxed/simple;
	bh=BlfplZrS87FO/q7w0tJRHELjOyea6WEz8YSwat8Idjk=;
	h=To:Subject:From:Message-Id:Date; b=hvzK7JvjPXzZWixR7Y8jUdI7yns1fxsuO95zTjzgTBph14YJZO0YLaDVzWhHGSuQhZPB7RIjqOmNUrN1eIvcrSonQMsObgyWnNAEddRprSeSvrHCZ3xgnfZyL53zyQHvxD+9WBbSUqChHs/QjL8F0ZGFd/fM5yzW7Yv5cxbCpeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqVbvevn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqVbvevn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE365C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771967093;
	bh=BlfplZrS87FO/q7w0tJRHELjOyea6WEz8YSwat8Idjk=;
	h=To:Subject:From:Date:From;
	b=XqVbvevnvX+3ulhhCOGDU+4Zh1sXVHDhjdWx6L7LsAhVilmQOT3Mn/bpc+mRDciFP
	 0vzVmPzShhuZ/tZJ5QLHk9dxM2yFGE2KYIabAKS1W5nXJ/fz7m+KFvzFQm9cIPO0v8
	 Nn6w3yjJso/xliL+8uvPr03/WN9o38l22N3bW3JvY6u0DyR5P8+mMO7Fr4Lw7MSiOC
	 FUDoidGLeU/f59F9I+6+T59zLcfWM/QLipCYs1+jj/g8i8FnlDvI0DTPzaehpPFULE
	 95u4ZIouRasyDXjGSnxuWScqmZGuiHR4Nlth5isEG7NmS3wprFRkiuDEYLwV/2RKLj
	 HWfOqJeXVIVDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B90F4BB8B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196709361.28641.15926140553697597429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a09daf778898b7d1a029fabaa4cf07def16f1d6e104cd02b88df3aa80fa21c
Date: Tue, 24 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771967093
