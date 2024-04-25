Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FABCF9CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714006883; cv=none; b=NY0fYNes+kwlHOLORtqODbCh2X8Gr4wIQ9VZYa4NzgFowUFqvKlCk20kNXgCWrgKUXgE9ry54DHpou2mjdtEOHVIi4AFnwV1hpZEKXB1R8UlAZ1Nv0pUuJtiR4a5/0RMIq1E540Cp3FLbdq88kyWe+2Jj6/iOQfxLKh7nrGaDvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714006883; c=relaxed/simple;
	bh=B5/T0HOEvlOCfawu12DZ6t8907OqywFpkmMExBe3MAM=;
	h=To:Subject:From:Message-Id:Date; b=fPYZTvpUCfXq39r+nDgxxEeZjTLn5RinDyqDeFfLspyhnnbb42hNYCXeDnppaapqJ1CJHa03/NjNM4SVrqyzj5IRB6hLDa/g5BMIhrw4SwGx4bJwWrhw4eqwVZ14YtBkj64mW1Zb3THVbNma0fDq57OYTdBqvQLithw2MS4b/hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKwdSpRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKwdSpRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F65C113CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714006882;
	bh=B5/T0HOEvlOCfawu12DZ6t8907OqywFpkmMExBe3MAM=;
	h=To:Subject:From:Date:From;
	b=cKwdSpRj0es+YzKbUJLKRNfwFc3JOxshWMdLmHlL+Z+8yM0uwFjFK88Gp+628iojt
	 FaiwEywWrLC6Z24t1brrVFpUvT+sobWgWNv0dmvkd58lng+M8ydjA/I3BpZ3Wztq3t
	 s2G4ZcbetUwI11//pZ/YgHx+0MD1ToMHjlKwpa3ejqEYa+bhJpnCfBalEpgMPngEF4
	 i19kBII6aopHvsvtTODr+jTiaiVUH56ioZUTVZa70aIA2w0TS4/cDJNh2rEder6Blg
	 kKcAxnhfLj20G48W69iwmMHKGBamNn5FXxhgBotQ0BcKp/ZHDt7r85RPAbEsLZHGFq
	 dyF33XKFt5A3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8D1C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400688277.22384.5474587236481869921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0484eb2939ad8b87818075bcdd2bf75416c58fc362183ffaf09cc80d0c9504
Date: Thu, 25 Apr 2024 01:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714006882
