Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D9030CD92
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784942434; cv=none; b=dOWlitaVmeliVmQGLVHo4eoBDjHE77B68SoHRSk05FPWRYT7OO63ZP52wTEsGAcoLLZQcL4sNroNfn80SNXBaxU8Lmm97nB+S8otP60WJPB+B3kXQ/sUg+zKvDI1bjeVYpy3VEPYjPsVb8Ax1CiBhFO1AikuFb+BJi0vBs0mJGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784942434; c=relaxed/simple;
	bh=uz9nDG1j9b1rAPdES5WgSUPaoVl3jqpMuwlgNeTREQw=;
	h=To:Subject:From:Message-Id:Date; b=VfzkJJ0034az0/pHZMPVGktlqSSow2jfcuOclW3PckF2/Aj/C0zLoZWn+bIezHMRel5aydQyGJ4bGjDid/dT8fuJSdl9olnOJpBoX+NR7QGwF60pufd9UMSKNo1/dxzU9BPSwC9SSepTnQAvnnBSKSf0Jv93QhwYnrqp8M3giiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdGjM/+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdGjM/+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44F2C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784942433;
	bh=uz9nDG1j9b1rAPdES5WgSUPaoVl3jqpMuwlgNeTREQw=;
	h=To:Subject:From:Date:From;
	b=ZdGjM/+IZ3Wu1YtWR9+flrJlP6tMg5sdpMzSKyCNg2/eVeDlK4kd9LOUSqr7813Lw
	 twrjcTgFAG5olU4MePcT/qbOMk1vDjdpXO6MMZimtUUiZLFF/Q2e2oM3iOANJMB9xs
	 0z7dbn2oX3tzPas5co+FyEufwJhIF5Hs+pvlt2cLhive4EdQaFzWkyBEtjDESuHqWh
	 5OsQD0GeJSoYobhQa6JBoEzooz+eA5S8UYQMWzbtjU4SSQMPs6c2z9Nt8JMWsfQRY5
	 h36bee6Mo09nYdoO2ZStwHmYtw5/E9FnE2hjTBfOBWd92hEGv/1Cvn3ESpSdCUIYu1
	 juDv5B9qrpOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0C5C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494243368.32067.15539309498025432388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55bb42b35afac4ade92414bea260fcd3fdefbe7947474b467347531cff773c20
Date: Sat, 25 Jul 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784942433
