Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1A318002E
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708953496; cv=none; b=EnLraNgYNfO60Z9ThbK4eTF49zLBDXRgIgdzwUSTBbsNLlxjc2kAJOe9wD7po+bURFRNdSUvp8BOLa0H9514tTwMY6oSnTvAnxWrUqFtx+gyT78ID/+y867+hDjk/3HmoWG5Il/EzrbH/h3BuDuAqyKrWQ5bNIEKn/yvO0e87Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708953496; c=relaxed/simple;
	bh=VC7bdrVMcNrDX2uMK9rrc+Nkjs4jV03iM4kfHstgfag=;
	h=To:Subject:From:Message-Id:Date; b=TImtiLrN5+8hGOr6qaeUyHp9RFX2IBteRGdIlI3ZaCf5UuRQ0i0yPWh7SaazxFEQ5YuTJeMXMVfHNmASMHM0pbw3porgTbsD8CCnQ95zrgmxApDsbBM3uxhU0OC7qYwtdBZg9KbpoORU2lQmJRqa8fv1vj/Kv+dwz4LJlCr5Ez8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cROHjBSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cROHjBSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D4DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708953496;
	bh=VC7bdrVMcNrDX2uMK9rrc+Nkjs4jV03iM4kfHstgfag=;
	h=To:Subject:From:Date:From;
	b=cROHjBSkPNe5XWBe6fz45+G4jydgPSDPbjmzPwHjwCqMjLbY6kGt6KkKazXBuHoZT
	 j3wFlhyfQQqQncLmt6jXBgQ4VmO0Nbug+5cSiAp+nF6+QtFP9Sqg60BHAhu7bDOGe4
	 ce45b1lwPXDJDCnbMvh92oocFvg7QRMwB3+SkoUUGUqZRGf0bMGhd9xrQDV8ZLqASH
	 wLVuNOOHVS0AkoLoBoSGJN/MttE4HZBgB72oif2L/Epqn1b8H23pcBjPfcLhUtLW1T
	 22W7+ru0TdLstlwlQcMIPtV9l4E1sEfAI/CxwQ2TuMFxRkGjMohUtmbI+u7Kcsl1xm
	 oik56fEESEfOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7D3C48BF6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170895349637.32327.13874508306780747506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a6b3d701eced7fd433853b1cd23f3e888440271a13657bc0773838464c22d2
Date: Mon, 26 Feb 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708953496
