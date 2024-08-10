Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440602F2A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723333554; cv=none; b=s1jWr86fcP0FFx8TBli2ad4VMoIBsOR1oPFzkPa/7cX3Ci9wf8v8ZSqBVS+FbINIp5LjqptyVe43pDqPjsDCyFnOC3qVucC8VfWQnSkGvHoiCj8TfVrdQecaRt8b/uNyboGdrE7ANsdhy8Z9pQ5eFoKJ+dK0ejYWl2MTzJte5pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723333554; c=relaxed/simple;
	bh=ZfovGkuv7UGykk9U8aOHb3Sdx4zjF6MnGHda0EyCYGs=;
	h=To:Subject:From:Message-Id:Date; b=so3EbiJ0oX3MfYiz0TkjcHZrqlvHuqr9xCAB9nf6bVhgkWSEFpqVjvxESqOhdOdt9hefCW8gvD8UPev7IhZgsliGteBi651FePGVKlrUhKsNoo1BjzB6rlIO/RNezsLGVFRLbhrEmAQdyrR5AYgZEGAyBRE9PY31PYQYgUXGU1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hm05UTdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hm05UTdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4DBC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723333553;
	bh=ZfovGkuv7UGykk9U8aOHb3Sdx4zjF6MnGHda0EyCYGs=;
	h=To:Subject:From:Date:From;
	b=hm05UTdkS2XDkiek8YUm06mrr7H5Rl8UoMAw3ZuzEIXqiyYqyvyMKrczz4FoHYKyL
	 KCntdE9NY9cd4/AKhwYp3i1osVNyNk6XTZ81txJVVPC4pofwvsjCxJpj/8ImRAewsk
	 A+B4jQBZf7DoWQv51xGROOyuMSlv4tbS0ol48zAIgPKwDKyYfWJjnKTxei+jVWkxO1
	 jveO6YiG0Nl56M/KdwV/GVKHVyWF42KxP+ZvhMboiDJ5HcnCtoAA+jBhK/Iunl/gZ1
	 mUTJ3VcF74YjMIvvYKAJvKXpr9KsQByHLfjq9a4V3Z7TX7EoAvOVMfKhGMafYPpwEL
	 nBCjkIeO7GGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96433C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172333355360.20765.13621964115859471855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100a210714d78090d95c9498f3e1d7457a1b3fe351f80e0029ef4f7305a6f842
Date: Sat, 10 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723333553
