Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542EF3D524E
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787916034; cv=none; b=EQSvmmnwEaZvMxspEiNyxUiF6UaUsmAyp8WpWrUAD7FxzAel7xJB/vPjT89y7JmB70FPGzcFKifVNaucVlbL1svjZ+7Tgmk6dIu8HU626VvMvolaWPFbrnnQXdhbjbQHrBfOquuIWNPqOxLXxJB4mEAOF2z9TMJOlG5S5prSnQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787916034; c=relaxed/simple;
	bh=nPZP7pBraZVqbVYtChJjxUmGB5aFnkYwM25Q55e8As8=;
	h=To:Subject:From:Message-Id:Date; b=muJd3jrwsLTj6CORqfIHpr7Wk33/PTo+jZifewuEZ7G2Nt4S2mgX8sYrvgxP3Z/T+3s1GYBZ6c0VNNWNaQOUyW/odz1MckpUS1A8YgLJUx8NR+q0ccGLA5iSec/aUw8WdMl5YHVoy//tdU8fHaN+jABrgW7px3lwm8LwY4+pfOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7+zDWnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7+zDWnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4414C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787916033;
	bh=nPZP7pBraZVqbVYtChJjxUmGB5aFnkYwM25Q55e8As8=;
	h=To:Subject:From:Date:From;
	b=e7+zDWnFUZzPe8lDOFhYB92dmhFiv8eu/PKlHoxsYeXJ4B29vIVY3zNAHEMl0ZwV6
	 L/9hrcBB5vEUC6fPChUlPGPaugvrXxt7nisgp4psTLvQgbEsJ8O7PQt40OjMXBwHcn
	 m0H1Ynmvcn22RaMh1XZeNyyxx9HJCDKbFxFMfaWgY07w/b324rmCk/f95cyqMWgGc/
	 H9s88J/l42K1QnZeAhi8HU5f4xU+vO7g/N7MiA2D/hvLSwuZ8ezmqBYEqLn8/iuW2P
	 Q5VA/28F8t8b4aI46ULgOWYrYetS0m1AxFB94LxZktJtOmGpIN93gFMhrnlwAIC7bT
	 vDrIeZh3JwheA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BAFC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791603369.21867.3948656510082598146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082506a966c5e8053e2b43a123fa68042c381a6c25b0d05c804e974cb1cd34b3
Date: Fri, 28 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787916033
