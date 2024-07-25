Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDA81991CF
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721907354; cv=none; b=Q/Ii43nP1U8d12LKFdpdoXhxD0Mh8vCpz1+hytsFD23gT48i6FBSkm8ya2fdl7B9GbsPzCzYilZCfdw2//IE06Cb/ER4uecXmRgH0s4gJ2/0tFSdnhIgnvyw/c1dQTM1Z8eUmkn3AqIjgSGnj5TqHfiw1gdg9F85ZbjbCOKWDLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721907354; c=relaxed/simple;
	bh=Z5jxf4OdaAxOfYzojoa8FOOMbCDftE/NrC2kuctlPNY=;
	h=To:Subject:From:Message-Id:Date; b=k9ofTZP9WhrNSj91m5FJ0pp0gn5GX57vxlTeNVNbbSsgFqjcTCbhGtCPytbaQETVageUjv4aVwqxOeBiCR0jC4iT4dnGd6XdxWUdsXcigqCJOCMle6x7DmHju5nv4ROOcvbkYneG9xitu5cPwKP0ObL6qlRlmKMhGL0ZzQcRK6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4qjkfW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4qjkfW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1749C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721907353;
	bh=Z5jxf4OdaAxOfYzojoa8FOOMbCDftE/NrC2kuctlPNY=;
	h=To:Subject:From:Date:From;
	b=I4qjkfW4Pmtd91K6w51NCQRg9oKnm8/5++WhWJMip1A/GTh5dX6fFeViurvgXbS69
	 SoH0gGYaQllF891GJk0EPikSHN4QfypYiQT9kXV/+4IjQS8+yNbRaTENeHvN95X82V
	 q6K7xGInk4dGyfWDtXfK42xy7RVmIELF5BeK0t8un/55wtmhF+Gp+hafz+YpjkZjbB
	 YRkeqPYgUYz8MKpJ9gVfQapLWLlrE4UcVSS1e+iAjGY0eTET9JFZQyyIChwqW8wjit
	 UPrCWIubpKDbR8a+yiMImvYuOrUXGDUa6n0lE6e1ftZFG1skpLAFQaHqiTIRYV+4dA
	 1ee9UchZ4Hx9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D80C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172190735358.10871.4291967390903519242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4336e31265a0a4e05da7db54462ce50b62d7561f2c05ce7123f9295aee9eef0
Date: Thu, 25 Jul 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721907353
