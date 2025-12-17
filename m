Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4E533890E
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765992834; cv=none; b=EYn6pDvT/oLe9BPF2DaC27sQcptlHimdtnc9PKuDZmnyC/dvAski5q4EBl7CDBiNq49TJ/x2go8Op4uf6wBtLS7Rm9fJwzxGUWwjLxJkvfbWlYQLHH32Eqpj2vQFKMFu3Np19BPR73Z4ohu9XjPqktTb/PZKt6+eoXEh8XOVis4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765992834; c=relaxed/simple;
	bh=CHjjtIHmDWdlBdRTFupYT3D1/h6LMY/IAH93CGWIYuE=;
	h=To:Subject:From:Message-Id:Date; b=ukReI7hNSPW29/lCzdGfZyGtya7g9E+li8/wcYIn0IAmq1JN8zjYwujjlYRUtghywY1WB4ZiakTie4pbdU5ECOxMaQbAQoV0VGuY9lz5WuZGoovQ+uAmSlNIljRHdzLu2AZVECRRJ917b4RoGJcB1tkcMPGQDWZyN6fQPm31viY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F61rLrrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F61rLrrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C465FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765992833;
	bh=CHjjtIHmDWdlBdRTFupYT3D1/h6LMY/IAH93CGWIYuE=;
	h=To:Subject:From:Date:From;
	b=F61rLrrTCaV69Y4gFO8SQ8jh4fKVnLfoLkAPr6km7SX4am38kyR4tLetVky/VYWJI
	 2EcSwHfJyQCAwj74YTeAb40jopFeA4fn0DvgzY4jfNye3yv2QsVncOkaR31FaKisiS
	 1E2kt0n9Tby1HIU/kwNc5WCPFY/yqS0LK/6EQCFg5BcYzGHCBI1vN9cJHj6NHd+RSM
	 ciBZ3v2qHEa4xDqvfcuBVwq7ANlp/C40jKrJ3ENI1bkBft0Jm7DXvN07hSRRv0WuhO
	 ooR4937dt+IqYi/xrTKp4LV4C3n7g7NnhvDGHEVRVPb8JOAxaIFN5TQpmps7dPxO+B
	 9H/fdbmmUtOEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95504D65C7E
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599283360.21476.740291089246049704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3a418c1acb4a17d7cf5a8d3b8ef44b188a142a8eea0ab97356e659de7be5cf
Date: Wed, 17 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765992833
