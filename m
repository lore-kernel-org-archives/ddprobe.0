Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D9041D114
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789905034; cv=none; b=boUYkhZ50cjRjIVEXFctytk3VvgAMjH2AjPc47F+Yk4kw7JDvQzqztV8ZKG1LFZn6hfj6sh+wQXb+4R8rTABQt4K6jpF8NA0b8K5WaQoCVjWEQG/+8QLaZlkG+TpBDg5UiGKxes5TYbNK46+A+VsbsVboL9X+RqrefPEO1/XO+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789905034; c=relaxed/simple;
	bh=8RBXQa4g3wc40b78xx9ixBDljEzAFbpZ6n7shTma56w=;
	h=To:Subject:From:Message-Id:Date; b=Q04S/h0L1NEtYmPbaOnu/gO3HHKVD9FzTkj2Pq1X3gSk7qnxj1z7IbKDXPJNCu2BgjBrQk0EQO+ur1ysamntLSjliv+5rl5YBwaKZSmU9JDcVWEo0gjd72qULOBQKbTZ7HbVAAdXvZ0KLeNOMRm/q7OJpBYU0FcIcKPQ7rmjSDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3PLgklw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3PLgklw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4C9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789905033;
	bh=8RBXQa4g3wc40b78xx9ixBDljEzAFbpZ6n7shTma56w=;
	h=To:Subject:From:Date:From;
	b=n3PLgklw/j26uZeDUMF6gPjXnH7l6Y3VSKXGGApEcutZdgufHWL4TZCjAnq/fsUlB
	 GzXwh3tcJZOWOUyk5iAMtpu/hfWb1AP1jaM6B6OtrmG4WmnzNCfyM6ZzbJLZNyXDx3
	 iiwWynW4oKGK91lvnH7zhS3Y+44iU0Qlz94C3k1NkI8hcXUG6CvaMxEqJ6oAKuuryM
	 ZRoTpbik1e2fcZRPuTTUqZBBXycRbH0PZ72SZvrcW1M5YBrhru7T+XGhGUNMHDB+/i
	 Ztr/7RHpVP+cI0FOt670uKuyCLFEsC3j2ZNE5X4Ot+j550chvk6ebvQlNlsLSYaFXo
	 PeUnKkVhUU9Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA672C982E1
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990503368.10028.18375972560545292428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dddbeb7d77c9e0d3c4cafd062883b714526a9296d45f40b8babac8a6d6ee69f8
Date: Sun, 20 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789905033
