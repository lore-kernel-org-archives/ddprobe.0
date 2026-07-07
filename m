Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362223F99FE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783427314; cv=none; b=H4R5Gol4uSTkTdRZRIYqm7CllYyb1iJJ0RHGSvFVaRoGc6T4aWrh0eHW8hQNNi9ENZP4+24abDWMbhUqkr828lbGTo0uCDNKVMWkUn9pJdP5eUmEz1BFH1pPwr70js4VXKtcRpOxALPPxo6nezoyDlsuVMZAzyDabFagDTveHPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783427314; c=relaxed/simple;
	bh=99yKSOumJmSEeIvo4EA+MwxakbqM8xgGPmE4ARIBnaY=;
	h=To:Subject:From:Message-Id:Date; b=LdyzFHoPeCaX/v8TM3ZQl2MGgS129G0c+fh3hNunowF1HANkp9bcE2pPQE7yJtNJNsThcZh58Afo1uP0+eVzu/Jx9y9Dfei6gp/q3+mjLGZroiWGrCnVHVg+3sVpnfpf2fEcNPAKy7XQYsyqcms6qse6AOTyW549adaoN8eaeTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxXVdddU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxXVdddU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81CEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783427313;
	bh=99yKSOumJmSEeIvo4EA+MwxakbqM8xgGPmE4ARIBnaY=;
	h=To:Subject:From:Date:From;
	b=sxXVdddUvYfwv1vJISYAC3i0ZvN8Gv7C5thU2MmvdWs7aik0gruYOMjRXn0hcPz3D
	 MvvHgn4KAD1QRjohjuZeuVwhUhcHh2avGl6mmkAFEGaixC+CpG7n5Q6QjZ2K7Fa831
	 DEaeWW96QrBLdKuDDlsSaMW3SSaoZJ+EaiVumX6tFiJY0Cn3UqfVOe5Hs0Kd7RzlUx
	 nKFv4y7eRiXf5o0I7gSnxesM/WaFdBj4/NwrD+MPmF7Va0btBvz5G5zxKiUTgalnAp
	 hSfrDwe39gLlF0w34Yq/A20aCgJL7aW2K/Kd81xAlP2yvp74cCnSwzkHE7OtCW8IL5
	 56RHHePgYcHRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C1FC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342731370.25561.13180120218241362702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb95a4841adfff41d564ca3b0557605fe3ca89f7ed1088446a840e8a9743ab4
Date: Tue, 07 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783427313
