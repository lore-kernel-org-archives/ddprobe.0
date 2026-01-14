Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1CC392820
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768386834; cv=none; b=GWqJiadwZFt28R0Z3NNBJIYStb3vf4AMdDz7aFT6cdWJWCdsN0XnJT+7Xybveh+DHT2JBzmPdKFRsOF9Nb+KkiQHi6xCwQyMKFd9pXTgmoZWobXTVOrT0W6D6//jQnUt/Dj0JSwA+XhjaF11othZp/7IZ4al8t6lZzw0TEEpcfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768386834; c=relaxed/simple;
	bh=TYZcbU+MQ5g5zFK5FMK+QglqHRIbRVuNbErz1jX3TN0=;
	h=To:Subject:From:Message-Id:Date; b=FUBU6lmTQls+XUOOc208gf4R+uOPpbtm41cnUl4EEdhAy3dWkyh4mRsKC6d/CMsbyQDHf3FGjT1ZR37965TQ423/YlCfG0XNomSuIcsoqsY3oupkWXGhQSxEepVbFciJwx2mLCt8Me+Vtw8LRjcTSuVGSprhkI5+Q/vKZMSex5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esJdUvlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esJdUvlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97531C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768386833;
	bh=TYZcbU+MQ5g5zFK5FMK+QglqHRIbRVuNbErz1jX3TN0=;
	h=To:Subject:From:Date:From;
	b=esJdUvlu0E7yDP/84ZRZmp8EsPfcQYb2rbBL4pQ884SS/NUUxsgd8PN8umtn8MpJY
	 o10tzmcpJCpYl9SFByyIYdhX1yRxbYA7Xq73r0n3ZFbYIUZBpau5B5PIuNUs3HxdCl
	 Rv/YlEmPhfgKqIx4FmwvVGKymwwfudXdl+OyrxQQ/Cojg9K8g5OefnQiYhgwRooTux
	 8PEY+slQUL86Kho3h3Se09/Ei5rSOgFWO8LVpGHwwfAPSTu41HPjfFG169iUuzORAl
	 RX+GBovDZZxts7byOA+gr38DJJ4rNeNztGS8viBDrwTg3YI1DfBe1yJYuvMlyr5Z6s
	 S7OLrqvvsB2kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E5D29FE5
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838683357.19676.1295568745776186579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5247b150eb912583395029207de4d7724de521c13642ab665533a3577fdd48
Date: Wed, 14 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768386833
