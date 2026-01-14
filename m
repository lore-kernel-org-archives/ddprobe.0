Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA08333B966
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768367034; cv=none; b=irSG0npyUrYjU/ZG6CtzTAKSh+W4Wq1BCLjZjopM62FgslYNyE+YWNF0T+5Hat758wi+IqDQiafT+zi9gOV4eWVqraXSRQQFODrmtvlmBxb+ZUbWA2Xy5j+7V6lCZxHGgIOFc3py9HyZIH+cavnRNH7/MAYlEhO1TOxHEMVZDi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768367034; c=relaxed/simple;
	bh=9hz7NTkIxFBPiuDtpOxL1etLz6pIy4+Zy8d95xZAME0=;
	h=To:Subject:From:Message-Id:Date; b=FuLQiL/xoMo5pBlrUBY3XhPFrNMD0FnmT/rS5hMfqmJoEBYFyGsemueHZo5xkNu5o2zGA1bQ6Vqc9bpwHnAdfy944eYIk//jFwzkhGgGMaZbicZmjDS3dwVgF9g5NQQnrWAJNUHZDgTvL34YHCKlzd0JqcHcmy8+HXDbvlYu+ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqiGIyWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqiGIyWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A465EC19423
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768367033;
	bh=9hz7NTkIxFBPiuDtpOxL1etLz6pIy4+Zy8d95xZAME0=;
	h=To:Subject:From:Date:From;
	b=DqiGIyWAkPvhQMtG6hCkhOOR/wS2fd1IhhhZbyXOz55n7VfkWFcJWZN9Zl0PDPoxX
	 h9/I7aeDm2i96YU1HU4hdaodPTlWvzhTUaStQfWaPtybmMni7rMXzpI5kSlG/rj5z8
	 hiOkQ5Y4NT4u9xHTyoUmN9M09SLZK5aZCOT7YRSQVZcTHT34+pPdguBxzQGgBxbb2T
	 uLqcG/y/H34JO8/ETTBmy3UWv6T67SRugRKAcwFDTzfRJ43Jm2JysSnDD2yN3xun9Q
	 a6FXJjR2ln+i3jJ/VRo5DncqAvxf2/Ai5eT+bJtnHYLD0Ne6i9QY9UAqIDKPkaFitn
	 9peZhFmaQP09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D92D31A0E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836703359.1563.15839873961358549498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499844e5710aab6a4443cff1a814f094bcd4c7ce09f7363d769e2c772e335a8c
Date: Wed, 14 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768367033
