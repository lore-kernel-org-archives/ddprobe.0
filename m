Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C5513C8F3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 19:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742240994; cv=none; b=o0GCYzsQy08sYXtiv5F3Z2aJmCJ7NwRvBIs68m09iXfv1G/CcBfQiMQJTtSaeDeQcun/qSzaG8l3EMoIyalUsp27agvhEkyxQ3gkX5EMqaEJQtpN0V/wawOS2XPZ/HJzkmQtPjngdyPprcFKk5kiESwQwvwcDN3rOedDvKgvwpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742240994; c=relaxed/simple;
	bh=qxG3Np6CcZm/ZGLVUXnKjgSbp2lia7/g7mvE4FdU7eo=;
	h=To:Subject:From:Message-Id:Date; b=CQplY8t59WiZYLWnB+hJwZcPT4cyB83sdJ4VkS2TIu9cLMEKcccOfmRE7Wk9D9S3NZnGDU7Lc65Ie7ZvNwhkUevFrkwNOgS/ABkaxxeGM0Rel7wV3yiAmQuONWqMiD2nYOflvKCc5QIYSkTKXJLO9n69O2uQhA6dE9sibfWYgz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3GiB2u9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3GiB2u9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12A8C4CEF2
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742240993;
	bh=qxG3Np6CcZm/ZGLVUXnKjgSbp2lia7/g7mvE4FdU7eo=;
	h=To:Subject:From:Date:From;
	b=b3GiB2u9EfKC7bdrmmwvLi8N8pIAmC+9t0F9lZ7s3RNspVluTwosFpbcdYKVOMhPu
	 oF9UQpON2DRnDicW1psWFqOGqWTu9hWCl2b5oc4cVo70g4JKEGGUQxMFfjlJKGdCFU
	 qM2gnETsSgaejsG/HrRVhFULNcUwEcEIsCKBlY6dmGTTnY1LdAlV6emtkz7IQ9EsHN
	 mEfpXv9APLom0dlM7LMWocvJNvS4cNbWgVqmBPVudidn8GZxK+fORxSF1jbbvNziLl
	 v2qDu7iCjuy2nifg/fvY7h/pEsCxAh4KdsC8tj6MnYAIfv4gXcvZk2JrqRMXtli1KS
	 y7Edojlq9qldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58C7C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224099366.20649.1665499266647286291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a28cfdf957b0749f7853a5d64f2499b97b4803af42c448c8c585de53db3c33
Date: Mon, 17 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742240993
