Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7622710949
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 15:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716477803; cv=none; b=ouS2DDydS1K6tMgQb6X4DQmRyLGKfu7oiXb8TrhG6sIZhJ+2QUbM3tPvbVjEGfEMEafgqFC0R227SSykmU91LPXGwfjGbszW+olLVk3TILNo54e2VzISy0wEcQyUPA6bNXmebCmA7T2bkMB8bgPyKzvWHJa7nnrCvY/JqCkB5Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716477803; c=relaxed/simple;
	bh=MbkUjZaro5XR+qGqFoTD+k53zrLDXW7EznBIfP44bYM=;
	h=To:Subject:From:Message-Id:Date; b=WQPsZcPog8+d9P7oz+FIgRJtyxudahDWILuNYOiDkirdCRmtxqdtb0vdxIf+ok15FReUmK48RgA4GuznjCqtemDzAe7gYpmWmhfHHkMfB6yNIljq6IGWh8OyvuM6S4q7JXF2euTrI6lHaUGh/ixXOavknPxvS6Jhwbq50B3HKzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkgIb6kS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkgIb6kS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A0EC32781
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 15:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716477802;
	bh=MbkUjZaro5XR+qGqFoTD+k53zrLDXW7EznBIfP44bYM=;
	h=To:Subject:From:Date:From;
	b=QkgIb6kS+pz/Cpq1qNDfaQIXjz63zKC3najWiuOJqjjNtdLssT7RHlnJyNru1N644
	 3PXosN6vN88RZS8n1xHOiKkSu7ASzn4yY4P3pjeckB22RUc1gBmZgGEVe8/RO3ar0K
	 eidx725CInoAq+t8X172n78CjgD7+x5Xq6X0CDEtvRsMBZqwGvsOGSD8TFEuEYQvf6
	 9e4Z+ao6CN3ITXKQCxdoCpj+QgKwtEraL89pElcViXFU5kaxZKlHuGOpEV0n5yhVr7
	 hAIcsd77hFl2sEW/QQ9wDKYyx+Lzag0ZwJzPcNL07PxvHGrLmLYpwVcYRYkdZsOWQM
	 ZMqPstKRrr+9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D197CC25B7C
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 15:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171647780283.24698.7323187178652583651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ddf241319d981ea5146fa2fd77cf62347c5300be99c9dec2ef3d5fd969c333
Date: Thu, 23 May 2024 15:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716477802
