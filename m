Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168A31DF980
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766137434; cv=none; b=Z9tBRqXQYbKrhLAgpIJzF1MdIiBqAejZaozm3dKdVmahwaILrzgjiZd3JJqV6VUA/QtYy/nxg1A2A7cNugxn6iqCTgyPEkM1jwHITnOiaF8sITbEYO7UrhIjNmareBUyLdaMGDD0rUhhlVCnNYYZcbqiQLVkgNqqUYOhZ462oNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766137434; c=relaxed/simple;
	bh=rQFDekjTHqo0MpFs1qwELJTK//1Qc78etiQsd30cLIc=;
	h=To:Subject:From:Message-Id:Date; b=bcP6yuzyzKSGa4J+l8EBaqLsSbKSl8W/jjRVemY2LxztwYZpkJob7JDsFfwuQeCVN/jfIuqeGOzLAWjSzNXuQ7nKRY87ksesIJoaSBCECX8p6fghhD+hSqGenZLOgJhfY65vne8DhCy32PD4CdvPlFX5UhSYWETlj4Krka/0VlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLraeMyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLraeMyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0059C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766137433;
	bh=rQFDekjTHqo0MpFs1qwELJTK//1Qc78etiQsd30cLIc=;
	h=To:Subject:From:Date:From;
	b=oLraeMyrHDpfQSSa8/csmzAnIsVexvLCOWy3XwOT37wA+0gMKRk283uP2cxXRxAiL
	 6DUqTOdne1vo/7YTtK2ecmdO2D2xpJGpZ0WVOtSxtNZj+E4bxoeZmtkB2taHaCUmyW
	 5F2hjdV8L9DZqO3Ah9XmYhJKb7gdnX2JtF5QLd9LOSQtcWrcF5O3liIaso63KSd9J7
	 hTaVnW8ci2h15vN4f2c8Fc+79gm0r0BI+VOT8ulUWnjuba+c6Jt+ieUoXYI7KpvCJ3
	 vyLC64/IvAQVrlksMakji7L4pnEOks14i7NNBjeQusxDXvuNZlRhLv3eUHZPCXJL/z
	 D9LwnF2gZtBiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21AD74969
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613743357.1255.13102790091599515461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a45044e5502a9298977bb925b85888d023492511a035286d7bed8e2da1ff7da
Date: Fri, 19 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766137433
