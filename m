Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454683DA7E7
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779870154; cv=none; b=c2EOnZCBSopzYxPQjzXUnR8iR41HH/sBmCxgWft4cFDcMmPVzELpC/m4hHFREPreYUfKM8zmes/GK/xKgOdlontQljWW3YKAzvTj8C/Qs3nlmpnL+ZOXBuYv9EcZtTZTRB002CQdHWkeZvdNZMgg5Vz1w3yPNGuZZ792+Dukknc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779870154; c=relaxed/simple;
	bh=3Lkj3L8GDMmtT5HyJ2XapQUwz59cruZuXubnF6EZ6As=;
	h=To:Subject:From:Message-Id:Date; b=kKrwbZWTLvulaW2bcdHFvAO/+cD8mogX5SgrHH4HCcooK2tLK3nkG51yaeAYhF7SxNTjnVKjo2aJ0gSOK0zWuhCO85CIuoF/imQYkdJNNf1KlK3f8IsMhxYsEGZKXdIw5A4PZ8QRYkuJXLoFtdUjFssLZJuHJUwTUACEQPyHwVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUko/8XL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUko/8XL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B27C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779870153;
	bh=3Lkj3L8GDMmtT5HyJ2XapQUwz59cruZuXubnF6EZ6As=;
	h=To:Subject:From:Date:From;
	b=sUko/8XLM7B4Y9D7UtGXj5pega/A2oKcfWR+jSvWKiZOSfNXA7RA8WgS8gU8lCVNR
	 E3odwAREITJkFLQ93H4r47xOLCswbZ0llFiyufIi/Z1fEkuXWaz0f1pS6sNiN928Sa
	 XeYkhFvQwxG+rQjhh7i2IwCkHykHtptwbbO3kR6r2czA6iJ1vPiKWQYxv4+x0GSkfg
	 4Kzh9JaEYdhJvYbiAWyb4bN81RmbGzc5v+iDWGPecfefu/5O1/MPiEBzMgpmSIJlKy
	 rb5I6+vYEUr4mWn6wXWZb8FnLo0YW9u2tEIlsec3/HKLh8gvk0fDwSgFM4/+UEdvh3
	 G0zIZNL6dfuFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B4ECD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987015367.19198.16450978993172241862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc73bbcc2dc95cd19e7b902dd233997e68c8ab79858243f30b8c6d9b494e341
Date: Wed, 27 May 2026 08:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779870153
