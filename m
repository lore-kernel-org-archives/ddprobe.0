Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0161F419A
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757900994; cv=none; b=LwdaFCLNKewGxvtBfLRvmMIevpDZVI3KQAeENTn1IRQbY5R2qyH2Tih0YOed9wL74WNhmx1M3THs6I0gQsCob/ZSL1ySfanTeWjrfp6r3lh2F41k5q413s/BuC89KppnQwCqXOCQEKxpWGF4OEwVzcqLxKPYmA+UP48frdxEtQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757900994; c=relaxed/simple;
	bh=EIKFnmDXQ3yofx45/nS5Fr4YIZ6HubdIMR0HhyeUr4I=;
	h=To:Subject:From:Message-Id:Date; b=iTEm2TqFU18FSAjfMxS+2SkOv+jdEMtL15eT4PCkW66wnIthvelNjnajgW0LX0bwhv+SfBnjqTwX7FZ6lmbTmsbEodH0FyIkODftf+wnDbwGZvUN5k34CVMtv71ow3RqdtCDwBYQOMxJSm6CgOvnU8cv7TiiQcVvc/gezxQFjOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxMrUwcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxMrUwcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBE7C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757900993;
	bh=EIKFnmDXQ3yofx45/nS5Fr4YIZ6HubdIMR0HhyeUr4I=;
	h=To:Subject:From:Date:From;
	b=BxMrUwcw2f/tgM8zV8mLkI7VJPTDfxUbkIsyy0kRwvmXnqY+bbgzWcqb+BxJ1mQbu
	 4sdl7zXnNRLInmtKcsg9VUUnJKhQNP1+w+tloJeL4Kg0hefQBfQHHsUCFbzFXGRjBN
	 MgEaORQyySh46293DZ94fMe4WVW9u4dUmUYyDP9xCqdcKEA3qSOd1NmdgokXczdehs
	 1JIxYacggWUTGiCYXKotJrkvjoMfAaCX6aKyV2+BiDdAVLM9m51dkSnhb6Nz/GOR8q
	 pG8H8SyeZz7EeqTQz1OKlxcjlxUBPEyMWpYfmKehTNXmGgFe1IRRQsKP46Zskk1UVC
	 IFeWjMw7NV/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC5FCA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790099357.13427.18086131794825799155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0882331873c4f484fa26a1fc5726cea15c6dca691314e760e1e9053c2d773464
Date: Mon, 15 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757900993
