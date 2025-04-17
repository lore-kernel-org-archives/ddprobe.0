Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352DB223322
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744931394; cv=none; b=bWsn5rn+N076yv0LOolpoKHUkcw3r/ZINrcSe9QNmbDko9ilAXjQtXT55qDai5FOwAuFgIqUHMsY6njI7cNDmLAFgRUSIywmtxgfM7gggg6x3E0M+TE4GMBFKMw5bZctzuuxU8zKidvs4CXdTZrkdFA5aLDJRPMsDg2tMJ8JfZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744931394; c=relaxed/simple;
	bh=3U20pL/+2AfsykHC4c5acYc79/4CQhCJJEAzpvnQnqg=;
	h=To:Subject:From:Message-Id:Date; b=gssnUEow58GyWeEgA8KQ4Rh9okd3VyfSO2KuyhzrodRNc+1KDyJ49N3gv2UVXzl1upS61QTycJBdcPV7JEQC2p+ZksgGuMLCjgIkz4I/KXowI1xtxKXb1zz3auowi6P+4jVQlUOEuZ2mAgZfj9n4mhuS05oxOuhAzyHUOmMPDDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPAS+qvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPAS+qvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB515C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744931393;
	bh=3U20pL/+2AfsykHC4c5acYc79/4CQhCJJEAzpvnQnqg=;
	h=To:Subject:From:Date:From;
	b=cPAS+qvNDpvG3+SmaYo1QdoJ7oFIioAOfoGWmzlzNPgS8AsgD80O8naV8VK2w9ESn
	 xaa6P2MN/AlOWmoeSVi5+oIwunM092fdAYshkqsbI2Ag5ib+XNYi/cUqhs0BhmqhN7
	 hWclasaux7ArTVUHZDQjTzxLwE1WaWcUm7TZnXqO3bP81QTytuW8XaDDw3c9q65S5r
	 oQB3BCX1q4AnaGNwQE2OJPeyfkrjfJxZaWJXsv3KEDwppP/QeoJKlCaPdbUBiOijLT
	 hRtsJ6JsnQ+GG4N7TkXAcxqSCSsRFNk3BQt8CBJlMZzg9HfbH0Q8GXr3E+nVtKq594
	 lTqz4Wp+pLj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFD4C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493139362.5653.10179314467033502793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcdd645553007405835e3e893cc343c9724a369af671a08c98dbc92cc2924f02
Date: Thu, 17 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744931393
