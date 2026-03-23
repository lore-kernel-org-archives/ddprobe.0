Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FF3173
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774231494; cv=none; b=gBr77wZo5evvq0YNUwzZMBSQBpU3pmwu7GbdEnZ6+FFttaPoiTcEFUPyKXuavEXnWENIQluyTGZ1VonTEHTN5ECk5ufll4IrZb4BqC7tmNd/+zebgjeIIa/HiI3q4Cnt7Hs3cf3E5ZHqr8JzHvJMMFt4TQBHdlunt+13PnuvRvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774231494; c=relaxed/simple;
	bh=LwjSIdYq9O1nLkBgeKkRVYF5OYpbhDZ3mkiRmx1RUC4=;
	h=To:Subject:From:Message-Id:Date; b=DX0IO0vNg/lLpjC6ddGDiokllKpV3hLTWndKKajJg6n3yvenRz5GJEA8mzBw3jUkZUewsx5OHki1iXkLRJKayuATDWQkBdgfM0ASqOOAc59R0csz1L6luR4nPEOxar80tgBltF8HkLduOezjh9SqTMVN0q1RsmvEo/LApU8cfu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0qSmrSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0qSmrSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E71C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774231493;
	bh=LwjSIdYq9O1nLkBgeKkRVYF5OYpbhDZ3mkiRmx1RUC4=;
	h=To:Subject:From:Date:From;
	b=M0qSmrSLvODjo431RHGlQde47OsNuv9gDRGjpRzJKc6e5EfKFdcY46K+Rqn8hYqBn
	 +XnwJwTWZEs9xt0MmrUo41NYY/33hY2cTV6v2HXb6exyOv4Wvhm66b+a3KFwf/TbgO
	 qxXyYbCelBT/1W0BJ8Q0YlHwgsfwB+pgSaXM4qsYcvpJaESkBmSMT1WYjtx+x3pP7V
	 NjLPfSrusbgzr+OXsA1rx7bC17+Txf+ZUhTF1iAgaEQNBUO/XWbL9Y2qKNeCgPAQvt
	 yIUzLVkhZX1Q1q0s1ZpozcOV7HcYZpyM0OS40yl4YThU4JJtZazaoYzEkrXoOrBWja
	 1vXuOmrwRxFHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95904D58CBF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423149358.28565.13525039891741855057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2668037e82d127b23588cab302ba7c27dba589366c8c5f9f5c0f71c34597703
Date: Mon, 23 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774231493
