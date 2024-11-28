Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CED2322B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732768554; cv=none; b=ENBX0SY9dLAbTWhu+q3sjRuelQexHw/gEUdriUx4qgvUL0rsdV8WSIXONtBjz9EOFnZhVGsQ5fW5aYIXQo0nRAoLQ0Z0c8P0SxFMdTqNgFa7VmLRg8NzuOnOjDa+cIaassfjRfZIrCh9x1p1lcQmA/IywVj72IgJUMYtClFUeYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732768554; c=relaxed/simple;
	bh=OeAfCkp2hdNUI8TCHH1NsnSvOlqjVEtMogjmmNYubtU=;
	h=To:Subject:From:Message-Id:Date; b=rmX72+vWiWiabqp0v5u2wck6+vsV/Q5JOBsvhZOr+vVr966OCPQHuJTjVVeN4ct02RZ4UVAAJxPFfUyKwWkKY3WK5hECjL3v5vwwwAN5gja2yQQx4Zn/a9r8sC8NloXV21sR0mHc62EAiOBYSmtB0t12a851r/7luehsJG5gb0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCBScFi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCBScFi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AA4C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732768553;
	bh=OeAfCkp2hdNUI8TCHH1NsnSvOlqjVEtMogjmmNYubtU=;
	h=To:Subject:From:Date:From;
	b=NCBScFi+bHIGWGNnOVoaRuw0fahkcTfUZydnuTN2tfi6u0f/twCsuNgBqQTnNz31l
	 19nT9jxytI2y3qDLTQfOfDiTWRVXpCXboV+FVHsjPU+F/tMNvh5ZH4gmueZMXsqnHV
	 GqmbxJ5xsybnI/aW4r15lR1Nv+ORqm+asRwXiW5RCrg/ihl0H5RKOVRY5j15Z/k8US
	 kSt+24DgfAsgPbok1d1Y6wQgfWby5x1RdNCxl3C2appRX6iKxWAwvzgh6NIhqJE6w8
	 R+N+ZrYPXlCfmr6/zlUYKleQOplhCihbtZtoU+QvCrU3/s2AcSzBxY2cWejCsXzf13
	 A55m7u+6fVPxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C04D6D25E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173276855358.6280.2673936768462931247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7118df873e05863543650020549fba3d0033aa62ea9cd7e5d53bbe1b410f35fa
Date: Thu, 28 Nov 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732768553
