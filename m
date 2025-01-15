Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414D1199244
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736965554; cv=none; b=mPD4L59NRhUQNb5IMGW8xDYWWgRaoUEg0H2YWqwxIkEGS3F7RWSTqrX4XOuzMucz/MXykur9sRZA8qtUpWcxjmAAf2HXZioPtWGIDCbUC83XjhnrGBMzvJoP5Ac7fiXqlfS5YMJRmmR0QyMPw0coQQOL0kTEMQ+qOKxNYAjy9Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736965554; c=relaxed/simple;
	bh=XHPaFgoh/MkZxVitqh3wyxCiNe9jSFmnusUMhhzLurU=;
	h=To:Subject:From:Message-Id:Date; b=BfwwxV5Ns9Pzy05OTkhTzJn/pvTApWNQBmmOk6TNVj3HbGc1cmgO2+rLhwRJIQHuoSjcOw4/ixKGXR/5FzS0Gn1rCS4D6sgPd5NCNpjJvRQcb/jz1JKw+xH93alhAOGoHPnP66QAWQhIUmSb55+3X6T5rylV6pDJ79xgCGztBTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0aaDKvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0aaDKvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E9C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736965553;
	bh=XHPaFgoh/MkZxVitqh3wyxCiNe9jSFmnusUMhhzLurU=;
	h=To:Subject:From:Date:From;
	b=f0aaDKvFg1Sl0+3an/4R8RM7Ico5QqnB9z6Zwn8uBxIVTP8iPso05clBEoylzyfUA
	 qOXpuBQjyFpErlY40po+ANQtbYVBH4BRCjEQToNoowt34/tjmgswF4/kTt6MeUlacL
	 X8T0J7P3MhX/0AWZ4V5AN6xBQ1OpAoc/kX7mtGSqcpZbnowzFA6JO962x8JVWKy5KH
	 1kQYYSGghk1m/yrDVUkx77YECDL4YLR2FD7m2g+/yySHUTp5oz79Z3saKQ2UTWNjaC
	 IYuEsYI2rKphvplSglCRI+BHBZ0kmPJDeNzgkggg0DA+5qlXEWsodeo8++UoMo1n8Y
	 Zht3nviwu7NPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F6C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696555359.24194.11296234528586908079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4696ecced82624a75a7b8cea0192fa669e64051a36aac6a438dc0a0bef0d072a
Date: Wed, 15 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736965553
