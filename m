Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC1E2ECEBB
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760369393; cv=none; b=gYPJRKu99IZHWY8r20onoNuW3DV+IhFfp5cZ9jZAQ5mpmYX3AtgzDjCWPMou3Dr9b+xsi6/mIU2ldIVlC6azrzJeuWU0sMTD8DJWm2W5IncfiTeMQQYKFahQMGLGf7Z1eYAHHX45sbZqYj9W0xyZQR/ykbBLC0FqmugUFl3TBoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760369393; c=relaxed/simple;
	bh=MPs7g3yTPW2o0uXKbYYAKumdMMRrBNnGbpymIKlGh6I=;
	h=To:Subject:From:Message-Id:Date; b=f7kqnyHrvVmU5KOxE2XAE/e7xY4gH7EoutQCVapdlQN/ubn4foQCEiGGW5ZbQ2YzyZSOVDQpvFVMu+tcUvwf5Do1pDMgGJkmD60NePJLD6y8cJV5BNQ17H6S0Rs2zrEU3gRgQ46cqKY2QqaBystKCwUyB+v8Ax1Vu/h3NisdsCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHlUjLIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHlUjLIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBA6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760369393;
	bh=MPs7g3yTPW2o0uXKbYYAKumdMMRrBNnGbpymIKlGh6I=;
	h=To:Subject:From:Date:From;
	b=QHlUjLIYOIUvhE4/h1yIe8KbGkatU7Vh0H/Gw1FyRNyjxiKqW/n6Uedqx7ClRleoG
	 vA+71K2l9S9kF7QtRSicE9F4y6UJSoGrfb8nTZq7xjvAATV0pPc+65IewABNJ/A2VE
	 0zd1Hd2sONTuqCjkOp1aAbwi+NvM6oXioJV/5OVM8rOuKE94tp1xGqlwyygvH152UZ
	 ZmbElPrihEsrOM9z45GSeyfIqKh3UANsYg77mKdvDr65+759loZlA3Y0pfGp8Y78q2
	 uloByV2zirrxt8AbmbTpAqjIr7DqnlhnjSAUj2RXmQGUXAb3OXWf6MKevwKfOZIAOK
	 vjB5zzY9QYb4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DB1CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036939358.21599.4265797651594992821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d45d5175df707cd9cf40c536bdbcccd791ba9a4aa7695db7143ba46817f60581
Date: Mon, 13 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760369393
