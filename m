Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190AEC149
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729642554; cv=none; b=NWuSEE2QRvybeGU8LXHFMOLkrFl3IMSDK3xRfLlfoNCpf7/Vvm9+woIBF4+t9vdL5ajpPLq1/VlkfTbGKBqnAMzPDBjvOmX9wyqkc6PBjfsqhrlBN0uQSHDuHH5KsQZmQ/nT4UVk0CSpq4Y/uB04OaHrlN3aTb3EoKoCjndMh0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729642554; c=relaxed/simple;
	bh=Y509h71e/4/UCxejdJoCzIxWMXvWpyZPwYIqrxoP09E=;
	h=To:Subject:From:Message-Id:Date; b=THXQPzlcRJpWyX7BiuKvk+dhUF4Wg1MrO1wEV9cMa1nWY07uZGFUDMeBIh4uWQHhbvu/oVZnJInb5qLhcG5rk4Cj9ucOVxBcIGLQ04NnYpwpnhMGQeNdWMzt1w66V/RGBg8B4d0+qFh/0HZXHpOlLFTbnemfW5h60PgwiW0sC/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkcpaKtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkcpaKtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC0C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729642553;
	bh=Y509h71e/4/UCxejdJoCzIxWMXvWpyZPwYIqrxoP09E=;
	h=To:Subject:From:Date:From;
	b=nkcpaKtd9EnfpCkQlNJMnaLpO9XZq5aKY+o3rtFYiCHt4IWnYS2gt6pBj6+5Ifj/V
	 aDetBLbuCS41X1dVP3p3NZpPUPiSmgpZfd1TKtEjzzrRvfGFVAH9rDngVd9KdztJvf
	 GDp5532zrHqp9hEksMCXtB0YR8Drmbl1EXp3WEVq15O1+AvSIjhyvYWp3jqrff6D+n
	 S6DnoSRLSggJ7fCkw/dFY61nIHg8ry1VoqjC+rOBEVzU3PnBiaVZvqsz7W6AKpGiP9
	 l9jqINHpOq1kzFNuD7ZaBkW3hzK2nYV6Fodwme5qOKOfS9AVGj+TSqvipBW4i91fv/
	 oSwK7IwMF+BQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9392FD2CDF9
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172964255358.23290.13069275010330693787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1b538d52cdf6c3609c383520e08f96caa196442eda2bba543f65eef2bef81d
Date: Wed, 23 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729642553
