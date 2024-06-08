Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495FC17C9FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717862244; cv=none; b=tXB8MzXtOsEWpMqO0w0b7647uIN7vx5RAixFUR0MPGniFaWu9PDeo78Cjs7bw7LuWkR7vKEkbUxkdGqJnaI9JcskNKgOcLvm2jHCcpn7gakz2lFhgG5B7rv5vDah8qTnxE85RIrCYojYkLvivIZg1C/vFNzcbJrfSxSKQVXOmWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717862244; c=relaxed/simple;
	bh=uibDaIxHSUrF7+7YDgc0mkA4a8ycmxTIIMKidLdH69c=;
	h=To:Subject:From:Message-Id:Date; b=JjnUivfbscim+p/5qjoNDHKU7smh9yggwglnHb1xdcmEkhXPyYZISgP/fTc3nkBsr8T2ex+5vsfEyrQPJQyvhX4XhR3dxQvv8Sij0/Y/1Xsfv06RRVrxA7kfQXMTB8UDPHxpSLs42/Y94xtyQTTQkRdCbcSM0au5jbKDk75LtDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfQrdAAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfQrdAAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEF0C4AF66
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717862242;
	bh=uibDaIxHSUrF7+7YDgc0mkA4a8ycmxTIIMKidLdH69c=;
	h=To:Subject:From:Date:From;
	b=jfQrdAAGqYvkusnlJvAq8jvjT1BAt6zfKPutVJZAMf8cvYjhCX7VdVA3bR6AiHCMh
	 U6ipbYKPAwAutbDyCIaCZfqsbbXcmvzIu6FLos2HkskfPGunNJvZ9DIzypqEF8houx
	 11zKCoPun0oSp/Bstr1DmV5qbObWIGLKj1jbTHyNnSQCS5FJHIeZpvzfAdiPwY7I3+
	 BPfX0cxKnjTILDKqEEzoCfyykD5Vt9TjCN4t3h4TCskje6So26OASepoLyLNkQgOba
	 vqZ9Ud45oibksWmvdUI7UXk7R4flLKdSSY5/tLCsROcjSVsQYocI84nuaBpURchDzn
	 0ohlbal2ISQyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C9CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786224278.31702.6522959794656205865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9fb8f91a97073d7af3aa10c3fb4e28f937fe906033e965e238ff5c134498196
Date: Sat, 08 Jun 2024 15:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717862242
