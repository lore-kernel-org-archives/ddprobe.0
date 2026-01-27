Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203A42741DF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769548434; cv=none; b=Jaih5s3nDz5GPu1K1JFkhy0Jd/IP3uwrWsWyzfafW8pZRSJYj7rg9C8bqvHJ5rNfNqmmh0O7LC7HTCWeELFnnrGmfCGLuerqXpfgyeEetl7ayGZUzl5QeFO5qTr6PymYlrkrjNtDF7MrV2XNyK+Rb+C91RCoMDH0q4Qf7VQMIMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769548434; c=relaxed/simple;
	bh=MiNJecpdmtUxXttHTG21uIL5fvoib7+sdovl4l4wQlY=;
	h=To:Subject:From:Message-Id:Date; b=RymiydXy0NGT9in71T2b9bGOBAzYTsnZrlvO+Ad6Vpe03H6BTXg+3+sRqT61UrO700JJidyCGK6avWZRv0Ad2iNPsPHtIWqCOfS2Ctn0konaUKDE4K1muyJhdfR8KVrZw/CcUzz9e5nH+yPXaCg5Wg0J4xAAwCmyTdPDIkYWR50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOr7qtmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOr7qtmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D71C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769548433;
	bh=MiNJecpdmtUxXttHTG21uIL5fvoib7+sdovl4l4wQlY=;
	h=To:Subject:From:Date:From;
	b=NOr7qtmZvdK7XUvIcvhTyHxqeq8bI68arfz1G4+lpGRUs3u3d9RhDsHIFIbRHDGSq
	 xfFI1hmf4wqs82wd25xeSlP8hCnm6ppCjpjRtXuZEOIF8RF3rOAWgtf6w8wujsjEwW
	 vLREgUyuYBc5UEQbPlH1PjpQS1+itVVXPFxt84kUbqc8jaiwN8TCbkKBOJpf9ctjD9
	 HYZ8I9jeSl0g04O1aKsVFhJoqq1io3x13lFfznLXR8AMtcmNxGrUZAbq5dEU1VKiJy
	 HIFUwDw5dpBKbI6jobIrMDlM+63CbZ78smUyZSRDQIxzkoGJq+7+kZUMIxYlzef3Y3
	 3kXKxRg5Giwww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92038D2FEDF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954843358.25161.8642413464023616353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92eaa581e0683b9fdf6f6a1f4e857cd51c0d5f758d217882170a5af44496b3ed
Date: Tue, 27 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769548433
