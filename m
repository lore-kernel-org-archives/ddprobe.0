Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3F225EFA6
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739386734; cv=none; b=V7+1ZYfvBq5HLz/Z+D2+H2VpczTiLLqFdq1Kuf++Qtp59FsvOqXYq0OMi2Ax1qPzhkIiofAjw2fjxQqhABupGnEtJ9zlLLO02uYZGY1v6Arl1+4oefQCGkk1BqCOO7GUWz3OozDoJ0//CNqoOrVyqBvEOnaIZkWAqWyumyTfpIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739386734; c=relaxed/simple;
	bh=g8K6Fd+e7t7T6taN+fzwPingDeSmAf0cOdP32PeRMII=;
	h=To:Subject:From:Message-Id:Date; b=M4W3fW+afLNxRzUQRkwB/ga6XSeLdJsdD751ao4IPE8CF0koPCKa6gzrWCPHmMcVYDJrjaLrTDhM+yDzMi8LzWcV01u9SLrJWoEwVhF+lJ49wNyFNSVx2JkofVQQ5ul4AJtPpyZy2D0nODEuFdgwdQYjNwXeI3tpzgptt2/MUuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/LAdW/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/LAdW/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A803BC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739386733;
	bh=g8K6Fd+e7t7T6taN+fzwPingDeSmAf0cOdP32PeRMII=;
	h=To:Subject:From:Date:From;
	b=W/LAdW/NxhB70I9JSEKrWAUFE7yRQ8bnXnqrs7TJ/h9M3cnLa2okB4CxSIDRFUy30
	 Ne73kqdXJ1vnes0/PweDL5teKYAg8IcAv3o/8xyd3gdeGPNs8z3Ksj5hTGtnpalSzQ
	 Uja9jseKf0Km5sejhjo4D4hDzOfpAPvpA2D1kjoLHF0gDs4wDzeYdapukY5pKyKE64
	 WjEUkMbmuTUwqKqU/S6k6vbObSKZqZ773qxTMInVySon/r7rGKEuDkGa3UIdS7K2zt
	 ShMl2BP/xn6v//uzOyWWbzNkQ1wwsk4chhGoEx8XpGufiK8Gy+EJg66QKE8ntLsIqP
	 +jO5MBNb1ijWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9539AC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173938673359.4899.16852961391061638832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf03515a9c6f4f6dc61e28981022e9577f413fc854fc95c5a463a761db0313e
Date: Wed, 12 Feb 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739386733
