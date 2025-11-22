Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBD34C6D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763826714; cv=none; b=OWJoFZvZP6QXHtBq3ftxr3ebt/JKqLUOxLdtyPz+B+tNPBg2GyATX05VUD2IIJQ+Ekw93G1Z0crgukjUykOIhuVNq5BZOSlN3Py0xXtG79GZpzZ5BuQk4p1WjY+Yq+Xnk6Xq8UoR6Ntg+/BHO96mD0Dc0EWgguMtMjxswYU6vJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763826714; c=relaxed/simple;
	bh=JAkODWZWZwvX8zJMJQlwHr9G8oS5dB/mO3KcLFL+11c=;
	h=To:Subject:From:Message-Id:Date; b=IzHNPI6mK2fey9+eHv+0mT55tSCIUxRm+S5AWl1Y1wViaUCH2bb6QPTXrvr/VN035nHlhoJdmkky0kHV60ur3w35twlevHEwrZZxH/dLMHXavd41u1yMbUR2wftJprlzL2KmN+V45JjBDkSWThreff/3fnzz6zYlk0iq1ssb12A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3qtDkYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3qtDkYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ACCC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763826713;
	bh=JAkODWZWZwvX8zJMJQlwHr9G8oS5dB/mO3KcLFL+11c=;
	h=To:Subject:From:Date:From;
	b=m3qtDkYA2HauJ3ojOC+GMigfxm7OtAJBqPevgBlR4UYao98vjJJpMpzRhPffMskhO
	 sxhHvvB1elLsTF/MeKjP54DBvrS54NHCIurLK/V6shD+b7IkpHKZxuZMm7QPDz4+0z
	 WPujmHx7h+IdYFo8EpTYNxYuHy23Clm3uq8XBfkNrOpS6Z3l+NDbWJDUUqo+Kb58P4
	 d8EQgNFbiLHj08LQ1w0YbMypC3/hLLFWvwp2091eb//I7rG//aG/+u60VDEjdFEtjq
	 CZbjn8ApCRuGhAk3zk1gUt60gr9CB0m88xWWTV/KTbtbD6D9wxeWbaykCq5QNyHpWW
	 H965C716uGOyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C9CCFC539
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382671358.18920.7493079031635128881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4062064bd640422cc3cd60e2d9feaf7eac821f2b0f72b58e76cbf78314e08d1
Date: Sat, 22 Nov 2025 15:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763826713
