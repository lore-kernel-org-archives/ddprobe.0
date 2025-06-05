Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEAC1E89C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749109194; cv=none; b=Gw6vyiz6nNh5bsJpFyxOABfZoOl4Nc8UJ1gx1kZKYixswvNOp9LN3tL12btS+HIWt2nMt9dcYMcSPZamm+Gc6lpLEuGP+fOjVruA8/R4XDgsXmZzCrtc7B4udobFh8hnSY3UJyum5DF7pznkEYEB/b4S48WrS1PSUNHoV675atI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749109194; c=relaxed/simple;
	bh=SxSStqNli74U87rWIJCOC1F8gHVBRHwf4xe27NRaZvo=;
	h=To:Subject:From:Message-Id:Date; b=ufVppC1n3r/jXyCE3imBX9R1RvyL2mEJFjAnSW1FPDwz5iRYD4W8y2LoDXtVGqYyNkPH/D79XtXKcSwysG/i+fD44e310njsMB549DSu1vAWqH6zK1f2PZ2WYJAg1uyWopHmFwx0bipAlmijxWeC68DqMYpblhur8wXExtsMVAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsNHr8gl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsNHr8gl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A897AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749109193;
	bh=SxSStqNli74U87rWIJCOC1F8gHVBRHwf4xe27NRaZvo=;
	h=To:Subject:From:Date:From;
	b=JsNHr8glaoneuHM2vPo00ZG8SvCoFj28ladhRBIV6NhZ2Ms+52fEcNdeRE46zkDzZ
	 NdJ5R0MMryWgh7R4DXGSWtbF9DwrBzbuw5e+xCPBSUzBB6XK7IVxbIyexryxyHMcZ+
	 U/7srla35yGFz5O8brVuTZwsYd3f1c1EBcNMvMERvFbeUjDYirYBPtYACfykW9lNSk
	 MhRXQxnqoEkSo78cHgl+11jF56aj956y3MG7UBgYLL85HHr8PKZdSaak/c9c3YZ+r9
	 xq10pkqde+IvxBUfsh8F4+CzxO9AojGTxE+T5P718hhp2qhKZ3pD6KA8yqshxU0Nb5
	 n1/nxc9gBXkmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90893C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910919358.8156.12710372526467604235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9d36116b452ca22d9c8a1f3ed082d415a784f4ce5f3eaef2edc4057b696005
Date: Thu, 05 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749109193
