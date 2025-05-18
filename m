Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B73E78F4E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747597194; cv=none; b=qBVT3/Bh2zs+P6H6sEeAWThKKF1SorMKNm2dgD7UK9UW6qUhpY/omYp+TpaUt53Oep7nr2r/V1ODJGKLxkyP4qhPyUBQCKTlQaJ214xu/Kl5sda0nfRJvZ7GuLXWGVSMwX9Sug5t8naLkcNTjc0I322y3OPyFXziBGFcjtKlaj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747597194; c=relaxed/simple;
	bh=KWLZE8NBFHa5wbKDlYXF1A+zimZAcg9NT9zIvoc31mE=;
	h=To:Subject:From:Message-Id:Date; b=acTG26aiX+I5ORDed0INfcWN28rjoCUOB7E0AQ5k20u3qAWKmFOSI2+1iNnJlPaL35DMnVw0X5W+w3WTrJorVTMmJM+c9gb2bAsCwtbxTbDTs6dxi01pVo7QmXlWIozP8TBJGSFo66gH/zHQ4V5oD/gykiz06is+KRvgBsPjFwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oS9XeiVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oS9XeiVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A5BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747597193;
	bh=KWLZE8NBFHa5wbKDlYXF1A+zimZAcg9NT9zIvoc31mE=;
	h=To:Subject:From:Date:From;
	b=oS9XeiVS46moD3zOWvi/lW5J3NQ5yQq3pow3NT2utBJQ1bQ8rsb3wySYcuBRrUBUy
	 0SqPfYceRbctv6YAffOoBp3syVJ6V4MkntisXLtcbVht2uJEDujBqAF7vldirdyGaQ
	 cNleoUtE771QFBvY/ZQOs5F/J9l59JdA+/gEwvO8TzT09fgrqvOWUquYgb7Fz6eAKy
	 PGf0GexpV/neOQxya09J1EYi8BSXBbC3BaPhMOiqDZXIbHGP0EkUXKdLYklJS4bJvF
	 rui+5+MIEqnekjQdI/NCzXdINo0N2La3Ux3ZN/+dN8rQtO+GQIf0JUk8Eh5KOtFc8f
	 G3RAzvQd+zL0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940DFC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759719357.7937.11603810621313935618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1726149be8bf24281dd95d57ecf38c98226b3ec6489f7f091a03d8f619d320
Date: Sun, 18 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747597193
