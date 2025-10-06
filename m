Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5108F49
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759787394; cv=none; b=jF4MBDLHsIlw4oHf1Mkx0JGKsxCjqYeHaxELy2QnxCXhlOWjk1F8DmCU4YerxIbavx1TA0EQCNYFhlQzl1TF1N1QMsXoJNx1D2Y/FrtaFDeEWOS6RrkFdFFAQAdMdkUfwVqlhRxWKCbOZEJk7vLLAuBwF19byT3Rz0EVM/jKq5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759787394; c=relaxed/simple;
	bh=HP6yx/5+uvIHLua3PvAUFFXfyYl7itD66UZxYXgaqSc=;
	h=To:Subject:From:Message-Id:Date; b=AH7jBQw/HTL/KJ25O0mhnXVopxL/g+U9d5Wv4LdCpXZfxNoieXAW1V/VoX/yxGq4xA5LVrPtwTPiw2PDUU6kbkH2P5SIJTpkdJwWvB4glFHYGAgpThZEdoOhLNRWJunma+J0GjzngjqKBuSbDhDFjbhUcxhGCZxPcaBlRD4+Mdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNcBe3a0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNcBe3a0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02A7C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759787393;
	bh=HP6yx/5+uvIHLua3PvAUFFXfyYl7itD66UZxYXgaqSc=;
	h=To:Subject:From:Date:From;
	b=nNcBe3a0zqfX2M2qIHNrgrWN1ghoiDgLL80KBiL+L1KEBwdlJMc7EWDRvbVJp7Ch6
	 TLIvrOwqPKIznGb/pS6LNJRwekafETg3OleB/okOYdRXcQhv307nHQfgJFRggOX+Ji
	 RfRJm5sGnF/FhH2H+bOjCd+s579yub6EIq+lw4YuiNny1hEr1uOU3d2Zh+ocDbr+wU
	 VtgInREP4qVKwH4IDNv+bOeJZcFyr8BFE70s9MHzyjiIWp9yqPKXeVmD6eRmhYPDfQ
	 wX2w3oqxTpRY65h9xKk6CfdGtx9OpJeBhyA1xi0I+Imu0duMs6OkCw+0RphJkKR2ZW
	 FUJoHack1cC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A7CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978739358.4308.2909511310060459679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8974b994b4bb813db0f32808fa79b9b65f1b37487da58363fd0726a3608a7ce
Date: Mon, 06 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759787393
