Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310F21B413D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734083754; cv=none; b=VSjq4jxB7zNYLvMM2+exxmjmZXs7VZslhf1dGQq2T6SCYWR2xzWlYI4VhvtRL+RDJ7hkE4GBuzKAZTJSuga8LQ/eugauZM8ZKARMF8IIM2L8X5fLqgQBBI17eLPEL8D0LqB/2qtHQ2EZ2IGRY47cXqxK+19RUtNuWu0Z1g+rp14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734083754; c=relaxed/simple;
	bh=G7ynCX5vlq9kAPDjc0Waux5zL9uJ3QcFmZjfVfvpJnI=;
	h=To:Subject:From:Message-Id:Date; b=C3gTAExG8dbeJJUFPdtc/j8u856cUG6ej8JsEo31W4FKAc8NC07OADL8dwARzQXu0QK5GkPzzN9EecuSrsh5bAuWz5OkyPWhC4U9HdHWqREVud8wwD+DryTftjuAhlNqWbaZ+fZeMzWWrosbXoyIKVTmyLf3rsPyNjKZVwGNwts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aejPT50w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aejPT50w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D61C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734083753;
	bh=G7ynCX5vlq9kAPDjc0Waux5zL9uJ3QcFmZjfVfvpJnI=;
	h=To:Subject:From:Date:From;
	b=aejPT50w8OyWFdCFZETl2sxEJ+Fs1XvnNkxfedEVE/93zHwRinafWozpoDLNQK0lw
	 snG5mUkrpyI6bfPEuHWaI8vIML9Q2q2zMZYIoe3Fh6EKPJ1MkgoeCSNMe+/3fJEwtO
	 bh04pxA1QHbvsMGKY/PkIRYk8XYbibOEoMrNDDJDV4HLmHF+bxIcvwc/dZut7FLQcs
	 d84I4F1im3oLhX6/lkwvk67BU06uapBWMcQ4oENnLy1SfOO+98OwtadtTj+joBXG96
	 ee9ecmt+v344zfkzFB+ZAq5wfNiFCq0q1pDYkA5f1CvMf+NDNIMcdJtrUz+qzopKUN
	 V01bmRXX2f/sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0A4E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173408375370.26986.18345166890301549275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4977ce819f8cf051f229f81fe4ca6b265e02250992a8a37d4f21b46fceec17e
Date: Fri, 13 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734083753
