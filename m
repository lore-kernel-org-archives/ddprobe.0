Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF06275AF0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764183773; cv=none; b=jjYpUxvRo9oe7poZalz9hRqUxFO+MMSAaWhF2rIQ5hLDnfGuTTG6qUH3vfcWgBJaxAOvzEgGClz6ZRVoaJUgTldnPMLIJEuWLKOJcAtBzBjX2kyMFDV+EzeSjhYOiVE0g/Ma9Zn4qQKAT62X4kzbokXXN9lL1R3Q828W6Ouweto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764183773; c=relaxed/simple;
	bh=SOPIC0mlBjxrw0uB7LiRvKJK1mhezKIIzg6WDYluPXk=;
	h=To:Subject:From:Message-Id:Date; b=VdGa0DSHIMN5+29rtzMqYgU1+FE+aAZiQveI6w1so3s8QGLroGClzbVufsof8EZk2wZZis65ajPBzjACCX52pn8RwrTpoHX33C2vHCrhnc/mFNSfYWYHW1mAnA9POiqD0xBMMI+v+U+n4kjmau8PCyg+ZlXlvOLrjVdv0YGqBaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I27ZdbZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I27ZdbZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7211C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764183773;
	bh=SOPIC0mlBjxrw0uB7LiRvKJK1mhezKIIzg6WDYluPXk=;
	h=To:Subject:From:Date:From;
	b=I27ZdbZ0HuE3x2Sx3OVWELaZy1AYI4v9KoOztpcK8TAPk8fxw45u5qMPFluKU9boU
	 rSoyIN5rKzq6FFLyOzSguX9yIeTN8ATaXqUfvA2jv3bnMjJT9YFbJmpoSZcr7oZ023
	 Qhz4c1g2n2CSgbR0OL5cNcvRwwnvQdpfujbAkz0PmZXDweqtYu2kfzmXHKhEwHUkBE
	 ajpfKAiFwi55rthiCDIVAeGrDU/WL8AoKrhIMwtYxnltDbJJp8H6nlp9pdfKHpHJM0
	 psW4jjZE9D14tf9k4+stiuN/qNLihjyUbSOGlTsp2AF9RQueRdbfQMKUzLQbPNfKXd
	 ozX3EAmygl6/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A63D11192
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418377359.22518.11791879973201678873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4ba779d40561f740e4bbd7704de5f3176ed124b5db37aab8b50e78d9ad6099
Date: Wed, 26 Nov 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764183773
