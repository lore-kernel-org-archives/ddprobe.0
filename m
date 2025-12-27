Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338AE312800
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766867034; cv=none; b=ayEUYq00TQaxvWKqGNhchWl1nhVa8cCbVUY56tlVeIUY0ER7ILbaWvDqrMCkk0xeM76kyHmxcVHp+lk/F3PC12E2PJDG/EAlHlR3CmRXKir4bLOQadJPZeyRkcGq/ohvl9Sf0szD7BlfB6Tf/iS2LZ1y9UHpnCs7L554AoSlefk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766867034; c=relaxed/simple;
	bh=KoPIph3FlloEYOYyQh0lDZYj/PtQanYazhv8nrjatWQ=;
	h=To:Subject:From:Message-Id:Date; b=WlINKtrvHqbUGlbS7ubWTagGSOi3heO1gmaFtxtUrIUoJkxZnEpyLGUXxYy0ux9sxeJGbr8leEhGeUYFMCnYlTk6ogwx/j7L5TRDG+Dletk2YIIsAw1dy35bYAOSLtA55U3pmvbfwseHkjEfZ38EM3oyRGQ0d7qk403XYiNlJEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meysLv3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meysLv3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93B1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766867033;
	bh=KoPIph3FlloEYOYyQh0lDZYj/PtQanYazhv8nrjatWQ=;
	h=To:Subject:From:Date:From;
	b=meysLv3JUVuu4lAGXBJuwC/mG/RJOa67AiVKm0DeBQGbZLYdZiByMTkeUVIUBNOrt
	 QRx8EP4Os9OWZHOi28z6R4Cg7a42COfhTjGxjjMn/8ibzta55S5ngwf2ZgWZ/z0rBg
	 EX1I/kzLQmaIIX+ZG2839EMr3s7rucF0XB6Jy8o8MlJtPPUlz4LQChIOzVYkQCb+gM
	 E60+NJ9M6WIEp0fnIBUqii0Xp61tkjgadloM1hvRrcLXzaFyNjxmGlGIzV8dfohGi8
	 iOYQ2F+5NeWgmnIkbVNSzrvZ3yK8rWpRrFvuzByrnYAR4lQFkNzlqYMWzdavmUWvj9
	 86FMsJWhJCS4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BABE9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686703358.27498.3637823299212917465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70f14c8c9c6240db070da4ddb369ad4bce41d05c97b02b48a1e980bac0c3a78
Date: Sat, 27 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766867033
