Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4254D3FC7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745134794; cv=none; b=BTZUbYrnyHS3mhu3iBGpFkhDp2EQ0VmCFAx1e5NKD4tVC1Klpv4N9KBgF+0mtM9UsJaG+xrBH7JRlPqEUj8qCqqedSqQlmwf1tB+BaSTuxiijsqvVMbiLyVaMiMaq4zmW95gHaowCLSrYN5OQ7tIU04YYxq9zHpKJyFg/iVuQOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745134794; c=relaxed/simple;
	bh=JE8gDEBFefc+KB5jMKlMfeoz4s9izjwczPZmxeeGRlM=;
	h=To:Subject:From:Message-Id:Date; b=N44kfC394m3RbOsAjxutncaVLIZPAIqYc3wBMvcEkFtG8JkG2FzDByjh/p5vY0ZLg+vwZ3HLpr0w9RWZ0I6XgjjMvTxozWfGyjJN+n8zOALpdF1eTFZAOAKW9b4bZUzkS3kJsHujq6wTz7xDqMQOU5bzvh+nOiw/NNqsjsh8QpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKjyS1ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKjyS1ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB902C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745134793;
	bh=JE8gDEBFefc+KB5jMKlMfeoz4s9izjwczPZmxeeGRlM=;
	h=To:Subject:From:Date:From;
	b=RKjyS1ur2dk0FuGbgW2DzJdgqtPrWOYgSxhKLax3lq41PzQ7U+NNAyFNcAveUlWqC
	 LRq3Jdc4QwK59bL6QRzR9joCwBET7xxXSUra31gw1fqqig9m2PhF5PEGa0r0o8eTBk
	 7mJ6URZ9aufxBpHiGXXaqOF6/3UKuSUuzK80MjcTEPjf320lA6aCeL/Nl2xQJlLESj
	 p06HmY1naM9ZRmVbpxAjUuv543OeCr5sOApReB1ulUoFnigqmQmprF2bdmkZscjQbd
	 91aW07r4p89BEHaKIA+fdkrys+xLU3S6mKKYR2louPrb56sZj6t+rICCgD3s5e1bLa
	 97FKoLDgYsqjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B232C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513479358.29646.12316521595921125826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70aedde0de2d5b3d5de54ed0f4b08c98ef8e1f21318f66ce8360c06c9dffd06
Date: Sun, 20 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745134793
