Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7965347C6
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780089154; cv=none; b=B7AUPaFKnNoy6yxgD8Amvpa6DHLd4CXb6Wy0yC10AvkTzygsDVC4UAt8AuQbK8SWuxyU+0aYjvkAu/DF1A+U4lllCFgeEQNUrANFUIRqarlmvdNxj0xCax6hnyfjqU2sQlHy/y0qykkLJahaOuExc1EZvQgGUhnoMMt0MA2+XD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780089154; c=relaxed/simple;
	bh=TTVfPDB7ySqJ/VVANUaq3TfpuNE+Dm4XONGYgRurUGU=;
	h=To:Subject:From:Message-Id:Date; b=k/+cAWKav83OULEj2YO5rsx+50QWmcwG1nROYEmaqPJFwJaNQnFyL4y3j0EiC8Fe43M6kxAOQHkJlvXzgP8y9pk6WT1xjgZS+3rLnhjDhrUoRwA+PA6JhUZo0/PVRZsCR5i9Bpru395aAx48ojZecS2i3p+nQwpagbZmXDfa3/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8pDJuU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8pDJuU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5E870C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780089154;
	bh=TTVfPDB7ySqJ/VVANUaq3TfpuNE+Dm4XONGYgRurUGU=;
	h=To:Subject:From:Date:From;
	b=D8pDJuU2Vh4078o7UNj5zgUWho/Aa8fltfwaLuJ+lSZsAk2FkUJ6j72JRxIX2iGqH
	 HYa/txRebx2WdoUJUG/CWaiJBp8xlP2szuHg1rl8/9MQ5RvG7+OXlPKTx7IeDh+ArD
	 Hq5vJwGccf2xDqfnR85Q8GNeJfDQWh53szY40+HisX2uA3KO1YvHEU4smmYyGjx8e8
	 1vBrStJgGpBF3i38j0nwQEw7GqQc7H7Bc/tvHr1P6Ct2zibPnbKXdnW6wx5kMoXgd1
	 P4edh5cKFqh/EES6j+KKLI/BIoK+FyX4ZQEgJhJD7b1kqU8OGw9ih7e+0c/8sUEpJY
	 z50i34aOd/tUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18A53CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:12:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008915408.7059.12790238491589782405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3cdeae65b498f093482d9d7e39a516cde9d78f7ceec4555480eab69d41f375e
Date: Fri, 29 May 2026 21:12:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780089154
