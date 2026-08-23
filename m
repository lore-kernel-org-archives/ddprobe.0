Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6829463
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787521234; cv=none; b=rVQ+U/wo+cuZt+NJoeAt+j8B+5SiJGaptankLWcyRxEXaeh3MCFRiGi3qbDOuSWsReT8JBFlEtbgpAGgdQ6nJdRWKFQURGQFpIqx9Ik18uSmUY+MWuaLLbSGk7rX6IPhpc/I8FEpInmScU5W/scXd4UqDGxzj3WD9BGBGbxtaFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787521234; c=relaxed/simple;
	bh=QwzR4uF4IVmayvTo171eamP0monFK2dQur9EFl+rF7Y=;
	h=To:Subject:From:Message-Id:Date; b=XQGWgLHvsEhlHqYcBlNYQHfw4qVXH9ScYKtCiWAe+0cfEjOps/1C1RWPd3YZzt+MCqDHfuOcyOEUUcmy2Je2m3hN73Ns9T2RPqbjmzsuC8hvQcN8ctCkKGMT0NsTstILPqB4zD6ZZ6saFijebfJA8ZvnhJ+jVisMkKTbCyXrr24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBYt2gnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBYt2gnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98BCC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787521233;
	bh=QwzR4uF4IVmayvTo171eamP0monFK2dQur9EFl+rF7Y=;
	h=To:Subject:From:Date:From;
	b=cBYt2gnuxoE/Ow0Ed2gAF8shvC3LqaDeQVPx/Xkl0wKdItKsMf8DlxH81ePcm0sJg
	 GUPv0yaxWSgmt7/BYKI5naNAcXPonjrJmwFAp7x7JmY73A4vJUt91d/GHXV/KFrG/s
	 L7IQCMM2Wg5wLE0f7WAV3LlcvyLIBNvAX/MI0hXb+JFNcu6vsfmik6uHYR7nVuvKBe
	 e0Us9FgXOU4CNRJyY1WpIM9F95eoYb6vPdbJ3qvWlQL8zYKdLugs7H8NW3FxTyQCrK
	 693h6z2x1ragvxpAbpopnri8LgQ2Q8gWtZySqiH5MgIbd5LGdMJR+Yrt0fP57ACogz
	 HVY5QQZhFKtYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0649C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752123368.437.10350069472403661582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf53a4d9d1dd829aefff6c562387497466f61599c079564a2e7e55bd2f700bb9
Date: Sun, 23 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787521233
