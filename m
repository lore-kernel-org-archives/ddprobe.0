Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9B841A84
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730042754; cv=none; b=P/eXY5uEJfJZwmG129WuSq3XHUtFFb5aaJlIPiV9Gc4il5BqJF15Suk9l1qLGMsWmFnMJXVZKSWzRu27kthrQsMyfsaiSg8YRQW8++iiYTOEs/iHGlCDw4SfVdF4v6VoceHl5Hz1C5lDULJOx68eJnw1YA5JoV/qLtsfjDlZdk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730042754; c=relaxed/simple;
	bh=J/uS1exI1PMO5vY4NLDYiHlhDWhT+OxB5muV/bW99zg=;
	h=To:Subject:From:Message-Id:Date; b=rtgsbsHZPEy/JBYYBoZa9C4HrFQ6csumYxDWQlAF3URRo1PwYkwIR6FAAxF4jU4eLXJ+NEbuC19ZY6eamujX6UfU00lnSUh76s9GqQZ23vO0En4Fs9iKoFWaA2ZiYcm0b/JOBCavcQDuDA+b/rs1R7wIS38cd+uKG0ivlnY1MwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1ymwiGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1ymwiGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2475C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730042753;
	bh=J/uS1exI1PMO5vY4NLDYiHlhDWhT+OxB5muV/bW99zg=;
	h=To:Subject:From:Date:From;
	b=R1ymwiGkI+8NvgnJHqc9lD9MDIT52Qqbj21jkwGvOdxivaMGMF4JSwJzElI3NZF6/
	 qXUmGqt40gDHvtae0tXWIE0yc4tKAUaC53BHzg55VdLko0DK4EMbHt4idk6M949yjG
	 DlcIIKv6iTGW7V78XODgS2vMA9WUaUodx0Q02VbNjQwOkxaf7R2GWmsMSWBk1gkLMY
	 mjjfdMAr09DiEqvUVlK0hPYtSe6hwNpQ+CBjPJ1ebnsyx5IEMcN1zZoQDeyb6OmqJZ
	 /35ZGvuYU408AdNxH4MB2UdoT8f/tlqIteWjNQW7nd4jMESqzR58j8N2Fn704dukGl
	 /ukKI8rE7rUbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDA0D13564
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173004275360.29312.918448780576946600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e12f3a50a6b297364e5f5b9636f05a63d8febbfd1be243af50218ec26a5da0
Date: Sun, 27 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730042753
