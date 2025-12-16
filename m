Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AABF26F44D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765896234; cv=none; b=nKvvYJz9v4lBagc47VAeIKBYJDoCBuoug5tpoSR5qJjMR/WUtQByMF3M++0gqSSeQleljWKYXERxQRbJm2eTiG0czNcC6eTjYdN4pdtNnUIaFWFIipmFhB/TJyIOn+GYI+e4MuufY4CjoCYt5C8gilAWEXbL7f4uR/IBhHsQbHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765896234; c=relaxed/simple;
	bh=iP5vxbWT3zq9G9f2ZrCnFFLg/ulaNBaskphHyyfio5g=;
	h=To:Subject:From:Message-Id:Date; b=Vj/9FLLJznHGtK+VOimkkJOeCas81ZXeU8r91Mymzc1Kj0SOCcsTR3m9tSMpJNgQfftWL4BP3GrVKZuPSjOQKi6znCOro3sDZRhmtZVVH1wD9sWDiZ/t9pM8tG6VeZMVvUpZEKZneGG3fRgWj3Xx6dRYsEM0YAfv6RwLUTN3Czs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gB+GE6Hz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gB+GE6Hz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35E4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765896233;
	bh=iP5vxbWT3zq9G9f2ZrCnFFLg/ulaNBaskphHyyfio5g=;
	h=To:Subject:From:Date:From;
	b=gB+GE6HzRGX92aQqGf9OkOKW6sZdyzeb2Ca4Fo5Cj8FwDTzlQ8Bpxi7L0SDB8oNUP
	 iOasth+oYNkHqdd68AGOCBAGAToKDgI1neJ04jvNVoKdO1N8vgV9z56efKRvIau/1P
	 CTQskaJqVMFDRhZb/DsHnq6lJeDlvzXM80kft9q9XgtJXnt+q9BT6B6GDNUAwgmxA3
	 tcQ9Uo0S/0GolUBMGs051B3lJ+34ivwCU0tf1SyvOcdwqarS+EZhKX0+5AE93jBxGH
	 xdHUdRsUJAHw/2OalnidFJo4urW8vQiMJf6p8EWK9LYq1+qCw0YZkd2AXg0VRB+7Oc
	 kxqzWnIsXG4mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FAED5E38D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589623358.17392.9524603750104090830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbf04fbf77dd08b684b0d7de55fed3714c2743df9b1fd9e7d4392a36fd5df4e
Date: Tue, 16 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765896233
