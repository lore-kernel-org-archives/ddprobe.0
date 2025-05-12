Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2954017555
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747048194; cv=none; b=JXXpRgcyqmztZXgKMLfupbRhZGcZczMGgxF3oVG/m08AF72zLtMoVjQ6J5+iLXnBMBTbK0YugUgOgpMLlzbvWni+2sfGWF0W6RN9kWYEiJTgzNNT3jaDOB5Ny0iEH+4WCKaWvZ6d23lywB/YXP/uWkSCpHoM6o6m17YojJygdqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747048194; c=relaxed/simple;
	bh=ug7lTZ2/BW16gfQPqL3Ezq2/du+JieI36aKpuQPbET4=;
	h=To:Subject:From:Message-Id:Date; b=tBAje2NMTozMTPuFaHEHN9lQ1PQD/iTuZ5DB41OWjsnMkoBsYhRDaMpT8NQ5Y/8jbB5F+UQ2m0dsgtIZgogl5KipjMstAh6yNO3/kpF+KPMFGwkLGrZLPuCiFZLAVLb1VV9MwZJrKU2XmLvhIxS6CX/ba1OV0cp5wy63T0BIVLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVyQ1PGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVyQ1PGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D6EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747048193;
	bh=ug7lTZ2/BW16gfQPqL3Ezq2/du+JieI36aKpuQPbET4=;
	h=To:Subject:From:Date:From;
	b=WVyQ1PGXhYT2l+7CZsWPmM6X1YPPhAMD9oW0t/QUx97FUML988oTO3zI88OUQWENk
	 UObvrZToPKwtnf2alNQixHgOdh8XPcO1pnWzQMlvobJ2KVMrEK7Wj7km8b5tSO1ce0
	 J28UWzcxjgNvbuakYyM/JWFN5CLsHzoA7pfc2jiQ/wuZBXXOW67+1eJnl1wLr9lqKI
	 IjjjCr8tca3t11iZrXeYOtYF4ZFlZrdL3ScYbCVua70NsrRNbI2Y9YN2C5BWIrBDQ5
	 QfbqiuZGJ8qmiHbyeLRC80IFJdj+Hn4SIaGV2XPWplmEQrh9l/EV8dd8X8Tmaw0qV7
	 cRBfZ4vcLpN0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F9C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704819358.8332.12836759037849937621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1eb34bf7cc5cb08b5d4ebf15ab69cf1c8b2658d2b8722652aff66e0c0f0ab27
Date: Mon, 12 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747048193
