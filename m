Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EF4189BA3
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724143553; cv=none; b=iCkS3Yd4G+gH4vWAVQx/frBolFwGceYRNPF4U0GlL7B8dM0fCpb3Jyr+wU2JNBa1VqoBKnNCknLNDXjRE8f+aXUuEXivh2LDzlllo6SdwLanQWSTRxu4mZBhGVd5J6kcf9I7f8Nu0SU/r2ylBBJojUUQkSAMuU+kM0ELbUq2teY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724143553; c=relaxed/simple;
	bh=z5SjpK/k3f0IMhHhjIkHHYIAS7rj1YV+9aNpIirLjW8=;
	h=To:Subject:From:Message-Id:Date; b=iXN8kkfPQmvYIINiSXTbsTrEJyPSHU3yqt9gLwfpbDBb5Hix1IXoiwdKuDt04BJ3+fKGLwP+Zies8l1DdG9lQnY9c9MJNsfWmJBpwDt8s0ATj92PWAw9g5wcx6y6soM8PKwD/tUNZVb81FLnZy6Sg+NU8gKox03FNX7O7NKcuRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcKhethM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcKhethM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD416C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724143553;
	bh=z5SjpK/k3f0IMhHhjIkHHYIAS7rj1YV+9aNpIirLjW8=;
	h=To:Subject:From:Date:From;
	b=XcKhethMBG7gXr9jpWj8XL+YxjvmvH7nc2JZ+OTt2RZMq1qvYzg6jXJZQfsv0t9lU
	 cogQ0F0mhSBPxnYtnG4cdKzYcIjlT3znfcQmtv4FNEhGEGY1oSeiohEhmCcpiaXlEP
	 zbm4ZoPGitAPJv72br9L+WHDw1+ebVmJub86C9Kau9ewnBvx5t2FQIXkCQu2bqY5MY
	 lDZ9eqr+Yjzh8yn9TEuJiAmLc+d+kPy6vxEiQf9+Ye7N8THCjV4olXzUMhC7QrHyuD
	 zpnhpta1qFd8qSjktNQS6sXGu0LhcfvcOiQxXb3vblZd2hsKdl5xFLZ8gVZZ2GfhH4
	 n2L5MHhRauuqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98480C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414355361.27527.2846085306174751406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a23fd9b9377b523461a85d4354d64522478de9e603949fd2537ac829d5498a
Date: Tue, 20 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724143553
