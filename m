Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2D4179BB
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728031554; cv=none; b=CMwqprF5/FGJ3NQRbEXKwbar1FlkrRr8B1h/s42zF5IJmjrWQdiuFni4OiLjGPcZJGmHWB9s8qqnZVGgM8RY2D5JIaxLKS/dxc0NL1oUFAtQHvhGe+Oq5RHfFxfNmV0SFmXrRb+PU+dLPcmaZ7hO8tbbZg1xyEF0jOZXL07Ywu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728031554; c=relaxed/simple;
	bh=nSEDKViKi2oH+9eaAB+ld+3Ucf+46pV0rzVEoTDodf8=;
	h=To:Subject:From:Message-Id:Date; b=nfOd8E1yWIuQNzYVO0TnUKIHNxIBDgx7lQ2eLsEHLJTJtidXQsdoV0pKoBbFDS3w0hLX/fitjahw4+RIFoZkgvryIJqEPB0SInLb1CaHDtCblJgw+uWLR8EyEGVDu49fWEGIi+hilo3UmHmi8ra8i3oh+oOT3qBS+yuOT43mI98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEGKwaAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEGKwaAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C94C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728031553;
	bh=nSEDKViKi2oH+9eaAB+ld+3Ucf+46pV0rzVEoTDodf8=;
	h=To:Subject:From:Date:From;
	b=jEGKwaArIz3ygpj5BZaS+xqfZq7ZuEsNxsOVwPdKtNd8tciGk7OCQfEB7vJSzp3BT
	 VSbg6nbyfBpoN+f/hp/D8C9dyRn7TLkgtVZ7jt8zQP60iJ/Kui029Iqdv7HJH9cJim
	 jWSS8I6meZm+l21Gu1u14p6k5zI1DCFuZqvpK1NCE7w+f9/Lk35pQReOvX522C66TH
	 gMS4SggNglzpNGuDz71feX2rNF5f/9BRS7AbEZE6ajmpyjouL7wcoGdrZa2StnuBBq
	 vXitkmN9RYUprpewFhYyb7dtKv0vxxCQFoL8v9x8my5mO0p2CD5gWo9n09kaa8tMwe
	 YqUu2T1+3W0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F13CCFA74C
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803155363.24192.8660782806702865340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2141bc14a1231ee7735ce2a377b92c3ca3aea3d54f694c8ed22cdbe16fb47d
Date: Fri, 04 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728031553
