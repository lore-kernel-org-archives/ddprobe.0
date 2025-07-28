Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CD21862A
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753689594; cv=none; b=J3uq7L+CD3CtcoED/ICD20hhK5AdQchb6nllFGEQrsaK6M1nauTkXYr0ygYBKp5cWItomf0HcYOTn9HHZngo0GervW0Yq2Jo+0xqN8srgK5+VjJD+nOTOS6yJqDUiTRac23L19K/i4pZWfzu+JgSccfwLN4Gc9vTdU8GPfUxJ5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753689594; c=relaxed/simple;
	bh=qOHSsGOacMKGt3QPSNsjEn/uz3HturtZHg5LryRnB9Q=;
	h=To:Subject:From:Message-Id:Date; b=Pc+MMUVdFkzbta5ddTrV5FA2vKle9gUZdS9xZ6eRkT8GQSmuoD0YFUVeXwe/zt3SSOW/A2XxQAk7F3RNqDg9Mod/an5avT60uh8TwaD6+HiUsA4s/hGqBa28f6b0sWxpD+ucWHndRfZ7tAGqS1XH2ugD7fF9A6pDogfGj+krDvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmQhG6ny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmQhG6ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C33CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753689593;
	bh=qOHSsGOacMKGt3QPSNsjEn/uz3HturtZHg5LryRnB9Q=;
	h=To:Subject:From:Date:From;
	b=bmQhG6nyzxJ+AldlL9V8Xmap5nS4TRLTu7nt5vQprd9cCK9cc62laVzHBp5bDzL3K
	 LpeoGUAf6uav9Z6LZTNpbtjqooajGH/GvbduXpEX1jnxvzrbM/8nDQ7iwMB0Gp7E9t
	 Rym9I4o4t/DTI1qz00tKzwTEw/tvu/NdrXBEljlMNMIWk8xaow1ZsRcM+3A2NRC5W3
	 bjlPx0wiiXxLpWolzQYMSf56Go/EB4kVJTfBdRVDx3mNnSFs8U5i7ogjRgdtPqVM79
	 VUCiRl4E0Io0T7UUeqhUDRcY71h6dRKlEq+1ufk/XdMcO+VsfTa1D55hPSpo9FlfJC
	 UeeL9Fj4OFjSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7FC83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368959357.4637.6868250499240572683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35b6cc95d818376abbc2643d7b374e63ddab4a482ed13528f465b62b11bb19f
Date: Mon, 28 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753689593
