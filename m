Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A61A7FBDA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719612863; cv=none; b=Or2/qNG/s/A3ErDeGZZLLC/0EyPFm86lZnkIhA2EzmlkQC294M/mdrfyH1ulOe5F0SDIX0GUqCYZgH4UM0FvzYjYj7t5dtVIFrwV207mV6nKsw3fb1OH/oPs/MpKNPaP1zxw/fLCWLFy8tbAOToy9RI90nRiTI7d7zNWhhqwiMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719612863; c=relaxed/simple;
	bh=uAjRaA8qjnRtHyZ5wOza54Bl7Tdnu46xa4iQsWfeqBQ=;
	h=To:Subject:From:Message-Id:Date; b=t5uxj/JWzCIvacExUSsW1mboHPYRBFUKtDDshxUq6ycRHENmJjGUJ+RAvKOX1EZpWXkxLw/RpagUjj2F8xMWbvwmYolZKs8OYJhWDXY2qdHFy5aKsIuqlX/o4aNwE0FrMIqf9wEv0fS5LE0r6Kn6dFMMnHZHGhuHRgDa6uu0Qvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ismXcCP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ismXcCP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D972EC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719612862;
	bh=uAjRaA8qjnRtHyZ5wOza54Bl7Tdnu46xa4iQsWfeqBQ=;
	h=To:Subject:From:Date:From;
	b=ismXcCP/N7Vq10GCO8nbBbDMyWkWgLclbsjbPI6EV5TYt3JQNlCC1MFt+m9gtoiFs
	 P8KgD+c/k6NslZFU92828R5fBlZGDw7ZNOQdesK3nI8BOZUKbLfxsFQVPlvLmCrHrJ
	 1PyBXwKMVTuysvLXtP77v7gwfHwaQ5OwjTQmE8UlOVTKvsTR3xMjQ48q9Yfim1lokh
	 0ROYeQW+rjSI5itREVqvWTGeRlWhusgcTRT46unF4dYW/W2ZdwAWzdE0SFVCIxgeur
	 8h+JZQi/3XvZYbXQIOizmDgegeIEeNaDxGp8bSMJPBVS+sf/gUjikxskYMeY63ynP6
	 tXru0P1SYKKlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E82C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961286281.4780.16842248487124168588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1554363ce432c7166c9c0920f92114c83e5c377d973ed36cbf3267bd1e94ca1
Date: Fri, 28 Jun 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719612862
