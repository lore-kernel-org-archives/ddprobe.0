Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DE62DB785
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790903434; cv=none; b=oEoSHPPOCr20LHZJG9O2jf7r9G7HF4T0uYStozdyQV3RhEVf0YNi7XHFb4Xf49iG48yelYnYKu4zIj89eKz7Nn11MK1TYgo3beNfSDwbpi3p+b4T57ujSBDFb6HOIxK7Qonn9bcNDzY/Rcv7KtLVXerJYFQHjPre54QVpa++d5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790903434; c=relaxed/simple;
	bh=z48Nf3/g0bczAJAhd3bjrZSA8bFOmc7gWmgN9AbhzDs=;
	h=To:Subject:From:Message-Id:Date; b=WLOqPJt5+SJa9Xb7y3WuzQ8P4JSz6YTCFMT0i7OPytnKfCK5h+EnDClswR0cZA5fjJYZY3D+hHBUOi55UTT3rTRt1xhlbqAt7KxreJlgaNxTGYIwIqux2h4RYdvYV+3UJU+hS/4pkC5XGxG9uqEAT2Q7tiZjdVSAPjip3TRXdH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPJtJqEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPJtJqEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19A4C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790903433;
	bh=z48Nf3/g0bczAJAhd3bjrZSA8bFOmc7gWmgN9AbhzDs=;
	h=To:Subject:From:Date:From;
	b=YPJtJqEcrEYDemQ4oy3yC7Qe81gU4RR5/6uIfg3FYVziUScO1JfdWvYaxVseknxxL
	 7wRTwfWI2y3CVXNuHUbiUtIEqzyMp88olohuyd3ENkqAbe4Na4eiqgtmMujomSGQf3
	 e/KvkUucLMxsBCWZRGcCEwS7O+K2QOmqqdolbyVCVWlMqBRCeoSVagzyI8t4MjCjgP
	 OUNodUfwAvajFVxUTpy+ctaSiSkcPmwHY0iAnTpsb/5ctJe9dl1EvgAqbx3xoZW8G2
	 uwsUfhFwr9JjlC3Rz0TptOTjeFdSQvLfTnkTMXfS4JoUyNYpgZPaQcxyQEhbRPQq7y
	 DU+NSYIASRX0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9283CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090343368.22276.7387338139021693492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9082dcb0cf5af9a2b920cff3d005953bc12e649a106d5d7a0c8c22e7a26f388f
Date: Fri, 02 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790903433
