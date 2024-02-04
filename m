Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08200199A1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707040097; cv=none; b=oOdIbQ2zItUxBkw858rehGj6U4oo/3XcamhoElGR054DwWrIuuSY/JGxRPBy94XmZaPChkXHhQaZrW27+dN9wUJBqVWKBL6HlVTCd6GS7jVEoRI9zraUPUDGJcg70KAY1iWUW9TTjhRx3vkMntLeA1kwqgu1ilBAmJO8d03CHDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707040097; c=relaxed/simple;
	bh=qfw0w7QTFIBsApuPoUxDaZdenTtieZDs8mfpVswyAH0=;
	h=To:Subject:From:Message-Id:Date; b=qyR1k9kciLEnP7SU66QqE+KKLrZNSaKCZo/M2VpX09D06e5mcmzM5DhUT2wNvK8HSzTZ9bpSGgijhMYBSalKlQF62LIUp/OwNw3zy4rQrdo4AdNg2Vx0E3+4dAJHnJ3cHdoiuEtYSCXN1+hM+Wv+TA7CRotWk/uzn3jgtyFAwZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkAgVqkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkAgVqkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE3EC433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707040096;
	bh=qfw0w7QTFIBsApuPoUxDaZdenTtieZDs8mfpVswyAH0=;
	h=To:Subject:From:Date:From;
	b=jkAgVqkI6qfvraahpbiJVXDdo8yzJRYccbr5A2NCe+qUwDzH9TlLNgKZ3x9SRLulP
	 c3krycHzph2tXbEYIl9Xkltxy+Xq808kpVdWzWWLy2Mfm4gRvLMagSeDnh4VqMv1B5
	 7seNw3/JLKxLZt7BvNg8zJiJePdyeogIj19iSdjYOkHnx/9kw360nqFqbZd7syESa7
	 Om5KkMUVarYlwew9tFdHOTH+H4z/6IucdtsOnfzAnYglBpc9G9Eg+PvjVqi23Bm9K2
	 r+rXDUnNTu1HRWnDERydKYc5PY7PL8iEMGv+NM7/k3WprIyUq9AS/XDQhxOh3S1InK
	 LNrWRpS0nOa3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6601EC48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170704009640.9061.2919434185754583521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0f835c099ad15b6609377e7420d34f700f85c50dd659a56961f909d84b6f1f
Date: Sun, 04 Feb 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707040096
