Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6323A7E05
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768894434; cv=none; b=hJa761ZJead4xbFgJ1dnA4neTIH9agI3qd8RUJwNs3rqmH5T+n6RwNv4dlI8WscSTc6rXJBuGm3Yxg+COqS4tzoUpnNaALtlUT8i19/UEXyT8thPWP4k1e32HbZWzwVwvqJ6iVRtUQcY5+Mesfl5lmrsKBT5YYWe2p0iI09aouw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768894434; c=relaxed/simple;
	bh=qhy8RhJtUt1sdyqIx9T1aBwG5CrlN+az6e1a8XTpkME=;
	h=To:Subject:From:Message-Id:Date; b=Djg+PzL9BkrYZwu0D5MQ+lkJaBwIrZFtvZj8LJ/00X3V7zyz0lqkYsDw5LefjUH5p7BC9Hof2Lp6iSptW+LNbQSPd86zRmzO/ir8/DbZc5aQVp97RSi55IP1fGExdl0gV7ul5lS+ERh4aYbe7gGXcP0+55CPbvvZ/YcGlDlPDsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqlFVlkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqlFVlkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CDCC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768894433;
	bh=qhy8RhJtUt1sdyqIx9T1aBwG5CrlN+az6e1a8XTpkME=;
	h=To:Subject:From:Date:From;
	b=TqlFVlkdVRaXm0YLX/06yWjpoOkZ0BuBsegZXOaLtYBOW778XoGeheLJn5LmNhjVj
	 WGblprWR3y0WEphM0faq0+f/aH0PUyq45dFzvcJRhVxT07cs03qRx+hJkhEFKtOtZY
	 Vb1/h8wn1/WQ1N1+954amlKAY1PE0TWLl2WmdvhmDPH7HH2V9nvGQuYxpsXDo4wnn3
	 S2EbHDA28xMqsNuWE8QlRYoiOvlfeIFjbv2Bp9433P7ju4yikiV4ETjN6Qt9gjXCa9
	 5LEni4Z26MObzry+PzKc8oVDlM+tPd4T+1GwStLyTT3RHRgutJsYCfahsqEMfGElIV
	 RCXDzVRQlpetw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD2D2ECF9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889443358.29876.4098332856386153931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d6b19ed4e6f9d063e446b8c0963fbf59ee1835e32cbd3d9a54aa50b2859c9f
Date: Tue, 20 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768894433
