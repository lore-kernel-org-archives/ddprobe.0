Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A2E181D08
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715725943; cv=none; b=JIGlaLaDeZepEcgk9dxRjGfyCvZXCjtWod/JuMdQAQEXnFDReYdMSHNdeO51JCKdbovAYeALUo2zaQfqk0ydbc6PdWAyzIc7pDDTwA4+tXkM5Q8ZfD62gR0Ej8ceKok6gT4Wluf+bj2PJNlboNeA7LE/qO6OmbohbCsmVAsdzvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715725943; c=relaxed/simple;
	bh=ZlPmMnDTfg/llIXOwWE81cgc0q5ZKoLDOSx0+AI7SR8=;
	h=To:Subject:From:Message-Id:Date; b=CpgY01wFp2obs7GoGS4w1hS2sfyXR691ak09LsQNG5y8+HduVM0AiOuQ+ulSEK6UezsUW7JNYdJe3/i5bJBUsACe+IQwc2tErMThlxhR1OWmM8xtJ+ImqIhicbotrWwErv+ZC4ydBRJbvQSKYT2nZcA02l2vP9IUyqIQAYPAlxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eB8O43os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eB8O43os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49D6C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715725942;
	bh=ZlPmMnDTfg/llIXOwWE81cgc0q5ZKoLDOSx0+AI7SR8=;
	h=To:Subject:From:Date:From;
	b=eB8O43osj3gLH0Tfr//x0QNpItVBYQNQQykJjZ2LPPMviH7MzEApTTSHhwt92msas
	 uN4Q6i70lzSzCViTpJxJrqTYA2Y1yDms+/u2sAhz6VKS0iGLZmKDcVQDtcox2Fewg5
	 HQVc759YKk4/asZZc6zgex5OTS/vg4DAQ/5YIHv0kdhNgZ/OiVnjBXHZZQg5DTz3fy
	 EVRkjLPkbNqd9Gub0gbyY5egEyeYVWl436eTswea+1tIut4EuxA0zhRE3zB2sNbybp
	 azdMtopGdKk3gJ6StIqogDLpKRwCrD+x/23uUb+F6Rf38hRMaEvMrV7nu4AywzC04A
	 PnRvkHE+rIfag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB9FC25B78
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572594277.21625.16323089306921510604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9baeea60a2885b3d20a989b8850f81c33d756ce33c02116d44dd22a2db9d03
Date: Tue, 14 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715725942
