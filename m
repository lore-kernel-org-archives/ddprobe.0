Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7021DD9BD
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728984954; cv=none; b=uZnmN/svLTDAyLWyVVWt5h3xMYtWXMZATF3HTlp9WEr4JD/ILaUylBGf1m4biAI8XQVY8vuDvecluUCvLtAsYMReRKi+28PSkjlod5cZKzUrslRQ/Jl6SzdSqo0gJBmupJMMyIcKi+bc7ukI557RzCsu4n1RhqpRufEi3WTmD0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728984954; c=relaxed/simple;
	bh=0752YNU9Qp4mJ6UOZrn3i/EMoKdfRJBsStakfv96mNg=;
	h=To:Subject:From:Message-Id:Date; b=W10C5lz1nR3KWEvSH0LrCS5tyibqYkWis8yEwPZPuNyEh5XWwELvHfdilxiWW+rsdqKDgwyD63EF19O+r9ruo4qtn1zRiNL/bpGWMnVS2FSz5JZ5PHJPNjTBLNqot5SqTBWu5AQAQzCbVW7bfm2WLUzbyMlPRd4Jh3FvWJxDrck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUygwHGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUygwHGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A586DC4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728984953;
	bh=0752YNU9Qp4mJ6UOZrn3i/EMoKdfRJBsStakfv96mNg=;
	h=To:Subject:From:Date:From;
	b=VUygwHGXLTvv9CJQq6AXKgediokLb7jTATBCI15eOngklnqVpp3EWDLV6ndX48KfM
	 o1R/Jz3pi4rlW7fjU4nNLXAYZdZ+xEFUOGka/lGc2HefzaaWbAlbEtUV4LAk5FBIzK
	 ydmd6xXm0jkOPk7It6DGRpbwbpAN71Y0ow0/e8WxN8/utcV8AmfSRz+XEWE50U+GPr
	 x7upfeSM/H0gql6rMoul1wSsK7tRbdZ53/8bwjubRFSSi0Z8nSP50EfA0sbTrUIpRm
	 4lyV3CwYjfUaqgrp5xL7xCi5iZiGk4z/zY/oAr9wTzOoK4SCtu5BF5koB6WORGSS/Y
	 joKKrbRRhPvkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EAECFC276
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898495360.4295.13214315362010608293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0cb082076f61ab294f0edc3384151f47e3db6bb616e03d30680e75a59e80be4
Date: Tue, 15 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728984953
