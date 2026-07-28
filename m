Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E1A2F25F3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785207034; cv=none; b=ZOYxNSjDxKlmOU1QAMhI9zMYeQ0DIpve745xkPR0fFHR1QN4D+LSKHRBwzVR7kgvXWzUM+xmfb8zgXm+suWczoHzMNCdnj5evA2mNgxeGcTLtfp0dgoDNCpxTNJPHivOzOUbsKdpa1KbbX7nchpO7BD8xTtLYDyOEPcKK/32tUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785207034; c=relaxed/simple;
	bh=a1VjObOfBx0Q+MNZWah57440lTNqkJse4rSVIDvEEY8=;
	h=To:Subject:From:Message-Id:Date; b=C2TzB4xBY8zRo1vb+xBdI+CUcvHj4WFdwntu/qKQM3wlbSzZby28YwJ6QHSDJ5KjU0M2YobkTN7kk1mlhFF4NYUw/fXqJeYT+bcM36SXVJpWmgFFEoVAK7UXqFoJvSi3cGC5rzQOnXROZRTavMkGTIFPvcK0Kgp5RJ6uBP9nWwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvhqRcD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvhqRcD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9157C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785207033;
	bh=a1VjObOfBx0Q+MNZWah57440lTNqkJse4rSVIDvEEY8=;
	h=To:Subject:From:Date:From;
	b=WvhqRcD+DuejeKs0Hx2pzb/4uuwFG55wqcdw83T+4v+K7f5QaizzcLTi7WzyxSdxu
	 dFB+0SqacwJ3Jrd35O6LX3JeJQrSUl5oxqfu1fxo6Hdqe5v+C1wgtqfcQwPx9JMWH7
	 Es9Z307NY/2wgEElIgBmHYgCboCZYRC/6PqHoxJa/JW389I35FCqjCEMl99iKXHSSh
	 SjTjPLqIYQEfY9l9QuvAxfHDKVc611rDQzC14YeQiP6NLY9TmrmdKR8kRyruFAATF3
	 THkTpugCZILAHX/iQh+6TL5z8WYQJttSfoO2brHq0tBB+tF6BFxEF6LQUU4814wZyU
	 53uGguPoasORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BEBC531D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520703373.5119.8655187485749175692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f978d9656c62ecb0cadb9ab0daa1b3cbca337328d654edfbba1a69d1810f50
Date: Tue, 28 Jul 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785207033
