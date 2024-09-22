Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299745227
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726988754; cv=none; b=QsFftDiTGpchc2CWy5YEVd5a+sPGGYdQDTfhFvrFK53UJjOF+ahh/XGnVBi/T9aW2VWV3aWuxWOV80Azo6u3G0bALkQtubHSZS7Zw2I8Zis1pWKJIOGK+CNzgo7+KmkaxHF4VnaW2mEoHcVR4gegs8SiB9DoHm8vL4Qh2MWPIpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726988754; c=relaxed/simple;
	bh=8OjNge2c8w4saqR7hdNT6v7IbNFXzwYrsk311yLs1VE=;
	h=To:Subject:From:Message-Id:Date; b=RHVm3AYmUZlGnLdX2dRDyO5XA3NFn80wyVFBU1fgcy721ECk9nitgOvFbJM5y9m0AjmmzvLhhzWgDvLAv8rxdsK1V0cvFBk5VakB8+dLay6BoyHZTFNzArzRAUTwQu0dBeCr/CbVxXwOYOLTp5PFg7qNEsqTQ4gWVJSBox6c/18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlT+9Wsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlT+9Wsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9350C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726988753;
	bh=8OjNge2c8w4saqR7hdNT6v7IbNFXzwYrsk311yLs1VE=;
	h=To:Subject:From:Date:From;
	b=JlT+9Wsmga0F09i3PpjMfNfEaWGGxTX7jcur8xIKMPnCppBKHN3kpf42jJ4VNj5pv
	 5McwmQkjE28M9rYsF3jrnfmohaJGdbq3XRE7Q89ZKTEVS6Af9K6qt5LffCNaRKe8uo
	 16SIF19XpnB06+0pfMwodOXxGou/+JM9Woj8JfAO9XjZH24qMtAjLCH6RJ2FSbtRf7
	 5961h88lZPW/tdl4MvQxM2EZtu4A2jn+SGO/Sp+1O9pJ8NrP5PSwE/8RiHqq7a+Q8D
	 uhUTa4vVu6SVqbVY9sgBmL+5PsXaZvXDuau6zOHOP0oTE52H2b1jp86NVdjpO/5/f+
	 01XEnWXI6ANcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97719CF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172698875358.12664.4191235257208528067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b286c91ef24bf04db684bd5dc7aa8ebd33f95a71a44061cb497bffde208dd346
Date: Sun, 22 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726988753
