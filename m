Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0A01D53C
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719244343; cv=none; b=PJaZnx0VWw5DJt0FiSxGofL4Qy2jlAexGuK/HSHusclCggi6wJlAe+8rhsOJxUcOvhIXpCuH/T+qX4C3pB9wVzviRYL0KQpj91wVV+qWYQppiVk4ShifBmyyzyBGZPm2RJfyehiQWUcgzsPb+5CZz0gXn4v9YxBKP0p64pmSH+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719244343; c=relaxed/simple;
	bh=0I6Ji7ke+WDA/NQG1EYUuGMa574bWKh1ZfSW8JWlIXM=;
	h=To:Subject:From:Message-Id:Date; b=HghnFOINL/ToYoj6Rfcy/chOk5m89sbD9ZmdlsTPf8OlXk1SrDUEQvuhue1iFmOr0yb/mvba1HCes4nmBAw8zcN5VnxvzhTdIONZI9yJLpLYSU1ian0MEyiq6LDL6MmLaPw0iSGv7n0bzl07gQbyR1SmMYyfvr8/yamS/SupUzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2OYqc47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2OYqc47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BFDC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719244342;
	bh=0I6Ji7ke+WDA/NQG1EYUuGMa574bWKh1ZfSW8JWlIXM=;
	h=To:Subject:From:Date:From;
	b=U2OYqc47AeE2r0xlV34KvdQkTko63V/D7t6pNb7G0Dq5L2qJzNzno8sJlLv8SKQ8g
	 sA23gIwn62NkVZnBdcbJ8Ow6wHtwBroHxg6WRHk3EtcQQ0JsgQNe9rt+mzmhfIyAsa
	 HU8W0ffwC1yLH0iLqamhbNdee5Pdbo9L29LaGEQVmWyFhPsHx4TB+WZMy1m9PpzIFp
	 3IuliwpqV5Pyq2LMXUM1A79DlkE19oUkhU2JrKBjCg8ulTdFlItlblrQj1OegSQzuR
	 gUDAb7hLyYn9P55vVuHKnmLoUtO0nhYP+aiLot1zd54mHAH8detOJN1WhQS0+4wOPg
	 Ufocomno/qb1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE32BC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924434283.7539.10182338568443306165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295f2d6a03a65ad49fc1c23c7aecf903c08c84a45bfaae677b3bd3ab8f5dbb8a
Date: Mon, 24 Jun 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719244342
