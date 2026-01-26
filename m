Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74DF2FE074
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769401434; cv=none; b=k6VnKhcRGk2v+YtW0RAKwSnnXDLX7mvOj3fF+WpDYzfV0XhyPPI84riq41DTL7B/EjQQO/PXNrdjvESFwHYAw4Zjp8VNd7/JM2XFSeaM9Pm4Z9Ujh9VApD74eC069zaI1UIUxERh6zf7L0++rXl/9YCW8ngPYZhYUko7dEPQOdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769401434; c=relaxed/simple;
	bh=U7apGIJOiV6igHjg0nDB0DhVcCIlsdTQ31u70TzBL6I=;
	h=To:Subject:From:Message-Id:Date; b=EMTurYOYQr4y/w3kM9hPsbUFvu8fTYFyhGrotgBExXDvMMa8TPZBAXrEW3VbDPj2lPDMafj1JmhdZ0OoI1OUcM9PxI+0f0qPi6i7jgfeaCaVj3Hz8LkfjPcC+g5ft9dAzdd5Hzt0oGOd+Bzhv7A1TcrprwtC7lMJOXDKx9TNfPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXjykV+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXjykV+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C12C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769401433;
	bh=U7apGIJOiV6igHjg0nDB0DhVcCIlsdTQ31u70TzBL6I=;
	h=To:Subject:From:Date:From;
	b=hXjykV+pqTrvCBFFGm2rXT585DIaQDMPe3ykP1Oy7LcyBot/M4QJRe1roC1bg3pM6
	 jNnuzIwLzvRuS3TpGK3AOJgxw/Q0jAS9yZVpnKHMoTzGQx+8dX6Zy+R2UnU8S2HCq1
	 FT9w0AFA4Ji3fEdDJDm+zyGXAQtGl2a48PFX9/CP6nzx4I5LUgXKgeCQo0NOdhRyIV
	 kf+zgjzQMidDrfOAILmLkJF+Oy81QRQ7Azfphy1PUv6IM40pN/XcNfot5xQJI6Cgrj
	 S9Q+eIdmFNF2YiU69IvhZZ7QZAQDCFzUYGXB+KcWM9W/ltzdaivGmLgO8/6mdMwaOm
	 slO/fJZHfJ6sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4582C88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940143372.15824.10873244776839023225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dfdba327e4507bb637150b1b0685a87a12f9e5e4b85466462b97219c0ebc86b
Date: Mon, 26 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769401433
