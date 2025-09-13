Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199D39460
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757727594; cv=none; b=HecSvl1faFr4NRLuXhvfrDZKM3BhcnaTmAEH//SDL0wKpfJk0QeRYyjQ3qJse6jMar36ebJqTv5rV8H4xdwDPUqQrd8dAstq6GvqMoyNYjK290bRq1aKh2I13ozFc9YzVIzXffoRJ5B5RiRFHXKr8t9oHNTruiFHmoMjx5wy4II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757727594; c=relaxed/simple;
	bh=9xS0Rbi4lMO+KqcOxv7/p/8d9/Vffc4v1D8TkJYDVWI=;
	h=To:Subject:From:Message-Id:Date; b=E9kMUPqXoFfrVYKMRq9SqV66mIM7a18B06n+f09FNOY5//D0xSQR6A/nclgDmKQQuUyabHToaohjOB3DYyX0F40Ldcuu73ns3vNIZ1FhTKYvQkubQ6dtGpkBQjmUWHE5esSG4NCD0uWDinZKM8C5b5CRnAfrEIBkFUTyBp0lPbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6v1ch5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6v1ch5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2067C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757727593;
	bh=9xS0Rbi4lMO+KqcOxv7/p/8d9/Vffc4v1D8TkJYDVWI=;
	h=To:Subject:From:Date:From;
	b=t6v1ch5yNA5cm5JCnEnlAxIand0ZltubToJIWBHvuGDvbIuc7et6jzPKcqBsvLv5o
	 /CwphJ7L6/aLjYGpcZKJ3GSOu/coX+64+nW9OExiRcxqI56ywDiMvHIPDdsYvpfTo9
	 k/KDBo6u7Ghaz/uY2DIYmakYyR/XK6ZM8cDgErgdQ243sWuo2MpPhvuxBZyZMVPzt2
	 OD1RVFYHiZlLCBKkjsUvx6dE1qxcySRw2oZjxzqzsSq6wP50PDSC9y8N6Fai+UvLcW
	 8XlzBXpUb4sD7elnE509ZkGUOkww2jHYy4ImAexAnLgEfPWusgC8XG4i4dgTlz5JRS
	 tCioM4Itxxs8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DFCAC582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772759358.21829.6417913056291324606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c5e5bee9e54054afcfdba2713169aa9e96ddad660c55643309a9d166cecd4c
Date: Sat, 13 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757727593
