Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7E43A873A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782813514; cv=none; b=sqRIS+UfKh51bnn8GIu03l5miK7ESNwA6pHpqoSlj3tYSEKRMpMUJhgTQKFrZeBHi+GKFg1kuDsh63Bwx9x8Ueb/sHtYitAz4bAqn3DBLfHrF+EyyiDqL9LLeooGBsNWEMs4h83Lmn5dsGXHn+CPwlO+PxlQLldkW9HHHcq2JJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782813514; c=relaxed/simple;
	bh=q8CUcIcqCS+KpXbpTNfyZJBnVxxIdiXZeC5Agp7g/fM=;
	h=To:Subject:From:Message-Id:Date; b=sqJsF5AUOmmnivcp45xXYcvbsSiPWcgb9cf6HNpal/GH8Y8lMElut8Oxs9QTmbCEMfqU9Ke07S2aR1XiqS29XezTfsAPfk2wg/EdEVpGCWNGqyHJHoiFLP5q3o74vDhDux00A6eWRQIkW5xSl6lCHkiIFkJ2/vBoB9+67tCfnD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwpIsVrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwpIsVrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBD3C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782813513;
	bh=q8CUcIcqCS+KpXbpTNfyZJBnVxxIdiXZeC5Agp7g/fM=;
	h=To:Subject:From:Date:From;
	b=RwpIsVrf7hi/RSM2UtbWqaBx4ZMAhHuVgKE5SwfePMjAAFCAr/atGr5R2Yu+DjPOq
	 IXrMWrHFzrqgm2kKEF8ZTdZMdyxg/g+t24rI1MLgXjR41YpRTddoB6b//a71acgL10
	 jCQh9XiUMvVGyQKy0L9Lxt7IgOHDO7TDbXp3UE4/reUcDXqGvvrpOkxdTMuqYx310g
	 tJBop+rwxnD5/c220ULPTaJjmCkUddnv85M8vrVe25g126IvXHSko0AryutmajF4yJ
	 tUmXASbbNogKJMNNlsc6eMooaIRin7q2OqRI1eYyeSZKLZKI4Jh0QGzWjnvLkKL7ZO
	 y3hPLSU2Ghz/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B8DC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281351373.14258.12547537348508414555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4b0177f7ac8081684f83c24c8a3c0855561fd6f0b2a497799f04d045bb5e25
Date: Tue, 30 Jun 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782813513
