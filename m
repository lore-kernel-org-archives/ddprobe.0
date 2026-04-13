Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C67635DA56
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776109654; cv=none; b=BHqku3DaT7pKQdGx05mV92bUyzb6QhsAOzdojoCAL10Jwdq+xMt9ivEE9TRcOq4IJvcQEUo9suATlCqbF1Ayuf+e9WWHId9S58wJ9Vl0aV1xCanxD/Qaq2ZoQDygRC5UsuLTnGEe+bBxPoypqQp4MrYd6eb8FHBx+KEQ+DqOo2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776109654; c=relaxed/simple;
	bh=PfTQn9QZ/dsZ6ykhKwRGZ13f29D2BNMfyyEBLGXNtlo=;
	h=To:Subject:From:Message-Id:Date; b=FXp+qIk1YJLva6OGzR+dW0+4cBVtcqCATQqSbzGnvDlRhGHn6Iwp07sdvBiFYDU8rPngMNdIvkfLFtq8DjD6LFmD73w0Av12tGLMxPe01mS9Ns47qVtxyOGmdo0bZUoovkAfi33u/QQjIgfWif1I5CtCvhMjNWngmQUgjXjXujg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnhV7/iQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnhV7/iQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C1BC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776109653;
	bh=PfTQn9QZ/dsZ6ykhKwRGZ13f29D2BNMfyyEBLGXNtlo=;
	h=To:Subject:From:Date:From;
	b=LnhV7/iQg7H9zVuZ7kwb5vBd68uLwxrIRwYyrQjII1co1VJ6AtPH29gFIiH6fUtij
	 OAjwPqrP/q50GTrFgYZ1fFJQf+nh7i4E77z0NQbIlmXscifIQWSatsdbok/XcKMVkn
	 3Vd5EuvLA1wNhfI6HUribTZtiz0B89jD9B82aZsdeJA7AUm9uCxjoxN650SBkQ+0gB
	 CelV2D01MATgDZouqY6Z85AVmI1u+LDY5RdwS9DDGomZ7vT2Eo22UnqicxwgaBy+i+
	 N/4cHh1okoD37bzPQGkhGEfMFlxOw9z+u+jdtYlrsb+/cr5WlZitLIpUovXkqNCQQM
	 wYDLEiUFi2FIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD55F531CB
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610965368.21225.791682865314747693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fcbc4e3c1d651869aaa7e2e6215823cd5a370f95653c6579189fe2af10b5ed
Date: Mon, 13 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776109653
