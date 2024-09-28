Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139A413A40C
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727560554; cv=none; b=Hvenyez2yUpk43CNu1W3wkOy5JeLCx+T+J7k8dpPXEI8iRFl8Ydcebo8wzGYldoZf1xIzues6jKNIX8hjAr2DojdTs+anf4ndHXXAtQz5OqZSdlEgYuaxtZZHaBHWadUW3UlBjyDOUIF3NpJApQNf97jXf6oOlgAGayfEkEoVKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727560554; c=relaxed/simple;
	bh=4/oe4EBED7yyU9qlhwdbn2YZ9FCwtwHt0sCXml1Xc0A=;
	h=To:Subject:From:Message-Id:Date; b=Cv/2moKj4rnRcBxOHb5IUJhHHibNldn0zVED6ASi7Ts2/D5GpxC+vvSbOXxHw9oNUYPfrgtfEp2xUwnXkExEz9EHmgis4MKzhCMu2ehJDK3luKWc76z8kBBuYvwbLtpOPTvNNRs7YLwO5GV12exgPz0nOSbWuEihjmt9zVXFELg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxwnAc9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxwnAc9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7CAC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727560553;
	bh=4/oe4EBED7yyU9qlhwdbn2YZ9FCwtwHt0sCXml1Xc0A=;
	h=To:Subject:From:Date:From;
	b=ZxwnAc9WPdtlkdUMRdixoU/I49/qlyPDOLRtQPwdWNtSKRUuZ0fP+ihVOuQVL6x0j
	 O0ztcHJeLFaa+KRU7CY6GLyocokPkQy2K5mwOXOt4pLlNQBlUt7edTaY3xnybNM72x
	 oBXloIJ8z1FIzmZH764+6AeU66sZKtqQkzT+c8d3yPmjMkuJVAB7mNfpa3yj6cNR8I
	 +S0cWUK+EWD3iWHmXG6DQm0jGKfEAoO6vHiv+tKfukWkhwdqp+nCioL6XdyRko4FGp
	 Eie3u9oj7vc02iEwHnuO78xt1s9RAoPmsxN3EWDe16G4vq+SwjuSYd+zkq99Ewyl0A
	 WN8uH31XlpIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9814BCF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756055358.2808.4714547167214604094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf69f33c96816861d0f8359687b8dfe24db07f7dcc49f93c03c1b54254f7deac
Date: Sat, 28 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727560553
