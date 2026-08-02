Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C93938F624
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785687634; cv=none; b=FlCUKkLyG+uXJzl1jLC63h7PA2XNze5yMwZZvWA/6vgwJOdM/Sh1v+FMIOBFqJgJ0Zyd/ndxjU9ggyqjFlp73x/dpBaQQz0CuLLkFzwmbRSOn2qTnMS7P02N1GF9Z2unueZfQjpseZgeLE218WRUtE5krplp8lPOzJbQj4PWdKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785687634; c=relaxed/simple;
	bh=MywyehkxzHqHiCiO4EAt4b2m222CSQSeoLVQ9wzfHaY=;
	h=To:Subject:From:Message-Id:Date; b=sjx9I4WaptL3HeWTptF13FIFc9X/JB7sMcN0Y43RLC3PLl8xjC7tVPOXXP2yYhkISgBYfHdtTcB+oHpzI8aJR87gnZST+nqQngz6ciMTfkdDqDhRMZKHS3Ml0Ifn0TkW+w08wUJ6Dw7DSXhOEISMUENRQ9i0aUhu8/64q+8q7vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4DBZbL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4DBZbL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1865C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785687633;
	bh=MywyehkxzHqHiCiO4EAt4b2m222CSQSeoLVQ9wzfHaY=;
	h=To:Subject:From:Date:From;
	b=s4DBZbL5kbcW4EqxyxlOkcJxoVKPpeNWn/IHpR5ClRVZdBjyIzGmNLfqeq3tfi38B
	 ATTyaYAQeEUUsX1cOHqp18h+cLwWkroqdmd9uWeVCLmbCnfIy6db1lwcgTpxTe0hq1
	 jCcM0Oa1mW0wvsKIVe+GXot5WRpCWkVYt077Z1/KLSUMxUfrfvawDTg6y2MFN6AjQQ
	 2Pqa5lm6Z5Q8M8zhLsnl86pYm2hbqx88zZinNc2xPKcbObIEfBjLbPYA7+Q1D3PnDt
	 TUznc9eXV9m4e7UZOysclK0DDDeC/SlyW248Fg9/iwCqPm8+4JVf1cWy0HE//ovMoW
	 efPPAfcVNpGyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0BDC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568763368.8261.902582934011783572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2caca81bfdfd0778f523dca4e735acad17e09f55a3da62ec4c8d7b8352d6b933
Date: Sun, 02 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785687633
