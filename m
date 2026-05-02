Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234E318C2C
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777687654; cv=none; b=TLCFWZQ/Il3DfsfvE8S4Vi6+VaoI2hZIZiSdPhZKJeC/NPyjhjCq/sMbA3jS1V6utCVlpm28zShZD79TuwgwxgRDUlQsbFGVXN+z4jB4rD4flHamV81KzSeB58aWwOwwJlKnGM5l6PTYiFmnLH7BydJKLeM8AlZy8SNbMcxjFQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777687654; c=relaxed/simple;
	bh=iTgF1XnBn1u4FXnPSqvWDm+j7XA3TYtOgvAZPzyeK/k=;
	h=To:Subject:From:Message-Id:Date; b=XfaUawImQxZuh4OGqgwidFiaY2165Nr4wiUhvj+PbZho4S99sJWWZq7hFhX556kJ1ToyrTJGKnWDPr40f3gr4opk0sGHRJOwAfTDxnhbdjOcBiKLarlDKY/rvpn0raCYf4w8w9yHcit/wihlyw/dMEuEb7bvrBS2MBGTe6K1mKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4FLaBps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4FLaBps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1F7C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777687653;
	bh=iTgF1XnBn1u4FXnPSqvWDm+j7XA3TYtOgvAZPzyeK/k=;
	h=To:Subject:From:Date:From;
	b=h4FLaBpsYz3DnZCwJ6S+bKlGSem2/CqAgvMLy05v0NrR0Jnrx0Q/9pGiaW8a6AFL/
	 OkyeS2NyA6kodQr0z5apXMUe7g7wZ/RlXu0VFMtOVcIrq+1GHxUMwaxnJS73NUdQbX
	 lo+TmPvBlJBwAcxzNBtkj4ykhqivAOygkzvVzgfC5yrISp+uknAMIYLngDZHog1ShB
	 FDgtXuo+imkMsSOrjcmzpZRX6FCBplFo6M8tSe2ACKFEDiVbhVZsAKqiRNzu6RPql1
	 +XRswmvP/5N0VL7urSznTjABqeuLaqLJoRGKtpVlx0Dxr6qMud0ElriMndjbPum4bz
	 SCAWcdycjRnUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC42DCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768765368.9559.11108920219229998138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c7c3a9f6006dcce3dc1b2e481b970bed1399eecb2400e6ef709252c7f61b60
Date: Sat, 02 May 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777687653
