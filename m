Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC9015667D
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767081234; cv=none; b=hzMxRp5T0SZ3gZcHs5HZ7HzNd8PuUUhXEubSfb7hLbJYZVay0uaArCcKOPmk6k7WfnUCuzaPZTSR04CvLShf2W8e+gumd9OicwH85ag/xnStG18CkPXj8wVr2ZjRSVziTeZohfxiB16hBUopnrEFK6md6Pt+s2HpkOPCIao7Yl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767081234; c=relaxed/simple;
	bh=4hR32OinQKfOA/S2XHg3kLLC9yKwW+rByDzWGtO3cP8=;
	h=To:Subject:From:Message-Id:Date; b=b+BccAc924zobM2+P/culZvY4HXL88Q/1N9p+1ewsjEoqXTAlBYVS+D+YXhaIAxoVBT3Yl0nFVcz7sVYPJV95juqj+kR3Oy6DbHlM+gxPz9NZI6LUZKqfVJ86HVcLRAg4GMbLx1QEvSWtCi8fzya4hGq4ylAmcIFyCxyEJk6rHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7aTeOy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7aTeOy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57CDC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767081233;
	bh=4hR32OinQKfOA/S2XHg3kLLC9yKwW+rByDzWGtO3cP8=;
	h=To:Subject:From:Date:From;
	b=X7aTeOy36FYFNNDumVapW6XBBDnlZmq0xG9rB1BL87jYIvmfSNpXIg3lmkb+18EXs
	 ItHfQhpQJXn+S89hDYxzhQWmvWZqmxS2nW4V77MK1H2amaoILQB0uLIY/fIaEyFXn8
	 I+qHNzQqXGKBKbAlxB3mHaI/Ck+NNKx1uH+1kTW6Emn8NcXn+59jjiLge83ShK0H72
	 1SOVXzGG685+Ns/735/VUqMfhy0iZU/j5j72WaJvg/lBmi80L6DgzmURIqYIOxgW50
	 0rwBObTA9hb1YRcH96kUX/eR3/AgRLp0FVJH6yGJaKhH07JCOomZYUTTYU43Quo442
	 I0GuKjzvkFxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9250DE94109
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708123357.15059.11403510020001880609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24020ecd0e06c694fd7be3d3b6ec46aaf936d623ebeaa01ea75fe6bce8947ff
Date: Tue, 30 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767081233
