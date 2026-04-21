Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DD53D75C5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776784054; cv=none; b=rI1xDqLmdPP4F4hVUZDcJ9dLYvP1vNNH1DRt+oPAIUokLnsEh37679Qc5JMKg2ExyG4yq4pZpum8ibX2Rm2KXQpPTc8sD1kkeD87wY2NqkAQZ/pjNV5szXGhyDAw/iF0oY/ZiT7vlA9cjj6NWn1iwm/hXCdz/TlG8ERYpLjyEzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776784054; c=relaxed/simple;
	bh=ZlAYfxM+Fem8vBJOiSc0H1XpOmAE9HcCLTgJhks7MJI=;
	h=To:Subject:From:Message-Id:Date; b=Poij36DFUYPAWXmTKoVbH/fxrRqDkUQ0+qxAB1JlC3sqP7n4WCjEnvfEQxtyil0qqSB/fUoAmR8Y9a+mkJAo3uItABGlLBZklyu5u1swF9msc6XMM8B3rnn3vak4CZ86xkAiKiFpuq2AZ7pg8G0ccUUaTVgfTJGCrnB4UpQoLoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRL83szp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRL83szp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D466FC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776784053;
	bh=ZlAYfxM+Fem8vBJOiSc0H1XpOmAE9HcCLTgJhks7MJI=;
	h=To:Subject:From:Date:From;
	b=iRL83szp7hB46C1Cvl+ivKZjJ/0fuOYWncIRWve1lpoQ5QkxIJyqq18Tdb6J7a+GV
	 NzHi0Rp7bcDX8DlQAbWN+plXjSlq80oSiLo8/qmXAcuWxKO3kMO2v41cAzJKBNpu99
	 +npriStHoqSdQ3a9uZGUrUv0d605aKW29pR0EmWNvP3Ynccj9RmYA61Gx6TAwe3DI1
	 TOg8GdZcbmx12ES4SgA/A2OonkzTPThgRJkFa5g7bwVjPnMsk8fUWkMTVsb1sJ3tB2
	 k/ftEBA2ipihoBWM6NJd/3dTR8Ec8pnDHHeOU/FckmCBrLCFW9vqX+9Ofl+SgeO1xX
	 guWDTRmXdODcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB31CF8FA91
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678405368.17760.14477149963168056468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b7427a7ccbe45dcc7486403b969a7a9497f343c9feda57c4da0890cfe7c29d
Date: Tue, 21 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776784053
