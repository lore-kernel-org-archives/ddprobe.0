Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499B918E1A
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743883194; cv=none; b=rBW0h+Rp0irEJvXWRnaX7zLK6FVWtF5YwaYGXBTbdaR+6NpHSqSIEyGBfwqXNiUb/RXbT1fqFUnW+Ng17rVRDfliuk3ekPRo3C6sFhss+7F6Jjgn0GdcaKh/aXDLaOUA5xHIyxW+kI7bGUxWvyhJu+TXR1hZymfJUeKbExcsjQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743883194; c=relaxed/simple;
	bh=WuWL9Dg+HX+EHlfACtwBuI1ORWht8dXL9rL8cQ156F4=;
	h=To:Subject:From:Message-Id:Date; b=KurYR4WS+AvD92Pn+WWdWxBP1JaxsW0feTztoENcSFNDlt64JEoLX7cXTVl5sTU3XnouWN8Pihxak6QewlLrN16CRWRMaL1g7wB6P30QR1+IKcdG4mjhkL7djxtBC4uywRqg6a77wBz+vVoGI5TS1oSc6cJr7P5W8q9ZuybR3YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caiId3KK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caiId3KK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDD7C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743883193;
	bh=WuWL9Dg+HX+EHlfACtwBuI1ORWht8dXL9rL8cQ156F4=;
	h=To:Subject:From:Date:From;
	b=caiId3KKDVF6FD9ZTODHPG+UcpYKI0HadUOFTf8QzLhGE7cokU/nvsSO7pQ98YQx2
	 k8UE8vLsSoZeElzW6GFrMLpf5RI4SQ0eh2xdv9M/UiYugTKmAr4n4VKFtuHRR5fxXf
	 kVvUcEL2MYM0lnYuyHHS4EmO3tQiBif1oM1u4FK9BQQOnFFXvNo+ulixVy1Tvh8Hhj
	 AbJzLF74h77MuG94j8vsJ1F5qSyZQsrbIa9PsYhez3bt7jyqglShKO5twyavhxsQW7
	 LqDp+tUpFtxWqyLn01CtHhXZjcua36vB19SnpiXRDfk5xU2gFQ3FMWrOf8EokD0Ah8
	 9uF7bugsNY4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC0DC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388319360.15274.12884428591095118021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22638d0dbeed2c136492e1fc4a12d3a1667fb019c26a70f5c83f83ab1499e1a4
Date: Sat, 05 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743883193
